package f;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Retrofit.java */
/* JADX INFO: loaded from: classes.dex */
public final class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ap f4819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private d.h f4820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.ai f4821c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<l> f4822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<i> f4823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Executor f4824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4825g;

    ay(ap apVar) {
        this.f4822d = new ArrayList();
        this.f4823e = new ArrayList();
        this.f4819a = apVar;
        this.f4822d.add(new a());
    }

    public ay() {
        this(ap.a());
    }

    public ay a(d.ar arVar) {
        return a((d.h) bb.a(arVar, "client == null"));
    }

    public ay a(d.h hVar) {
        this.f4820b = (d.h) bb.a(hVar, "factory == null");
        return this;
    }

    public ay a(String str) {
        bb.a(str, "baseUrl == null");
        d.ai aiVarE = d.ai.e(str);
        if (aiVarE == null) {
            throw new IllegalArgumentException("Illegal URL: " + str);
        }
        return a(aiVarE);
    }

    public ay a(d.ai aiVar) {
        bb.a(aiVar, "baseUrl == null");
        if (!"".equals(aiVar.j().get(r0.size() - 1))) {
            throw new IllegalArgumentException("baseUrl must end in /: " + aiVar);
        }
        this.f4821c = aiVar;
        return this;
    }

    public ay a(l lVar) {
        this.f4822d.add((l) bb.a(lVar, "factory == null"));
        return this;
    }

    public aw a() {
        if (this.f4821c == null) {
            throw new IllegalStateException("Base URL required.");
        }
        d.h arVar = this.f4820b;
        if (arVar == null) {
            arVar = new d.ar();
        }
        Executor executorB = this.f4824f;
        if (executorB == null) {
            executorB = this.f4819a.b();
        }
        ArrayList arrayList = new ArrayList(this.f4823e);
        arrayList.add(this.f4819a.a(executorB));
        return new aw(arVar, this.f4821c, new ArrayList(this.f4822d), arrayList, executorB, this.f4825g);
    }
}
