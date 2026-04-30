package f;

import d.bf;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes3.dex */
final class y extends bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.an f4877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4878b;

    y(d.an anVar, long j) {
        this.f4877a = anVar;
        this.f4878b = j;
    }

    @Override // d.bf
    public d.an a() {
        return this.f4877a;
    }

    @Override // d.bf
    public long b() {
        return this.f4878b;
    }

    @Override // d.bf
    public e.j d() {
        throw new IllegalStateException("Cannot read raw response body of a converted body.");
    }
}
