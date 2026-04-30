package f;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes3.dex */
@IgnoreJRERequirement
class as extends ap {
    as() {
    }

    @Override // f.ap
    boolean a(Method method) {
        return method.isDefault();
    }

    @Override // f.ap
    Object a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
        declaredConstructor.setAccessible(true);
        return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
