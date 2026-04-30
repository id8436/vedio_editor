package f;

import android.os.Build;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes.dex */
class ap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ap f4795a = c();

    ap() {
    }

    static ap a() {
        return f4795a;
    }

    private static ap c() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new aq();
            }
        } catch (ClassNotFoundException e2) {
        }
        try {
            Class.forName("java.util.Optional");
            return new as();
        } catch (ClassNotFoundException e3) {
            return new ap();
        }
    }

    @Nullable
    Executor b() {
        return null;
    }

    i a(@Nullable Executor executor) {
        return executor != null ? new o(executor) : m.f4852a;
    }

    boolean a(Method method) {
        return false;
    }

    @Nullable
    Object a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }
}
