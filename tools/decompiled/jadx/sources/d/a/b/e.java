package d.a.b;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: RouteException.java */
/* JADX INFO: loaded from: classes3.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Method f4234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IOException f4235b;

    static {
        Method declaredMethod;
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception e2) {
            declaredMethod = null;
        }
        f4234a = declaredMethod;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f4235b = iOException;
    }

    public IOException a() {
        return this.f4235b;
    }

    public void a(IOException iOException) {
        a(iOException, this.f4235b);
        this.f4235b = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        if (f4234a != null) {
            try {
                f4234a.invoke(iOException, iOException2);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
    }
}
