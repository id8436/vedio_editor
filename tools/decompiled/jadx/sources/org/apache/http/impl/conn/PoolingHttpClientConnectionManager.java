package org.apache.http.impl.conn;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.pool.ConnFactory;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.pool.PoolStats;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
public class PoolingHttpClientConnectionManager implements Closeable, HttpClientConnectionManager, ConnPoolControl<HttpRoute> {
    private static final String TAG = "HttpClient";
    private final ConfigData configData;
    private final HttpClientConnectionOperator connectionOperator;
    private final CPool pool;

    private static Registry<ConnectionSocketFactory> getDefaultRegistry() {
        return RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
    }

    public PoolingHttpClientConnectionManager() {
        this(getDefaultRegistry());
    }

    public PoolingHttpClientConnectionManager(long j, TimeUnit timeUnit) {
        this(getDefaultRegistry(), null, null, null, j, timeUnit);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry) {
        this(registry, null, null);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, DnsResolver dnsResolver) {
        this(registry, null, dnsResolver);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(registry, httpConnectionFactory, null);
    }

    public PoolingHttpClientConnectionManager(HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(getDefaultRegistry(), httpConnectionFactory, null);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, DnsResolver dnsResolver) {
        this(registry, httpConnectionFactory, null, dnsResolver, -1L, TimeUnit.MILLISECONDS);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, SchemePortResolver schemePortResolver, DnsResolver dnsResolver, long j, TimeUnit timeUnit) {
        this.configData = new ConfigData();
        this.pool = new CPool(new InternalConnectionFactory(this.configData, httpConnectionFactory), 2, 20, j, timeUnit);
        this.connectionOperator = new HttpClientConnectionOperator(registry, schemePortResolver, dnsResolver);
    }

    PoolingHttpClientConnectionManager(CPool cPool, Lookup<ConnectionSocketFactory> lookup, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        this.configData = new ConfigData();
        this.pool = cPool;
        this.connectionOperator = new HttpClientConnectionOperator(lookup, schemePortResolver, dnsResolver);
    }

    protected void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown();
    }

    private String format(HttpRoute httpRoute, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("[route: ").append(httpRoute).append("]");
        if (obj != null) {
            sb.append("[state: ").append(obj).append("]");
        }
        return sb.toString();
    }

    private String formatStats(HttpRoute httpRoute) {
        StringBuilder sb = new StringBuilder();
        PoolStats totalStats = this.pool.getTotalStats();
        PoolStats stats = this.pool.getStats(httpRoute);
        sb.append("[total kept alive: ").append(totalStats.getAvailable()).append("; ");
        sb.append("route allocated: ").append(stats.getLeased() + stats.getAvailable());
        sb.append(" of ").append(stats.getMax()).append("; ");
        sb.append("total allocated: ").append(totalStats.getLeased() + totalStats.getAvailable());
        sb.append(" of ").append(totalStats.getMax()).append("]");
        return sb.toString();
    }

    private String format(CPoolEntry cPoolEntry) {
        StringBuilder sb = new StringBuilder();
        sb.append("[id: ").append(cPoolEntry.getId()).append("]");
        sb.append("[route: ").append(cPoolEntry.getRoute()).append("]");
        Object state = cPoolEntry.getState();
        if (state != null) {
            sb.append("[state: ").append(state).append("]");
        }
        return sb.toString();
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public ConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        Args.notNull(httpRoute, "HTTP route");
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Connection request: " + format(httpRoute, obj) + formatStats(httpRoute));
        }
        final Future<CPoolEntry> futureLease = this.pool.lease(httpRoute, obj, null);
        return new ConnectionRequest() { // from class: org.apache.http.impl.conn.PoolingHttpClientConnectionManager.1
            @Override // org.apache.http.concurrent.Cancellable
            public boolean cancel() {
                return futureLease.cancel(true);
            }

            @Override // org.apache.http.conn.ConnectionRequest
            public HttpClientConnection get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, ConnectionPoolTimeoutException {
                return PoolingHttpClientConnectionManager.this.leaseConnection(futureLease, j, timeUnit);
            }
        };
    }

    protected HttpClientConnection leaseConnection(Future<CPoolEntry> future, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, ConnectionPoolTimeoutException {
        try {
            CPoolEntry cPoolEntry = future.get(j, timeUnit);
            if (cPoolEntry == null || future.isCancelled()) {
                throw new InterruptedException();
            }
            Asserts.check(cPoolEntry.getConnection() != null, "Pool entry with no connection");
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Connection leased: " + format(cPoolEntry) + formatStats(cPoolEntry.getRoute()));
            }
            return CPoolProxy.newProxy(cPoolEntry);
        } catch (TimeoutException e2) {
            throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void releaseConnection(HttpClientConnection httpClientConnection, Object obj, long j, TimeUnit timeUnit) {
        String str;
        Args.notNull(httpClientConnection, "Managed connection");
        synchronized (httpClientConnection) {
            CPoolEntry cPoolEntryDetach = CPoolProxy.detach(httpClientConnection);
            if (cPoolEntryDetach != null) {
                ManagedHttpClientConnection connection = cPoolEntryDetach.getConnection();
                try {
                    if (connection.isOpen()) {
                        cPoolEntryDetach.setState(obj);
                        if (timeUnit == null) {
                            timeUnit = TimeUnit.MILLISECONDS;
                        }
                        cPoolEntryDetach.updateExpiry(j, timeUnit);
                        if (Log.isLoggable(TAG, 3)) {
                            if (j > 0) {
                                str = "for " + (j / 1000.0d) + " seconds";
                            } else {
                                str = "indefinitely";
                            }
                            Log.d(TAG, "Connection " + format(cPoolEntryDetach) + " can be kept alive " + str);
                        }
                    }
                    this.pool.release(cPoolEntryDetach, connection.isOpen() && cPoolEntryDetach.isRouteComplete());
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Connection released: " + format(cPoolEntryDetach) + formatStats(cPoolEntryDetach.getRoute()));
                    }
                } catch (Throwable th) {
                    this.pool.release(cPoolEntryDetach, connection.isOpen() && cPoolEntryDetach.isRouteComplete());
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Connection released: " + format(cPoolEntryDetach) + formatStats(cPoolEntryDetach.getRoute()));
                    }
                    throw th;
                }
            }
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void connect(HttpClientConnection httpClientConnection, HttpRoute httpRoute, int i, HttpContext httpContext) throws IOException {
        ManagedHttpClientConnection connection;
        HttpHost targetHost;
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            connection = CPoolProxy.getPoolEntry(httpClientConnection).getConnection();
        }
        if (httpRoute.getProxyHost() != null) {
            targetHost = httpRoute.getProxyHost();
        } else {
            targetHost = httpRoute.getTargetHost();
        }
        InetSocketAddress inetSocketAddress = httpRoute.getLocalAddress() != null ? new InetSocketAddress(httpRoute.getLocalAddress(), 0) : null;
        SocketConfig socketConfig = this.configData.getSocketConfig(targetHost);
        if (socketConfig == null) {
            socketConfig = this.configData.getDefaultSocketConfig();
        }
        if (socketConfig == null) {
            socketConfig = SocketConfig.DEFAULT;
        }
        this.connectionOperator.connect(connection, targetHost, inetSocketAddress, i, socketConfig, httpContext);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void upgrade(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        ManagedHttpClientConnection connection;
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            connection = CPoolProxy.getPoolEntry(httpClientConnection).getConnection();
        }
        this.connectionOperator.upgrade(connection, httpRoute.getTargetHost(), httpContext);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void routeComplete(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            CPoolProxy.getPoolEntry(httpClientConnection).markRouteComplete();
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void shutdown() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Connection manager is shutting down");
        }
        try {
            this.pool.shutdown();
        } catch (IOException e2) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "I/O exception shutting down connection manager", e2);
            }
        }
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Connection manager shut down");
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Closing connections idle longer than " + j + " " + timeUnit);
        }
        this.pool.closeIdle(j, timeUnit);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void closeExpiredConnections() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Closing expired connections");
        }
        this.pool.closeExpired();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        return this.pool.getMaxTotal();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i) {
        this.pool.setMaxTotal(i);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        return this.pool.getDefaultMaxPerRoute();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i) {
        this.pool.setDefaultMaxPerRoute(i);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(HttpRoute httpRoute) {
        return this.pool.getMaxPerRoute(httpRoute);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(HttpRoute httpRoute, int i) {
        this.pool.setMaxPerRoute(httpRoute, i);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        return this.pool.getTotalStats();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(HttpRoute httpRoute) {
        return this.pool.getStats(httpRoute);
    }

    public SocketConfig getDefaultSocketConfig() {
        return this.configData.getDefaultSocketConfig();
    }

    public void setDefaultSocketConfig(SocketConfig socketConfig) {
        this.configData.setDefaultSocketConfig(socketConfig);
    }

    public ConnectionConfig getDefaultConnectionConfig() {
        return this.configData.getDefaultConnectionConfig();
    }

    public void setDefaultConnectionConfig(ConnectionConfig connectionConfig) {
        this.configData.setDefaultConnectionConfig(connectionConfig);
    }

    public SocketConfig getSocketConfig(HttpHost httpHost) {
        return this.configData.getSocketConfig(httpHost);
    }

    public void setSocketConfig(HttpHost httpHost, SocketConfig socketConfig) {
        this.configData.setSocketConfig(httpHost, socketConfig);
    }

    public ConnectionConfig getConnectionConfig(HttpHost httpHost) {
        return this.configData.getConnectionConfig(httpHost);
    }

    public void setConnectionConfig(HttpHost httpHost, ConnectionConfig connectionConfig) {
        this.configData.setConnectionConfig(httpHost, connectionConfig);
    }

    class ConfigData {
        private volatile ConnectionConfig defaultConnectionConfig;
        private volatile SocketConfig defaultSocketConfig;
        private final Map<HttpHost, SocketConfig> socketConfigMap = new ConcurrentHashMap();
        private final Map<HttpHost, ConnectionConfig> connectionConfigMap = new ConcurrentHashMap();

        ConfigData() {
        }

        public SocketConfig getDefaultSocketConfig() {
            return this.defaultSocketConfig;
        }

        public void setDefaultSocketConfig(SocketConfig socketConfig) {
            this.defaultSocketConfig = socketConfig;
        }

        public ConnectionConfig getDefaultConnectionConfig() {
            return this.defaultConnectionConfig;
        }

        public void setDefaultConnectionConfig(ConnectionConfig connectionConfig) {
            this.defaultConnectionConfig = connectionConfig;
        }

        public SocketConfig getSocketConfig(HttpHost httpHost) {
            return this.socketConfigMap.get(httpHost);
        }

        public void setSocketConfig(HttpHost httpHost, SocketConfig socketConfig) {
            this.socketConfigMap.put(httpHost, socketConfig);
        }

        public ConnectionConfig getConnectionConfig(HttpHost httpHost) {
            return this.connectionConfigMap.get(httpHost);
        }

        public void setConnectionConfig(HttpHost httpHost, ConnectionConfig connectionConfig) {
            this.connectionConfigMap.put(httpHost, connectionConfig);
        }
    }

    class InternalConnectionFactory implements ConnFactory<HttpRoute, ManagedHttpClientConnection> {
        private final ConfigData configData;
        private final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory;

        InternalConnectionFactory(ConfigData configData, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
            this.configData = configData == null ? new ConfigData() : configData;
            this.connFactory = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        }

        @Override // org.apache.http.pool.ConnFactory
        public ManagedHttpClientConnection create(HttpRoute httpRoute) throws IOException {
            ConnectionConfig defaultConnectionConfig = null;
            if (httpRoute.getProxyHost() != null) {
                defaultConnectionConfig = this.configData.getConnectionConfig(httpRoute.getProxyHost());
            }
            if (defaultConnectionConfig == null) {
                defaultConnectionConfig = this.configData.getConnectionConfig(httpRoute.getTargetHost());
            }
            if (defaultConnectionConfig == null) {
                defaultConnectionConfig = this.configData.getDefaultConnectionConfig();
            }
            if (defaultConnectionConfig == null) {
                defaultConnectionConfig = ConnectionConfig.DEFAULT;
            }
            return (ManagedHttpClientConnection) this.connFactory.create(httpRoute, defaultConnectionConfig);
        }
    }
}
