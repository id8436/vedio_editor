package c.a.a.a.a.c.a;

/* JADX INFO: compiled from: ExponentialBackoff.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f203b;

    public c(long j, int i) {
        this.f202a = j;
        this.f203b = i;
    }

    @Override // c.a.a.a.a.c.a.a
    public long getDelayMillis(int i) {
        return (long) (this.f202a * Math.pow(this.f203b, i));
    }
}
