package d.a.c;

import org.mortbay.jetty.HttpMethods;

/* JADX INFO: compiled from: HttpMethod.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h {
    public static boolean a(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals(HttpMethods.MOVE);
    }

    public static boolean b(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public static boolean c(String str) {
        return b(str) || str.equals("OPTIONS") || str.equals("DELETE") || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    public static boolean d(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean e(String str) {
        return !str.equals("PROPFIND");
    }
}
