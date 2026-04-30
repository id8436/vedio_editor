package f;

import d.bf;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ServiceMethod.java */
/* JADX INFO: loaded from: classes3.dex */
final class az<R, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f4826a = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Pattern f4827b = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d.h f4828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final h<R, T> f4829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d.ai f4830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k<bf, R> f4831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f4832g;
    private final String h;
    private final d.ag i;
    private final d.an j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final z<?>[] n;

    az(ba<R, T> baVar) {
        this.f4828c = baVar.f4834a.a();
        this.f4829d = baVar.w;
        this.f4830e = baVar.f4834a.b();
        this.f4831f = baVar.v;
        this.f4832g = baVar.m;
        this.h = baVar.q;
        this.i = baVar.r;
        this.j = baVar.s;
        this.k = baVar.n;
        this.l = baVar.o;
        this.m = baVar.p;
        this.n = baVar.u;
    }

    d.ax a(@Nullable Object... objArr) throws IOException {
        at atVar = new at(this.f4832g, this.f4830e, this.h, this.i, this.j, this.k, this.l, this.m);
        z<?>[] zVarArr = this.n;
        int length = objArr != null ? objArr.length : 0;
        if (length != zVarArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + zVarArr.length + ")");
        }
        for (int i = 0; i < length; i++) {
            zVarArr[i].a(atVar, objArr[i]);
        }
        return atVar.a();
    }

    R a(bf bfVar) throws IOException {
        return this.f4831f.a(bfVar);
    }

    static Set<String> a(String str) {
        Matcher matcher = f4826a.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    static Class<?> a(Class<?> cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }
}
