package c.a.a.a.a.c.a;

/* JADX INFO: compiled from: RetryState.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f206c;

    public e(a aVar, d dVar) {
        this(0, aVar, dVar);
    }

    public e(int i, a aVar, d dVar) {
        this.f204a = i;
        this.f205b = aVar;
        this.f206c = dVar;
    }

    public long a() {
        return this.f205b.getDelayMillis(this.f204a);
    }

    public e b() {
        return new e(this.f204a + 1, this.f205b, this.f206c);
    }

    public e c() {
        return new e(this.f205b, this.f206c);
    }
}
