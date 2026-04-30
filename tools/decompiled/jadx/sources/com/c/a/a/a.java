package com.c.a.a;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: DefaultVarExploder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f1265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f1266b = new TreeMap();

    public a(Object obj) throws k {
        a(obj);
    }

    @Override // com.c.a.a.j
    public Map<String, Object> a() {
        return this.f1266b;
    }

    void a(Object obj) throws k {
        this.f1265a = obj;
        c();
    }

    private void c() throws k {
        Class<?> cls = this.f1265a.getClass();
        if (cls.isAnnotation() || cls.isArray() || cls.isEnum() || cls.isPrimitive()) {
            throw new IllegalArgumentException("The value must an object");
        }
        if (this.f1265a instanceof Map) {
            this.f1266b = (Map) this.f1265a;
            return;
        }
        for (Method method : cls.getMethods()) {
            a(method);
        }
        a(cls);
    }

    private void a(Method method) {
        Class<?> returnType;
        String name = method.getName();
        int length = name.startsWith("is") ? "is".length() : name.startsWith("get") ? "get".length() : 0;
        if (length != 0) {
            String strA = a(name.substring(length));
            if (b(strA) && (returnType = method.getReturnType()) != null && returnType != Void.TYPE) {
                if (length != 2 || returnType == Boolean.TYPE) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length <= 1) {
                        if ((parameterTypes.length != 1 || parameterTypes[0] == Integer.TYPE) && !method.isAnnotationPresent(h.class) && !AdobePSDCompositeConstants.AdobePSDCompositeLayerFillClassKey.equals(strA)) {
                            Object objB = b(method);
                            if (method.isAnnotationPresent(l.class)) {
                                strA = ((l) method.getAnnotation(l.class)).a();
                            }
                            if (objB != null) {
                                this.f1266b.put(strA, objB);
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean b(String str) {
        return (str == null || str.length() == 0) ? false : true;
    }

    static String a(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return str;
        }
        if (str.length() <= 1 || !Character.isUpperCase(str.charAt(1))) {
            char[] charArray = str.toCharArray();
            charArray[0] = Character.toLowerCase(charArray[0]);
            return new String(charArray);
        }
        return str;
    }

    private void a(Class<?> cls) {
        if (!cls.isInterface()) {
            for (Field field : cls.getDeclaredFields()) {
                String name = field.getName();
                if (this.f1266b.containsKey(name)) {
                    if (field.isAnnotationPresent(h.class)) {
                        this.f1266b.remove(name);
                    } else if (field.isAnnotationPresent(l.class)) {
                        this.f1266b.put(((l) field.getAnnotation(l.class)).a(), this.f1266b.get(name));
                        this.f1266b.remove(name);
                    }
                }
            }
        }
        if (!cls.getSuperclass().equals(Object.class)) {
            a((Class<?>) cls.getSuperclass());
        }
    }

    private Object b(Method method) throws k {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(this.f1265a, new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new k(e2);
        } catch (IllegalArgumentException e3) {
            throw new k(e3);
        } catch (InvocationTargetException e4) {
            throw new k(e4);
        }
    }

    @Override // com.c.a.a.j
    public Collection<Object> b() throws k {
        return this.f1266b.values();
    }
}
