package c.a.a.a;

import android.app.Application;
import android.content.Context;
import android.os.Build;

/* JADX INFO: compiled from: ActivityLifecycleManager.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f115b;

    public a(Context context) {
        this.f114a = (Application) context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            this.f115b = new b(this.f114a);
        }
    }

    public boolean a(d dVar) {
        return this.f115b != null && this.f115b.a(dVar);
    }

    public void a() {
        if (this.f115b == null) {
            return;
        }
        this.f115b.a();
    }
}
