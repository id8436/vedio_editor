package d.a.g;

import d.ar;
import d.au;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i f4482a = a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f4483b = Logger.getLogger(ar.class.getName());

    public static i b() {
        return f4482a;
    }

    public void a(SSLSocket sSLSocket, String str, List<au> list) {
    }

    public void b(SSLSocket sSLSocket) {
    }

    public String a(SSLSocket sSLSocket) {
        return null;
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void a(int i, String str, Throwable th) {
        f4483b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public boolean b(String str) {
        return true;
    }

    public Object a(String str) {
        if (f4483b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    public static List<String> a(List<au> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            au auVar = list.get(i);
            if (auVar != au.HTTP_1_0) {
                arrayList.add(auVar.toString());
            }
        }
        return arrayList;
    }

    public d.a.i.c a(X509TrustManager x509TrustManager) {
        return new d.a.i.a(b(x509TrustManager));
    }

    private static i a() {
        i iVarA = a.a();
        if (iVarA == null) {
            e eVarA = e.a();
            if (eVarA == null) {
                i iVarA2 = f.a();
                return iVarA2 == null ? new i() : iVarA2;
            }
            return eVarA;
        }
        return iVarA;
    }

    static byte[] b(List<au> list) {
        e.f fVar = new e.f();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            au auVar = list.get(i);
            if (auVar != au.HTTP_1_0) {
                fVar.i(auVar.toString().length());
                fVar.b(auVar.toString());
            }
        }
        return fVar.r();
    }

    public d.a.i.f b(X509TrustManager x509TrustManager) {
        return new d.a.i.b(x509TrustManager.getAcceptedIssuers());
    }
}
