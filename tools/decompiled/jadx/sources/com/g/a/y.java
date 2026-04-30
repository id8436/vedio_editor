package com.g.a;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: PropertyValuesHolder.java */
/* JADX INFO: loaded from: classes2.dex */
public class y implements Cloneable {
    private static final ab i = new e();
    private static final ab j = new c();
    private static Class[] k = {Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
    private static Class[] l = {Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
    private static Class[] m = {Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
    private static final HashMap<Class, HashMap<String, Method>> n = new HashMap<>();
    private static final HashMap<Class, HashMap<String, Method>> o = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f3083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.g.b.c f3084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Method f3085c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Class f3086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    h f3087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ReentrantReadWriteLock f3088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Object[] f3089g;
    private Method h;
    private ab p;
    private Object q;

    private y(String str) {
        this.f3085c = null;
        this.h = null;
        this.f3087e = null;
        this.f3088f = new ReentrantReadWriteLock();
        this.f3089g = new Object[1];
        this.f3083a = str;
    }

    private y(com.g.b.c cVar) {
        this.f3085c = null;
        this.h = null;
        this.f3087e = null;
        this.f3088f = new ReentrantReadWriteLock();
        this.f3089g = new Object[1];
        this.f3084b = cVar;
        if (cVar != null) {
            this.f3083a = cVar.a();
        }
    }

    public static y a(String str, float... fArr) {
        return new aa(str, fArr);
    }

    public static y a(com.g.b.c<?, Float> cVar, float... fArr) {
        return new aa(cVar, fArr);
    }

    public void a(float... fArr) {
        this.f3086d = Float.TYPE;
        this.f3087e = h.a(fArr);
    }

    private Method a(Class cls, String str, Class cls2) {
        Method declaredMethod;
        Class<?>[] clsArr;
        Method declaredMethod2 = null;
        String strA = a(str, this.f3083a);
        if (cls2 == null) {
            try {
                return cls.getMethod(strA, null);
            } catch (NoSuchMethodException e2) {
                try {
                    declaredMethod = cls.getDeclaredMethod(strA, null);
                    try {
                        declaredMethod.setAccessible(true);
                        return declaredMethod;
                    } catch (NoSuchMethodException e3) {
                        Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.f3083a + ": " + e2);
                        return declaredMethod;
                    }
                } catch (NoSuchMethodException e4) {
                    declaredMethod = null;
                }
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            if (this.f3086d.equals(Float.class)) {
                clsArr = k;
            } else if (this.f3086d.equals(Integer.class)) {
                clsArr = l;
            } else if (this.f3086d.equals(Double.class)) {
                clsArr = m;
            } else {
                clsArr = new Class[]{this.f3086d};
            }
            for (Class<?> cls3 : clsArr) {
                clsArr2[0] = cls3;
                try {
                    declaredMethod2 = cls.getMethod(strA, clsArr2);
                    this.f3086d = cls3;
                    return declaredMethod2;
                } catch (NoSuchMethodException e5) {
                    try {
                        declaredMethod2 = cls.getDeclaredMethod(strA, clsArr2);
                        declaredMethod2.setAccessible(true);
                        this.f3086d = cls3;
                        return declaredMethod2;
                    } catch (NoSuchMethodException e6) {
                    }
                }
            }
            Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.f3083a + " with value type " + this.f3086d);
            return declaredMethod2;
        }
    }

    private Method a(Class cls, HashMap<Class, HashMap<String, Method>> map, String str, Class cls2) {
        Method methodA = null;
        try {
            this.f3088f.writeLock().lock();
            HashMap<String, Method> map2 = map.get(cls);
            if (map2 != null) {
                methodA = map2.get(this.f3083a);
            }
            if (methodA == null) {
                methodA = a(cls, str, cls2);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(cls, map2);
                }
                map2.put(this.f3083a, methodA);
            }
            Method method = methodA;
            return method;
        } finally {
            this.f3088f.writeLock().unlock();
        }
    }

    void a(Class cls) {
        this.f3085c = a(cls, n, "set", this.f3086d);
    }

    private void b(Class cls) {
        this.h = a(cls, o, "get", null);
    }

    void a(Object obj) {
        if (this.f3084b != null) {
            try {
                this.f3084b.a(obj);
                for (f fVar : this.f3087e.f3074e) {
                    if (!fVar.a()) {
                        fVar.a(this.f3084b.a(obj));
                    }
                }
                return;
            } catch (ClassCastException e2) {
                Log.e("PropertyValuesHolder", "No such property (" + this.f3084b.a() + ") on target object " + obj + ". Trying reflection instead");
                this.f3084b = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.f3085c == null) {
            a((Class) cls);
        }
        for (f fVar2 : this.f3087e.f3074e) {
            if (!fVar2.a()) {
                if (this.h == null) {
                    b((Class) cls);
                }
                try {
                    fVar2.a(this.h.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                } catch (InvocationTargetException e4) {
                    Log.e("PropertyValuesHolder", e4.toString());
                }
            }
        }
    }

    @Override // 
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public y clone() {
        try {
            y yVar = (y) super.clone();
            yVar.f3083a = this.f3083a;
            yVar.f3084b = this.f3084b;
            yVar.f3087e = this.f3087e.clone();
            yVar.p = this.p;
            return yVar;
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    void b(Object obj) {
        if (this.f3084b != null) {
            this.f3084b.a(obj, d());
        }
        if (this.f3085c != null) {
            try {
                this.f3089g[0] = d();
                this.f3085c.invoke(obj, this.f3089g);
            } catch (IllegalAccessException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            } catch (InvocationTargetException e3) {
                Log.e("PropertyValuesHolder", e3.toString());
            }
        }
    }

    void b() {
        ab abVar;
        if (this.p == null) {
            if (this.f3086d == Integer.class) {
                abVar = i;
            } else {
                abVar = this.f3086d == Float.class ? j : null;
            }
            this.p = abVar;
        }
        if (this.p != null) {
            this.f3087e.a(this.p);
        }
    }

    void a(float f2) {
        this.q = this.f3087e.a(f2);
    }

    public void a(com.g.b.c cVar) {
        this.f3084b = cVar;
    }

    public String c() {
        return this.f3083a;
    }

    Object d() {
        return this.q;
    }

    public String toString() {
        return this.f3083a + ": " + this.f3087e.toString();
    }

    static String a(String str, String str2) {
        if (str2 != null && str2.length() != 0) {
            return str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
        }
        return str;
    }
}
