package b.a.a;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: EventBus.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile c f62b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<p>> f65e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f66f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Class<?>, Object> f67g;
    private final ThreadLocal<f> h;
    private final i i;
    private final b j;
    private final a k;
    private final o l;
    private final ExecutorService m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private final boolean s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f61a = "Event";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final g f63c = new g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f64d = new HashMap();

    public static c a() {
        if (f62b == null) {
            synchronized (c.class) {
                if (f62b == null) {
                    f62b = new c();
                }
            }
        }
        return f62b;
    }

    public c() {
        this(f63c);
    }

    c(g gVar) {
        this.h = new d(this);
        this.f65e = new HashMap();
        this.f66f = new HashMap();
        this.f67g = new ConcurrentHashMap();
        this.i = new i(this, Looper.getMainLooper(), 10);
        this.j = new b(this);
        this.k = new a(this);
        this.l = new o(gVar.h);
        this.o = gVar.f76a;
        this.p = gVar.f77b;
        this.q = gVar.f78c;
        this.r = gVar.f79d;
        this.n = gVar.f80e;
        this.s = gVar.f81f;
        this.m = gVar.f82g;
    }

    public void a(Object obj) {
        a(obj, false, 0);
    }

    public void a(Object obj, int i) {
        a(obj, false, i);
    }

    private synchronized void a(Object obj, boolean z, int i) {
        Iterator<n> it = this.l.a(obj.getClass()).iterator();
        while (it.hasNext()) {
            a(obj, it.next(), z, i);
        }
    }

    private void a(Object obj, n nVar, boolean z, int i) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList;
        Object obj2;
        Class<?> cls = nVar.f101c;
        CopyOnWriteArrayList<p> copyOnWriteArrayList2 = this.f65e.get(cls);
        p pVar = new p(obj, nVar, i);
        if (copyOnWriteArrayList2 == null) {
            CopyOnWriteArrayList<p> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
            this.f65e.put(cls, copyOnWriteArrayList3);
            copyOnWriteArrayList = copyOnWriteArrayList3;
        } else {
            if (copyOnWriteArrayList2.contains(pVar)) {
                throw new h("Subscriber " + obj.getClass() + " already registered to event " + cls);
            }
            copyOnWriteArrayList = copyOnWriteArrayList2;
        }
        int size = copyOnWriteArrayList.size();
        for (int i2 = 0; i2 <= size; i2++) {
            if (i2 == size || pVar.f107c > copyOnWriteArrayList.get(i2).f107c) {
                copyOnWriteArrayList.add(i2, pVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f66f.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f66f.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (z) {
            synchronized (this.f67g) {
                obj2 = this.f67g.get(cls);
            }
            if (obj2 != null) {
                a(pVar, obj2, Looper.getMainLooper() == Looper.myLooper());
            }
        }
    }

    private void a(Object obj, Class<?> cls) {
        int i;
        int i2;
        CopyOnWriteArrayList<p> copyOnWriteArrayList = this.f65e.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i3 = 0;
            while (i3 < size) {
                p pVar = copyOnWriteArrayList.get(i3);
                if (pVar.f105a == obj) {
                    pVar.f108d = false;
                    copyOnWriteArrayList.remove(i3);
                    i = i3 - 1;
                    i2 = size - 1;
                } else {
                    i = i3;
                    i2 = size;
                }
                size = i2;
                i3 = i + 1;
            }
        }
    }

    public synchronized void b(Object obj) {
        List<Class<?>> list = this.f66f.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                a(obj, it.next());
            }
            this.f66f.remove(obj);
        } else {
            Log.w(f61a, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void c(Object obj) {
        f fVar = this.h.get();
        List<Object> list = fVar.f70a;
        list.add(obj);
        if (!fVar.f71b) {
            fVar.f72c = Looper.getMainLooper() == Looper.myLooper();
            fVar.f71b = true;
            if (fVar.f75f) {
                throw new h("Internal error. Abort state was not reset");
            }
            while (!list.isEmpty()) {
                try {
                    a(list.remove(0), fVar);
                } finally {
                    fVar.f71b = false;
                    fVar.f72c = false;
                }
            }
        }
    }

    public void d(Object obj) {
        f fVar = this.h.get();
        if (!fVar.f71b) {
            throw new h("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj == null) {
            throw new h("Event may not be null");
        }
        if (fVar.f74e != obj) {
            throw new h("Only the currently handled event may be aborted");
        }
        if (fVar.f73d.f106b.f100b != q.PostThread) {
            throw new h(" event handlers may only abort the incoming event");
        }
        fVar.f75f = true;
    }

    private void a(Object obj, f fVar) throws Error {
        boolean zA;
        Class<?> cls = obj.getClass();
        if (this.s) {
            List<Class<?>> listA = a(cls);
            int size = listA.size();
            boolean zA2 = false;
            for (int i = 0; i < size; i++) {
                zA2 |= a(obj, fVar, listA.get(i));
            }
            zA = zA2;
        } else {
            zA = a(obj, fVar, cls);
        }
        if (!zA) {
            if (this.p) {
                Log.d(f61a, "No subscribers registered for event " + cls);
            }
            if (this.r && cls != j.class && cls != m.class) {
                c(new j(this, obj));
            }
        }
    }

    private boolean a(Object obj, f fVar, Class<?> cls) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f65e.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (p pVar : copyOnWriteArrayList) {
            fVar.f74e = obj;
            fVar.f73d = pVar;
            try {
                a(pVar, obj, fVar.f72c);
                if (fVar.f75f) {
                    break;
                }
            } finally {
                fVar.f74e = null;
                fVar.f73d = null;
                fVar.f75f = false;
            }
        }
        return true;
    }

    private void a(p pVar, Object obj, boolean z) {
        switch (pVar.f106b.f100b) {
            case PostThread:
                a(pVar, obj);
                return;
            case MainThread:
                if (z) {
                    a(pVar, obj);
                    return;
                } else {
                    this.i.a(pVar, obj);
                    return;
                }
            case BackgroundThread:
                if (z) {
                    this.j.a(pVar, obj);
                    return;
                } else {
                    a(pVar, obj);
                    return;
                }
            case Async:
                this.k.a(pVar, obj);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + pVar.f106b.f100b);
        }
    }

    private List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        synchronized (f64d) {
            arrayList = f64d.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                f64d.put(cls, arrayList);
            }
        }
        return arrayList;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    void a(k kVar) {
        Object obj = kVar.f90a;
        p pVar = kVar.f91b;
        k.a(kVar);
        if (pVar.f108d) {
            a(pVar, obj);
        }
    }

    void a(p pVar, Object obj) {
        try {
            pVar.f106b.f99a.invoke(pVar.f105a, obj);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        } catch (InvocationTargetException e3) {
            a(pVar, obj, e3.getCause());
        }
    }

    private void a(p pVar, Object obj, Throwable th) {
        if (obj instanceof m) {
            if (this.o) {
                Log.e(f61a, "SubscriberExceptionEvent subscriber " + pVar.f105a.getClass() + " threw an exception", th);
                m mVar = (m) obj;
                Log.e(f61a, "Initial event " + mVar.f97c + " caused exception in " + mVar.f98d, mVar.f96b);
                return;
            }
            return;
        }
        if (this.n) {
            throw new h("Invoking subscriber failed", th);
        }
        if (this.o) {
            Log.e(f61a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + pVar.f105a.getClass(), th);
        }
        if (this.q) {
            c(new m(this, th, obj, pVar.f105a));
        }
    }

    ExecutorService b() {
        return this.m;
    }
}
