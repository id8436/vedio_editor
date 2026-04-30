package c.a.a.a.a.b;

import android.content.Context;

/* JADX INFO: compiled from: InstallerPackageNameProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.a.a.a.d<String> f125a = new ac(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.a.a.a.b<String> f126b = new c.a.a.a.a.a.b<>();

    public String a(Context context) {
        try {
            String strA = this.f126b.a(context, this.f125a);
            if ("".equals(strA)) {
                return null;
            }
            return strA;
        } catch (Exception e2) {
            c.a.a.a.f.h().e("Fabric", "Failed to determine installer package name", e2);
            return null;
        }
    }
}
