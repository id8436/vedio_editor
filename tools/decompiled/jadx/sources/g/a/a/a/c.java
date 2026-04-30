package g.a.a.a;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

/* JADX INFO: compiled from: CalligraphyContextWrapper.java */
/* JADX INFO: loaded from: classes3.dex */
public class c extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f4892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4893b;

    public static ContextWrapper a(Context context) {
        return new c(context);
    }

    c(Context context) {
        super(context);
        this.f4893b = a.a().g();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return super.getSystemService(str);
        }
        if (this.f4892a == null) {
            this.f4892a = new f(LayoutInflater.from(getBaseContext()), this, this.f4893b, false);
        }
        return this.f4892a;
    }
}
