package c.a.a.a.a.b;

/* JADX INFO: compiled from: AdvertisingInfo.java */
/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f150b;

    b(String str, boolean z) {
        this.f149a = str;
        this.f150b = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f150b != bVar.f150b) {
            return false;
        }
        if (this.f149a != null) {
            if (this.f149a.equals(bVar.f149a)) {
                return true;
            }
        } else if (bVar.f149a == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f149a != null ? this.f149a.hashCode() : 0) * 31) + (this.f150b ? 1 : 0);
    }
}
