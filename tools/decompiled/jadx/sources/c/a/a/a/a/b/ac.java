package c.a.a.a.a.b;

import android.content.Context;

/* JADX INFO: compiled from: InstallerPackageNameProvider.java */
/* JADX INFO: loaded from: classes.dex */
class ac implements c.a.a.a.a.a.d<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f127a;

    ac(ab abVar) {
        this.f127a = abVar;
    }

    @Override // c.a.a.a.a.a.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String load(Context context) throws Exception {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }
}
