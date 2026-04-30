package f;

import d.bf;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Retrofit.java */
/* JADX INFO: loaded from: classes.dex */
public final class aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final d.h f4809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.ai f4810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<l> f4811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<i> f4812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    final Executor f4813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f4814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<Method, az<?, ?>> f4815g = new ConcurrentHashMap();

    aw(d.h hVar, d.ai aiVar, List<l> list, List<i> list2, @Nullable Executor executor, boolean z) {
        this.f4809a = hVar;
        this.f4810b = aiVar;
        this.f4811c = Collections.unmodifiableList(list);
        this.f4812d = Collections.unmodifiableList(list2);
        this.f4813e = executor;
        this.f4814f = z;
    }

    public <T> T a(Class<T> cls) {
        bb.a((Class) cls);
        if (this.f4814f) {
            b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new ax(this, cls));
    }

    private void b(Class<?> cls) {
        ap apVarA = ap.a();
        for (Method method : cls.getDeclaredMethods()) {
            if (!apVarA.a(method)) {
                a(method);
            }
        }
    }

    az<?, ?> a(Method method) {
        az azVarA = this.f4815g.get(method);
        if (azVarA == null) {
            synchronized (this.f4815g) {
                azVarA = this.f4815g.get(method);
                if (azVarA == null) {
                    azVarA = new ba(this, method).a();
                    this.f4815g.put(method, azVarA);
                }
            }
        }
        return azVarA;
    }

    public d.h a() {
        return this.f4809a;
    }

    public d.ai b() {
        return this.f4810b;
    }

    public h<?, ?> a(Type type, Annotation[] annotationArr) {
        return a((i) null, type, annotationArr);
    }

    public h<?, ?> a(@Nullable i iVar, Type type, Annotation[] annotationArr) {
        bb.a(type, "returnType == null");
        bb.a(annotationArr, "annotations == null");
        int iIndexOf = this.f4812d.indexOf(iVar) + 1;
        int size = this.f4812d.size();
        for (int i = iIndexOf; i < size; i++) {
            h<?, ?> hVarA = this.f4812d.get(i).a(type, annotationArr, this);
            if (hVarA != null) {
                return hVarA;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate call adapter for ").append(type).append(".\n");
        if (iVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.f4812d.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.f4812d.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.f4812d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> k<T, d.az> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> k<T, d.az> a(@Nullable l lVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        bb.a(type, "type == null");
        bb.a(annotationArr, "parameterAnnotations == null");
        bb.a(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f4811c.indexOf(lVar) + 1;
        int size = this.f4811c.size();
        for (int i = iIndexOf; i < size; i++) {
            k<T, d.az> kVar = (k<T, d.az>) this.f4811c.get(i).a(type, annotationArr, annotationArr2, this);
            if (kVar != null) {
                return kVar;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate RequestBody converter for ").append(type).append(".\n");
        if (lVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.f4811c.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.f4811c.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.f4811c.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> k<bf, T> b(Type type, Annotation[] annotationArr) {
        return a((l) null, type, annotationArr);
    }

    public <T> k<bf, T> a(@Nullable l lVar, Type type, Annotation[] annotationArr) {
        bb.a(type, "type == null");
        bb.a(annotationArr, "annotations == null");
        int iIndexOf = this.f4811c.indexOf(lVar) + 1;
        int size = this.f4811c.size();
        for (int i = iIndexOf; i < size; i++) {
            k<bf, T> kVar = (k<bf, T>) this.f4811c.get(i).a(type, annotationArr, this);
            if (kVar != null) {
                return kVar;
            }
        }
        StringBuilder sbAppend = new StringBuilder("Could not locate ResponseBody converter for ").append(type).append(".\n");
        if (lVar != null) {
            sbAppend.append("  Skipped:");
            for (int i2 = 0; i2 < iIndexOf; i2++) {
                sbAppend.append("\n   * ").append(this.f4811c.get(i2).getClass().getName());
            }
            sbAppend.append('\n');
        }
        sbAppend.append("  Tried:");
        int size2 = this.f4811c.size();
        while (iIndexOf < size2) {
            sbAppend.append("\n   * ").append(this.f4811c.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sbAppend.toString());
    }

    public <T> k<T, String> c(Type type, Annotation[] annotationArr) {
        bb.a(type, "type == null");
        bb.a(annotationArr, "annotations == null");
        int size = this.f4811c.size();
        for (int i = 0; i < size; i++) {
            k<T, String> kVar = (k<T, String>) this.f4811c.get(i).b(type, annotationArr, this);
            if (kVar != null) {
                return kVar;
            }
        }
        return e.f4850a;
    }
}
