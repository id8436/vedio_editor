package c.a.a.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import c.a.a.a.a.b.z;
import c.a.a.a.a.c.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: Fabric.java */
/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile f f369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final t f370b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final t f371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<? extends q>, q> f374f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ExecutorService f375g;
    private final Handler h;
    private final l<f> i;
    private final l<?> j;
    private final z k;
    private a l;
    private WeakReference<Activity> m;
    private AtomicBoolean n = new AtomicBoolean(false);

    static f a() {
        if (f369a == null) {
            throw new IllegalStateException("Must Initialize Fabric before using singleton()");
        }
        return f369a;
    }

    f(Context context, Map<Class<? extends q>, q> map, w wVar, Handler handler, t tVar, boolean z, l lVar, z zVar) {
        this.f373e = context;
        this.f374f = map;
        this.f375g = wVar;
        this.h = handler;
        this.f371c = tVar;
        this.f372d = z;
        this.i = lVar;
        this.j = a(map.size());
        this.k = zVar;
    }

    public static f a(Context context, q... qVarArr) {
        if (f369a == null) {
            synchronized (f.class) {
                if (f369a == null) {
                    c(new i(context).a(qVarArr).a());
                }
            }
        }
        return f369a;
    }

    private static void c(f fVar) {
        f369a = fVar;
        fVar.j();
    }

    public f a(Activity activity) {
        this.m = new WeakReference<>(activity);
        return this;
    }

    public Activity b() {
        if (this.m != null) {
            return this.m.get();
        }
        return null;
    }

    private void j() {
        a(c(this.f373e));
        this.l = new a(this.f373e);
        this.l.a(new g(this));
        a(this.f373e);
    }

    public String c() {
        return "1.3.6.79";
    }

    public String d() {
        return "io.fabric.sdk.android:fabric";
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void a(Context context) {
        StringBuilder sbAppend;
        Future<Map<String, s>> futureB = b(context);
        Collection<q> collectionG = g();
        u uVar = new u(futureB, collectionG);
        ArrayList<q> arrayList = new ArrayList(collectionG);
        Collections.sort(arrayList);
        uVar.injectParameters(context, this, l.f390d, this.k);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((q) it.next()).injectParameters(context, this, this.j, this.k);
        }
        uVar.initialize();
        if (h().a("Fabric", 3)) {
            sbAppend = new StringBuilder("Initializing ").append(d()).append(" [Version: ").append(c()).append("], with the following kits:\n");
        } else {
            sbAppend = null;
        }
        for (q qVar : arrayList) {
            qVar.initializationTask.addDependency(uVar.initializationTask);
            a(this.f374f, qVar);
            qVar.initialize();
            if (sbAppend != null) {
                sbAppend.append(qVar.getIdentifier()).append(" [Version: ").append(qVar.getVersion()).append("]\n");
            }
        }
        if (sbAppend != null) {
            h().a("Fabric", sbAppend.toString());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void a(Map<Class<? extends q>, q> map, q qVar) {
        c.a.a.a.a.c.n nVar = (c.a.a.a.a.c.n) qVar.getClass().getAnnotation(c.a.a.a.a.c.n.class);
        if (nVar != null) {
            for (Class<?> cls : nVar.a()) {
                if (cls.isInterface()) {
                    for (q qVar2 : map.values()) {
                        if (cls.isAssignableFrom(qVar2.getClass())) {
                            qVar.initializationTask.addDependency(qVar2.initializationTask);
                        }
                    }
                } else {
                    if (map.get(cls) == null) {
                        throw new c.a.a.a.a.c.z("Referenced Kit was null, does the kit exist?");
                    }
                    qVar.initializationTask.addDependency(map.get(cls).initializationTask);
                }
            }
        }
    }

    private Activity c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    public a e() {
        return this.l;
    }

    public ExecutorService f() {
        return this.f375g;
    }

    public Collection<q> g() {
        return this.f374f.values();
    }

    public static <T extends q> T a(Class<T> cls) {
        return (T) a().f374f.get(cls);
    }

    public static t h() {
        return f369a == null ? f370b : f369a.f371c;
    }

    public static boolean i() {
        if (f369a == null) {
            return false;
        }
        return f369a.f372d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Class<? extends q>, q> b(Collection<? extends q> collection) {
        HashMap map = new HashMap(collection.size());
        a(map, collection);
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(Map<Class<? extends q>, q> map, Collection<? extends q> collection) {
        for (Object obj : collection) {
            map.put(obj.getClass(), obj);
            if (obj instanceof r) {
                a(map, ((r) obj).getKits());
            }
        }
    }

    l<?> a(int i) {
        return new h(this, i);
    }

    Future<Map<String, s>> b(Context context) {
        return f().submit(new k(context.getPackageCodePath()));
    }
}
