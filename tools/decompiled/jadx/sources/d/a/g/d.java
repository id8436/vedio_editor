package d.a.g;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f4466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f4467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f4468c;

    d(Method method, Method method2, Method method3) {
        this.f4466a = method;
        this.f4467b = method2;
        this.f4468c = method3;
    }

    Object a(String str) {
        if (this.f4466a != null) {
            try {
                Object objInvoke = this.f4466a.invoke(null, new Object[0]);
                this.f4467b.invoke(objInvoke, str);
                return objInvoke;
            } catch (Exception e2) {
            }
        }
        return null;
    }

    boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            this.f4468c.invoke(obj, new Object[0]);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    static d a() {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("dalvik.system.CloseGuard");
            method2 = cls.getMethod("get", new Class[0]);
            method = cls.getMethod("open", String.class);
            method3 = cls.getMethod("warnIfOpen", new Class[0]);
        } catch (Exception e2) {
            method = null;
            method2 = null;
        }
        return new d(method2, method, method3);
    }
}
