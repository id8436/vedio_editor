package d.a.g;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
class g implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f4477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<String> f4478c;

    g(List<String> list) {
        this.f4478c = list;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        if (objArr == null) {
            objArr = d.a.c.f4254b;
        }
        if (name.equals("supports") && Boolean.TYPE == returnType) {
            return true;
        }
        if (name.equals("unsupported") && Void.TYPE == returnType) {
            this.f4476a = true;
            return null;
        }
        if (name.equals("protocols") && objArr.length == 0) {
            return this.f4478c;
        }
        if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
            List list = (List) objArr[0];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (this.f4478c.contains(list.get(i))) {
                    String str = (String) list.get(i);
                    this.f4477b = str;
                    return str;
                }
            }
            String str2 = this.f4478c.get(0);
            this.f4477b = str2;
            return str2;
        }
        if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
            this.f4477b = (String) objArr[0];
            return null;
        }
        return method.invoke(this, objArr);
    }
}
