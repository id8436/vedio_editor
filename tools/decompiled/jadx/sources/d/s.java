package d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: ConnectionSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    String[] f4679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    String[] f4680c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f4681d;

    s(boolean z) {
        this.f4678a = z;
    }

    public s(r rVar) {
        this.f4678a = rVar.f4674d;
        this.f4679b = rVar.f4676f;
        this.f4680c = rVar.f4677g;
        this.f4681d = rVar.f4675e;
    }

    public s a(m... mVarArr) {
        if (!this.f4678a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        String[] strArr = new String[mVarArr.length];
        for (int i = 0; i < mVarArr.length; i++) {
            strArr[i] = mVarArr[i].bj;
        }
        return a(strArr);
    }

    public s a(String... strArr) {
        if (!this.f4678a) {
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        this.f4679b = (String[]) strArr.clone();
        return this;
    }

    public s a(bj... bjVarArr) {
        if (!this.f4678a) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        String[] strArr = new String[bjVarArr.length];
        for (int i = 0; i < bjVarArr.length; i++) {
            strArr[i] = bjVarArr[i].f4631f;
        }
        return b(strArr);
    }

    public s b(String... strArr) {
        if (!this.f4678a) {
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        this.f4680c = (String[]) strArr.clone();
        return this;
    }

    public s a(boolean z) {
        if (!this.f4678a) {
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
        this.f4681d = z;
        return this;
    }

    public r a() {
        return new r(this);
    }
}
