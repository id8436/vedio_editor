package f;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Retrofit.java */
/* JADX INFO: loaded from: classes3.dex */
class ax implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Class f4816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ aw f4817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ap f4818c = ap.a();

    ax(aw awVar, Class cls) {
        this.f4817b = awVar;
        this.f4816a = cls;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
        if (method.getDeclaringClass() == Object.class) {
            return method.invoke(this, objArr);
        }
        if (this.f4818c.a(method)) {
            return this.f4818c.a(method, this.f4816a, obj, objArr);
        }
        az<?, ?> azVarA = this.f4817b.a(method);
        return azVarA.f4829d.a(new u(azVarA, objArr));
    }
}
