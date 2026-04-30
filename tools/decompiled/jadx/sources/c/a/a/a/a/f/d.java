package c.a.a.a.a.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import c.a.a.a.q;

/* JADX INFO: compiled from: PreferenceStoreImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f285c;

    public d(Context context, String str) {
        if (context == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.f285c = context;
        this.f284b = str;
        this.f283a = this.f285c.getSharedPreferences(this.f284b, 0);
    }

    @Deprecated
    public d(q qVar) {
        this(qVar.getContext(), qVar.getClass().getName());
    }

    @Override // c.a.a.a.a.f.c
    public SharedPreferences a() {
        return this.f283a;
    }

    @Override // c.a.a.a.a.f.c
    public SharedPreferences.Editor b() {
        return this.f283a.edit();
    }

    @Override // c.a.a.a.a.f.c
    @TargetApi(9)
    public boolean a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }
}
