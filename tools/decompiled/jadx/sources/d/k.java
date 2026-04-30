package d;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: CertificatePinner.java */
/* JADX INFO: loaded from: classes3.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<l> f4651a = new ArrayList();

    public k a(String str, String... strArr) {
        if (str == null) {
            throw new NullPointerException("pattern == null");
        }
        for (String str2 : strArr) {
            this.f4651a.add(new l(str, str2));
        }
        return this;
    }

    public j a() {
        return new j(new LinkedHashSet(this.f4651a), null);
    }
}
