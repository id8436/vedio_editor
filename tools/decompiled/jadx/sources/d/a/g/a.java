package d.a.g;

import android.os.Build;
import android.util.Log;
import d.au;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
class a extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f4456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h<Socket> f4457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h<Socket> f4458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h<Socket> f4459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h<Socket> f4460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f4461f = d.a();

    a(Class<?> cls, h<Socket> hVar, h<Socket> hVar2, h<Socket> hVar3, h<Socket> hVar4) {
        this.f4456a = cls;
        this.f4457b = hVar;
        this.f4458c = hVar2;
        this.f4459d = hVar3;
        this.f4460e = hVar4;
    }

    @Override // d.a.g.i
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e2) {
            if (!d.a.c.a(e2)) {
                throw e2;
            }
            throw new IOException(e2);
        } catch (ClassCastException e3) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e3);
                throw iOException;
            }
            throw e3;
        } catch (SecurityException e4) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e4);
            throw iOException2;
        }
    }

    @Override // d.a.g.i
    public void a(SSLSocket sSLSocket, String str, List<au> list) {
        if (str != null) {
            this.f4457b.b(sSLSocket, true);
            this.f4458c.b(sSLSocket, str);
        }
        if (this.f4460e != null && this.f4460e.a(sSLSocket)) {
            this.f4460e.d(sSLSocket, b(list));
        }
    }

    @Override // d.a.g.i
    public String a(SSLSocket sSLSocket) {
        if (this.f4459d == null || !this.f4459d.a(sSLSocket)) {
            return null;
        }
        byte[] bArr = (byte[]) this.f4459d.d(sSLSocket, new Object[0]);
        return bArr != null ? new String(bArr, d.a.c.f4257e) : null;
    }

    @Override // d.a.g.i
    public void a(int i, String str, Throwable th) {
        int iMin;
        int i2 = i == 5 ? 5 : 3;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // d.a.g.i
    public Object a(String str) {
        return this.f4461f.a(str);
    }

    @Override // d.a.g.i
    public void a(String str, Object obj) {
        if (!this.f4461f.a(obj)) {
            a(5, str, (Throwable) null);
        }
    }

    @Override // d.a.g.i
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return a(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException e2) {
            return super.b(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw d.a.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw d.a.c.a("unable to determine cleartext support", e);
        } catch (NoSuchMethodException e5) {
            return super.b(str);
        } catch (InvocationTargetException e6) {
            e = e6;
            throw d.a.c.a("unable to determine cleartext support", e);
        }
    }

    private boolean a(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e2) {
            return b(str, cls, obj);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e2) {
            return super.b(str);
        }
    }

    private static boolean c() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException e2) {
            return false;
        }
    }

    @Override // d.a.g.i
    public d.a.i.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new b(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e2) {
            return super.a(x509TrustManager);
        }
    }

    public static i a() {
        Class<?> cls;
        h hVar;
        h hVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e2) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            h hVar3 = new h(null, "setUseSessionTickets", Boolean.TYPE);
            h hVar4 = new h(null, "setHostname", String.class);
            if (c()) {
                hVar2 = new h(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                hVar = new h(null, "setAlpnProtocols", byte[].class);
            } else {
                hVar = null;
                hVar2 = null;
            }
            return new a(cls, hVar3, hVar4, hVar2, hVar);
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    @Override // d.a.g.i
    public d.a.i.f b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new c(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e2) {
            return super.b(x509TrustManager);
        }
    }
}
