package org.apache.http.impl.conn;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class SystemDefaultRoutePlanner extends DefaultRoutePlanner {
    private final ProxySelector proxySelector;

    public SystemDefaultRoutePlanner(SchemePortResolver schemePortResolver, ProxySelector proxySelector) {
        super(schemePortResolver);
        this.proxySelector = proxySelector == null ? ProxySelector.getDefault() : proxySelector;
    }

    public SystemDefaultRoutePlanner(ProxySelector proxySelector) {
        this(null, proxySelector);
    }

    @Override // org.apache.http.impl.conn.DefaultRoutePlanner
    protected HttpHost determineProxy(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        try {
            Proxy proxyChooseProxy = chooseProxy(this.proxySelector.select(new URI(httpHost.toURI())));
            if (proxyChooseProxy.type() != Proxy.Type.HTTP) {
                return null;
            }
            if (!(proxyChooseProxy.address() instanceof InetSocketAddress)) {
                throw new HttpException("Unable to handle non-Inet proxy address: " + proxyChooseProxy.address());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) proxyChooseProxy.address();
            return new HttpHost(getHost(inetSocketAddress), inetSocketAddress.getPort());
        } catch (URISyntaxException e2) {
            throw new HttpException("Cannot convert host to URI: " + httpHost, e2);
        }
    }

    private String getHost(InetSocketAddress inetSocketAddress) {
        return inetSocketAddress.isUnresolved() ? inetSocketAddress.getHostName() : inetSocketAddress.getAddress().getHostAddress();
    }

    private Proxy chooseProxy(List<Proxy> list) {
        Proxy proxy = null;
        int i = 0;
        while (proxy == null && i < list.size()) {
            Proxy proxy2 = list.get(i);
            switch (AnonymousClass1.$SwitchMap$java$net$Proxy$Type[proxy2.type().ordinal()]) {
                case 1:
                case 2:
                    break;
                default:
                    proxy2 = proxy;
                    break;
            }
            i++;
            proxy = proxy2;
        }
        if (proxy == null) {
            return Proxy.NO_PROXY;
        }
        return proxy;
    }

    /* JADX INFO: renamed from: org.apache.http.impl.conn.SystemDefaultRoutePlanner$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$net$Proxy$Type = new int[Proxy.Type.values().length];

        static {
            try {
                $SwitchMap$java$net$Proxy$Type[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$java$net$Proxy$Type[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$java$net$Proxy$Type[Proxy.Type.SOCKS.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }
}
