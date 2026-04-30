package d.a.g;

import d.au;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: Jdk9Platform.java */
/* JADX INFO: loaded from: classes3.dex */
final class e extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f4469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Method f4470b;

    e(Method method, Method method2) {
        this.f4469a = method;
        this.f4470b = method2;
    }

    @Override // d.a.g.i
    public void a(SSLSocket sSLSocket, String str, List<au> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = a(list);
            this.f4469a.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw d.a.c.a("unable to set ssl parameters", (Exception) e2);
        }
    }

    @Override // d.a.g.i
    public String a(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f4470b.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw d.a.c.a("unable to get selected protocols", (Exception) e2);
        }
    }

    public static e a() {
        try {
            return new e(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }
}
