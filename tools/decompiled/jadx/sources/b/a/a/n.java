package b.a.a;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: SubscriberMethod.java */
/* JADX INFO: loaded from: classes.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Method f99a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final q f100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Class<?> f101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f102d;

    n(Method method, q qVar, Class<?> cls) {
        this.f99a = method;
        this.f100b = qVar;
        this.f101c = cls;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        a();
        n nVar = (n) obj;
        nVar.a();
        return this.f102d.equals(nVar.f102d);
    }

    private synchronized void a() {
        if (this.f102d == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f99a.getDeclaringClass().getName());
            sb.append('#').append(this.f99a.getName());
            sb.append('(').append(this.f101c.getName());
            this.f102d = sb.toString();
        }
    }

    public int hashCode() {
        return this.f99a.hashCode();
    }
}
