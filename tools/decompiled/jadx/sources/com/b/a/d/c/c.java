package com.b.a.d.c;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: GenericLoaderFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final s f917c = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class, Map<Class, t>> f918a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class, Map<Class, s>> f919b = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f920d;

    public c(Context context) {
        this.f920d = context.getApplicationContext();
    }

    public synchronized <T, Y> t<T, Y> a(Class<T> cls, Class<Y> cls2, t<T, Y> tVar) {
        t<T, Y> tVarPut;
        this.f919b.clear();
        Map<Class, t> map = this.f918a.get(cls);
        if (map == null) {
            map = new HashMap<>();
            this.f918a.put(cls, map);
        }
        tVarPut = map.put(cls2, tVar);
        if (tVarPut != null) {
            Iterator<Map<Class, t>> it = this.f918a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().containsValue(tVarPut)) {
                    tVarPut = null;
                    break;
                }
            }
        }
        return tVarPut;
    }

    public synchronized <T, Y> s<T, Y> a(Class<T> cls, Class<Y> cls2) {
        s<T, Y> sVarC;
        sVarC = c(cls, cls2);
        if (sVarC != null) {
            if (f917c.equals(sVarC)) {
                sVarC = null;
            }
        } else {
            t<T, Y> tVarD = d(cls, cls2);
            if (tVarD != null) {
                sVarC = tVarD.a(this.f920d, this);
                a(cls, cls2, sVarC);
            } else {
                b(cls, cls2);
            }
        }
        return sVarC;
    }

    private <T, Y> void b(Class<T> cls, Class<Y> cls2) {
        a(cls, cls2, f917c);
    }

    private <T, Y> void a(Class<T> cls, Class<Y> cls2, s<T, Y> sVar) {
        Map<Class, s> map = this.f919b.get(cls);
        if (map == null) {
            map = new HashMap<>();
            this.f919b.put(cls, map);
        }
        map.put(cls2, sVar);
    }

    private <T, Y> s<T, Y> c(Class<T> cls, Class<Y> cls2) {
        Map<Class, s> map = this.f919b.get(cls);
        if (map == null) {
            return null;
        }
        return map.get(cls2);
    }

    private <T, Y> t<T, Y> d(Class<T> cls, Class<Y> cls2) {
        t tVar;
        Map<Class, t> map;
        Map<Class, t> map2 = this.f918a.get(cls);
        if (map2 == null) {
            tVar = null;
        } else {
            tVar = map2.get(cls2);
        }
        if (tVar == null) {
            Iterator<Class> it = this.f918a.keySet().iterator();
            while (true) {
                t<T, Y> tVar2 = tVar;
                if (!it.hasNext()) {
                    return tVar2;
                }
                Class next = it.next();
                if (!next.isAssignableFrom(cls) || (map = this.f918a.get(next)) == null) {
                    tVar = tVar2;
                } else {
                    tVar = map.get(cls2);
                    if (tVar != null) {
                        return tVar;
                    }
                }
            }
        } else {
            return tVar;
        }
    }
}
