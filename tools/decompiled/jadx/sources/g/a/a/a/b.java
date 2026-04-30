package g.a.a.a;

import android.os.Build;
import android.widget.TextView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: CalligraphyConfig.java */
/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<Class<? extends TextView>, Integer> f4891f;

    public b() {
        this.f4886a = Build.VERSION.SDK_INT >= 11;
        this.f4887b = true;
        this.f4888c = n.fontPath;
        this.f4889d = false;
        this.f4890e = null;
        this.f4891f = new HashMap();
    }
}
