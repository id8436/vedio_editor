package d.a.c;

import d.an;
import d.bf;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealResponseBody.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f4274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.j f4276c;

    public j(@Nullable String str, long j, e.j jVar) {
        this.f4274a = str;
        this.f4275b = j;
        this.f4276c = jVar;
    }

    @Override // d.bf
    public an a() {
        if (this.f4274a != null) {
            return an.a(this.f4274a);
        }
        return null;
    }

    @Override // d.bf
    public long b() {
        return this.f4275b;
    }

    @Override // d.bf
    public e.j d() {
        return this.f4276c;
    }
}
