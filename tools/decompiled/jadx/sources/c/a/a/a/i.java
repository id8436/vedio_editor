package c.a.a.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import c.a.a.a.a.b.z;
import c.a.a.a.a.c.w;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: Fabric.java */
/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q[] f381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private w f382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f383d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f385f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f386g;
    private String h;
    private l<f> i;

    public i(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.f380a = context.getApplicationContext();
    }

    public i a(q... qVarArr) {
        if (this.f381b != null) {
            throw new IllegalStateException("Kits already set.");
        }
        this.f381b = qVarArr;
        return this;
    }

    public f a() {
        Map mapB;
        if (this.f382c == null) {
            this.f382c = w.a();
        }
        if (this.f383d == null) {
            this.f383d = new Handler(Looper.getMainLooper());
        }
        if (this.f384e == null) {
            if (this.f385f) {
                this.f384e = new e(3);
            } else {
                this.f384e = new e();
            }
        }
        if (this.h == null) {
            this.h = this.f380a.getPackageName();
        }
        if (this.i == null) {
            this.i = l.f390d;
        }
        if (this.f381b != null) {
            mapB = f.b((Collection<? extends q>) Arrays.asList(this.f381b));
        } else {
            mapB = new HashMap();
        }
        return new f(this.f380a, mapB, this.f382c, this.f383d, this.f384e, this.f385f, this.i, new z(this.f380a, this.h, this.f386g, mapB.values()));
    }
}
