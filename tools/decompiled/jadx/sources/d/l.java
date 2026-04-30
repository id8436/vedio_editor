package d;

/* JADX INFO: compiled from: CertificatePinner.java */
/* JADX INFO: loaded from: classes3.dex */
final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f4654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final e.k f4655d;

    l(String str, String str2) {
        String strF;
        this.f4652a = str;
        if (str.startsWith("*.")) {
            strF = ai.e("http://" + str.substring("*.".length())).f();
        } else {
            strF = ai.e("http://" + str).f();
        }
        this.f4653b = strF;
        if (str2.startsWith("sha1/")) {
            this.f4654c = "sha1/";
            this.f4655d = e.k.b(str2.substring("sha1/".length()));
        } else if (str2.startsWith("sha256/")) {
            this.f4654c = "sha256/";
            this.f4655d = e.k.b(str2.substring("sha256/".length()));
        } else {
            throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
        }
        if (this.f4655d == null) {
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }
    }

    boolean a(String str) {
        if (!this.f4652a.startsWith("*.")) {
            return str.equals(this.f4653b);
        }
        int iIndexOf = str.indexOf(46);
        return (str.length() - iIndexOf) + (-1) == this.f4653b.length() && str.regionMatches(false, iIndexOf + 1, this.f4653b, 0, this.f4653b.length());
    }

    public boolean equals(Object obj) {
        return (obj instanceof l) && this.f4652a.equals(((l) obj).f4652a) && this.f4654c.equals(((l) obj).f4654c) && this.f4655d.equals(((l) obj).f4655d);
    }

    public int hashCode() {
        return ((((this.f4652a.hashCode() + 527) * 31) + this.f4654c.hashCode()) * 31) + this.f4655d.hashCode();
    }

    public String toString() {
        return this.f4654c + this.f4655d.b();
    }
}
