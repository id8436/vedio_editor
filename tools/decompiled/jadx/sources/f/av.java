package f;

import d.bf;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public final class av<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.bd f4806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final T f4807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final bf f4808c;

    public static <T> av<T> a(@Nullable T t, d.bd bdVar) {
        bb.a(bdVar, "rawResponse == null");
        if (!bdVar.c()) {
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        return new av<>(bdVar, t, null);
    }

    public static <T> av<T> a(bf bfVar, d.bd bdVar) {
        bb.a(bfVar, "body == null");
        bb.a(bdVar, "rawResponse == null");
        if (bdVar.c()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new av<>(bdVar, null, bfVar);
    }

    private av(d.bd bdVar, @Nullable T t, @Nullable bf bfVar) {
        this.f4806a = bdVar;
        this.f4807b = t;
        this.f4808c = bfVar;
    }

    public int a() {
        return this.f4806a.b();
    }

    public d.ag b() {
        return this.f4806a.e();
    }

    public boolean c() {
        return this.f4806a.c();
    }

    @Nullable
    public T d() {
        return this.f4807b;
    }

    @Nullable
    public bf e() {
        return this.f4808c;
    }

    public String toString() {
        return this.f4806a.toString();
    }
}
