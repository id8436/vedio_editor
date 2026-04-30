package d.a.c;

import d.ai;
import d.ax;
import java.net.Proxy;

/* JADX INFO: compiled from: RequestLine.java */
/* JADX INFO: loaded from: classes3.dex */
public final class k {
    public static String a(ax axVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(axVar.b());
        sb.append(' ');
        if (b(axVar, type)) {
            sb.append(axVar.a());
        } else {
            sb.append(a(axVar.a()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(ax axVar, Proxy.Type type) {
        return !axVar.g() && type == Proxy.Type.HTTP;
    }

    public static String a(ai aiVar) {
        String strH = aiVar.h();
        String strK = aiVar.k();
        return strK != null ? strH + '?' + strK : strH;
    }
}
