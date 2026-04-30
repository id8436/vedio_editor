package g.a.a.a;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ReflectionUtils.java */
/* JADX INFO: loaded from: classes3.dex */
class p {
    static Field a(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (NoSuchFieldException e2) {
            return null;
        }
    }

    static Object a(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e2) {
            return null;
        }
    }

    static void a(Field field, Object obj, Object obj2) {
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e2) {
        }
    }

    static Method b(Class cls, String str) {
        for (Method method : cls.getMethods()) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }

    static void a(Object obj, Method method, Object... objArr) {
        if (method != null) {
            try {
                method.invoke(obj, objArr);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
    }
}
