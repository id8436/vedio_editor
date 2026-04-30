package org.mortbay.jetty.security;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.mortbay.io.EndPoint;
import org.mortbay.io.bio.SocketEndPoint;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;

/* JADX INFO: loaded from: classes3.dex */
public class SslSocketConnector extends SocketConnector {
    static final String CACHED_INFO_ATTR;
    public static final String DEFAULT_KEYSTORE;
    public static final String KEYPASSWORD_PROPERTY = "jetty.ssl.keypassword";
    public static final String PASSWORD_PROPERTY = "jetty.ssl.password";
    static Class class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo;
    private boolean _allowRenegotiate;
    private int _handshakeTimeout;
    private transient Password _keyPassword;
    private transient Password _password;
    private String _provider;
    private String _secureRandomAlgorithm;
    private String _sslKeyManagerFactoryAlgorithm;
    private String _sslTrustManagerFactoryAlgorithm;
    private transient Password _trustPassword;
    private String _truststore;
    private String _truststoreType;
    private boolean _wantClientAuth;
    private String[] _excludeCipherSuites = null;
    private String _keystore = DEFAULT_KEYSTORE;
    private String _keystoreType = "JKS";
    private boolean _needClientAuth = false;
    private String _protocol = SSLConnectionSocketFactory.TLS;

    static {
        Class clsClass$;
        if (class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo == null) {
            clsClass$ = class$("org.mortbay.jetty.security.SslSocketConnector$CachedInfo");
            class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo = clsClass$;
        } else {
            clsClass$ = class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo;
        }
        CACHED_INFO_ATTR = clsClass$.getName();
        DEFAULT_KEYSTORE = new StringBuffer().append(System.getProperty("user.home")).append(File.separator).append(".keystore").toString();
    }

    static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    private static X509Certificate[] getCertChain(SSLSession sSLSession) {
        try {
            javax.security.cert.X509Certificate[] peerCertificateChain = sSLSession.getPeerCertificateChain();
            if (peerCertificateChain == null || peerCertificateChain.length == 0) {
                return null;
            }
            int length = peerCertificateChain.length;
            X509Certificate[] x509CertificateArr = new X509Certificate[length];
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            for (int i = 0; i < length; i++) {
                x509CertificateArr[i] = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(peerCertificateChain[i].getEncoded()));
            }
            return x509CertificateArr;
        } catch (SSLPeerUnverifiedException e2) {
            return null;
        } catch (Exception e3) {
            Log.warn(Log.EXCEPTION, (Throwable) e3);
            return null;
        }
    }

    public SslSocketConnector() {
        this._sslKeyManagerFactoryAlgorithm = Security.getProperty("ssl.KeyManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.KeyManagerFactory.algorithm");
        this._sslTrustManagerFactoryAlgorithm = Security.getProperty("ssl.TrustManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.TrustManagerFactory.algorithm");
        this._truststoreType = "JKS";
        this._wantClientAuth = false;
        this._handshakeTimeout = 0;
        this._allowRenegotiate = false;
    }

    public boolean isAllowRenegotiate() {
        return this._allowRenegotiate;
    }

    public void setAllowRenegotiate(boolean z) {
        this._allowRenegotiate = z;
    }

    @Override // org.mortbay.jetty.bio.SocketConnector, org.mortbay.jetty.AbstractConnector
    public void accept(int i) throws InterruptedException, IOException {
        try {
            Socket socketAccept = this._serverSocket.accept();
            configure(socketAccept);
            new SslConnection(this, socketAccept).dispatch();
        } catch (SSLException e2) {
            Log.warn(e2);
            try {
                stop();
            } catch (Exception e3) {
                Log.warn(e3);
                throw new IllegalStateException(e3.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mortbay.jetty.AbstractConnector
    public void configure(Socket socket) throws IOException {
        super.configure(socket);
    }

    protected SSLServerSocketFactory createFactory() throws Exception {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        if (this._truststore == null) {
            this._truststore = this._keystore;
            this._truststoreType = this._keystoreType;
        }
        try {
            InputStream inputStream3 = this._keystore != null ? Resource.newResource(this._keystore).getInputStream() : null;
            try {
                KeyStore keyStore = KeyStore.getInstance(this._keystoreType);
                keyStore.load(inputStream3, this._password == null ? null : this._password.toString().toCharArray());
                if (inputStream3 != null) {
                    inputStream3.close();
                }
                KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(this._sslKeyManagerFactoryAlgorithm);
                keyManagerFactory.init(keyStore, this._keyPassword == null ? null : this._keyPassword.toString().toCharArray());
                KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
                try {
                    InputStream inputStream4 = this._truststore != null ? Resource.newResource(this._truststore).getInputStream() : null;
                    try {
                        KeyStore keyStore2 = KeyStore.getInstance(this._truststoreType);
                        keyStore2.load(inputStream4, this._trustPassword == null ? null : this._trustPassword.toString().toCharArray());
                        if (inputStream4 != null) {
                            inputStream4.close();
                        }
                        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(this._sslTrustManagerFactoryAlgorithm);
                        trustManagerFactory.init(keyStore2);
                        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                        SecureRandom secureRandom = this._secureRandomAlgorithm != null ? SecureRandom.getInstance(this._secureRandomAlgorithm) : null;
                        SSLContext sSLContext = this._provider == null ? SSLContext.getInstance(this._protocol) : SSLContext.getInstance(this._protocol, this._provider);
                        sSLContext.init(keyManagers, trustManagers, secureRandom);
                        return sSLContext.getServerSocketFactory();
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream4;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream3;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // org.mortbay.jetty.bio.SocketConnector, org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public void customize(EndPoint endPoint, Request request) throws IOException {
        Integer num;
        X509Certificate[] certChain;
        super.customize(endPoint, request);
        request.setScheme("https");
        try {
            SSLSession session = ((SSLSocket) ((SocketEndPoint) endPoint).getTransport()).getSession();
            String cipherSuite = session.getCipherSuite();
            CachedInfo cachedInfo = (CachedInfo) session.getValue(CACHED_INFO_ATTR);
            if (cachedInfo != null) {
                num = cachedInfo.getKeySize();
                certChain = cachedInfo.getCerts();
            } else {
                num = new Integer(ServletSSL.deduceKeyLength(cipherSuite));
                certChain = getCertChain(session);
                session.putValue(CACHED_INFO_ATTR, new CachedInfo(this, num, certChain));
            }
            if (certChain != null) {
                request.setAttribute("javax.servlet.request.X509Certificate", certChain);
            } else if (this._needClientAuth) {
                throw new IllegalStateException("no client auth");
            }
            request.setAttribute("javax.servlet.request.cipher_suite", cipherSuite);
            request.setAttribute("javax.servlet.request.key_size", num);
        } catch (Exception e2) {
            Log.warn(Log.EXCEPTION, (Throwable) e2);
        }
    }

    public String[] getExcludeCipherSuites() {
        return this._excludeCipherSuites;
    }

    public String getKeystore() {
        return this._keystore;
    }

    public String getKeystoreType() {
        return this._keystoreType;
    }

    public boolean getNeedClientAuth() {
        return this._needClientAuth;
    }

    public String getProtocol() {
        return this._protocol;
    }

    public String getProvider() {
        return this._provider;
    }

    public String getSecureRandomAlgorithm() {
        return this._secureRandomAlgorithm;
    }

    public String getSslKeyManagerFactoryAlgorithm() {
        return this._sslKeyManagerFactoryAlgorithm;
    }

    public String getSslTrustManagerFactoryAlgorithm() {
        return this._sslTrustManagerFactoryAlgorithm;
    }

    public String getTruststore() {
        return this._truststore;
    }

    public String getTruststoreType() {
        return this._truststoreType;
    }

    public boolean getWantClientAuth() {
        return this._wantClientAuth;
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public boolean isConfidential(Request request) {
        int confidentialPort = getConfidentialPort();
        return confidentialPort == 0 || confidentialPort == request.getServerPort();
    }

    @Override // org.mortbay.jetty.AbstractConnector, org.mortbay.jetty.Connector
    public boolean isIntegral(Request request) {
        int integralPort = getIntegralPort();
        return integralPort == 0 || integralPort == request.getServerPort();
    }

    @Override // org.mortbay.jetty.bio.SocketConnector
    protected ServerSocket newServerSocket(String str, int i, int i2) throws IOException {
        try {
            SSLServerSocketFactory sSLServerSocketFactoryCreateFactory = createFactory();
            SSLServerSocket sSLServerSocket = (SSLServerSocket) (str == null ? sSLServerSocketFactoryCreateFactory.createServerSocket(i, i2) : sSLServerSocketFactoryCreateFactory.createServerSocket(i, i2, InetAddress.getByName(str)));
            if (this._wantClientAuth) {
                sSLServerSocket.setWantClientAuth(this._wantClientAuth);
            }
            if (this._needClientAuth) {
                sSLServerSocket.setNeedClientAuth(this._needClientAuth);
            }
            if (this._excludeCipherSuites != null && this._excludeCipherSuites.length > 0) {
                List<String> listAsList = Arrays.asList(this._excludeCipherSuites);
                ArrayList arrayList = new ArrayList(Arrays.asList(sSLServerSocket.getEnabledCipherSuites()));
                for (String str2 : listAsList) {
                    if (arrayList.contains(str2)) {
                        arrayList.remove(str2);
                    }
                }
                sSLServerSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            return sSLServerSocket;
        } catch (IOException e2) {
            throw e2;
        } catch (Exception e3) {
            Log.warn(e3.toString());
            Log.debug(e3);
            throw new IOException(new StringBuffer().append("!JsseListener: ").append(e3).toString());
        }
    }

    public void setExcludeCipherSuites(String[] strArr) {
        this._excludeCipherSuites = strArr;
    }

    public void setKeyPassword(String str) {
        this._keyPassword = Password.getPassword(KEYPASSWORD_PROPERTY, str, null);
    }

    public void setKeystore(String str) {
        this._keystore = str;
    }

    public void setKeystoreType(String str) {
        this._keystoreType = str;
    }

    public void setNeedClientAuth(boolean z) {
        this._needClientAuth = z;
    }

    public void setPassword(String str) {
        this._password = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public void setTrustPassword(String str) {
        this._trustPassword = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public void setProtocol(String str) {
        this._protocol = str;
    }

    public void setProvider(String str) {
        this._provider = str;
    }

    public void setSecureRandomAlgorithm(String str) {
        this._secureRandomAlgorithm = str;
    }

    public void setSslKeyManagerFactoryAlgorithm(String str) {
        this._sslKeyManagerFactoryAlgorithm = str;
    }

    public void setSslTrustManagerFactoryAlgorithm(String str) {
        this._sslTrustManagerFactoryAlgorithm = str;
    }

    public void setTruststore(String str) {
        this._truststore = str;
    }

    public void setTruststoreType(String str) {
        this._truststoreType = str;
    }

    public void setWantClientAuth(boolean z) {
        this._wantClientAuth = z;
    }

    public void setHandshakeTimeout(int i) {
        this._handshakeTimeout = i;
    }

    public int getHandshakeTimeout() {
        return this._handshakeTimeout;
    }

    class CachedInfo {
        private X509Certificate[] _certs;
        private Integer _keySize;
        private final SslSocketConnector this$0;

        CachedInfo(SslSocketConnector sslSocketConnector, Integer num, X509Certificate[] x509CertificateArr) {
            this.this$0 = sslSocketConnector;
            this._keySize = num;
            this._certs = x509CertificateArr;
        }

        X509Certificate[] getCerts() {
            return this._certs;
        }

        Integer getKeySize() {
            return this._keySize;
        }
    }

    public class SslConnection extends SocketConnector.Connection {
        private final SslSocketConnector this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SslConnection(SslSocketConnector sslSocketConnector, Socket socket) throws IOException {
            super(sslSocketConnector, socket);
            this.this$0 = sslSocketConnector;
        }

        @Override // org.mortbay.io.bio.SocketEndPoint, org.mortbay.io.bio.StreamEndPoint, org.mortbay.io.EndPoint
        public void shutdownOutput() throws IOException {
            close();
        }

        @Override // org.mortbay.jetty.bio.SocketConnector.Connection, java.lang.Runnable
        public void run() {
            try {
                int handshakeTimeout = this.this$0.getHandshakeTimeout();
                int soTimeout = this._socket.getSoTimeout();
                if (handshakeTimeout > 0) {
                    this._socket.setSoTimeout(handshakeTimeout);
                }
                SSLSocket sSLSocket = (SSLSocket) this._socket;
                sSLSocket.addHandshakeCompletedListener(new HandshakeCompletedListener(this, sSLSocket) { // from class: org.mortbay.jetty.security.SslSocketConnector.SslConnection.1
                    boolean handshook = false;
                    private final SslConnection this$1;
                    private final SSLSocket val$ssl;

                    {
                        this.this$1 = this;
                        this.val$ssl = sSLSocket;
                    }

                    @Override // javax.net.ssl.HandshakeCompletedListener
                    public void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
                        if (this.handshook) {
                            if (!this.this$1.this$0._allowRenegotiate) {
                                Log.warn(new StringBuffer().append("SSL renegotiate denied: ").append(this.val$ssl).toString());
                                try {
                                    this.val$ssl.close();
                                    return;
                                } catch (IOException e2) {
                                    Log.warn(e2);
                                    return;
                                }
                            }
                            return;
                        }
                        this.handshook = true;
                    }
                });
                sSLSocket.startHandshake();
                if (handshakeTimeout > 0) {
                    this._socket.setSoTimeout(soTimeout);
                }
                super.run();
            } catch (SSLException e2) {
                Log.warn(e2);
                try {
                    close();
                } catch (IOException e3) {
                    Log.ignore(e3);
                }
            } catch (IOException e4) {
                Log.debug(e4);
                try {
                    close();
                } catch (IOException e5) {
                    Log.ignore(e5);
                }
            }
        }
    }
}
