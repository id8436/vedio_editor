package d;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: CertificatePinner.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f4648a = new k().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<l> f4649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final d.a.i.c f4650c;

    j(Set<l> set, @Nullable d.a.i.c cVar) {
        this.f4649b = set;
        this.f4650c = cVar;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof j) && d.a.c.a(this.f4650c, ((j) obj).f4650c) && this.f4649b.equals(((j) obj).f4649b);
    }

    public int hashCode() {
        return ((this.f4650c != null ? this.f4650c.hashCode() : 0) * 31) + this.f4649b.hashCode();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<l> listA = a(str);
        if (!listA.isEmpty()) {
            if (this.f4650c != null) {
                list = this.f4650c.a(list, str);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i);
                int size2 = listA.size();
                int i2 = 0;
                e.k kVarB = null;
                e.k kVarA = null;
                while (i2 < size2) {
                    l lVar = listA.get(i2);
                    if (lVar.f4654c.equals("sha256/")) {
                        if (kVarB == null) {
                            kVarB = b(x509Certificate);
                        }
                        if (lVar.f4655d.equals(kVarB)) {
                            return;
                        }
                    } else if (lVar.f4654c.equals("sha1/")) {
                        if (kVarA == null) {
                            kVarA = a(x509Certificate);
                        }
                        if (lVar.f4655d.equals(kVarA)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + lVar.f4654c);
                    }
                    i2++;
                    kVarA = kVarA;
                    kVarB = kVarB;
                }
            }
            StringBuilder sbAppend = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
                sbAppend.append("\n    ").append(a((Certificate) x509Certificate2)).append(": ").append(x509Certificate2.getSubjectDN().getName());
            }
            sbAppend.append("\n  Pinned certificates for ").append(str).append(":");
            int size4 = listA.size();
            for (int i4 = 0; i4 < size4; i4++) {
                sbAppend.append("\n    ").append(listA.get(i4));
            }
            throw new SSLPeerUnverifiedException(sbAppend.toString());
        }
    }

    List<l> a(String str) {
        List<l> listEmptyList = Collections.emptyList();
        for (l lVar : this.f4649b) {
            if (lVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(lVar);
            }
        }
        return listEmptyList;
    }

    j a(@Nullable d.a.i.c cVar) {
        return d.a.c.a(this.f4650c, cVar) ? this : new j(this.f4649b, cVar);
    }

    public static String a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + b((X509Certificate) certificate).b();
    }

    static e.k a(X509Certificate x509Certificate) {
        return e.k.a(x509Certificate.getPublicKey().getEncoded()).c();
    }

    static e.k b(X509Certificate x509Certificate) {
        return e.k.a(x509Certificate.getPublicKey().getEncoded()).d();
    }
}
