package g.a.a.a;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: compiled from: CalligraphyLayoutInflater.java */
/* JADX INFO: loaded from: classes3.dex */
class h implements LayoutInflater.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LayoutInflater.Factory f4904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f4905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f4906c;

    public h(LayoutInflater.Factory factory, f fVar, d dVar) {
        this.f4904a = factory;
        this.f4905b = fVar;
        this.f4906c = dVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if (Build.VERSION.SDK_INT < 11) {
            return this.f4906c.a(this.f4905b.a(null, this.f4904a.onCreateView(str, context, attributeSet), str, context, attributeSet), context, attributeSet);
        }
        return this.f4906c.a(this.f4904a.onCreateView(str, context, attributeSet), context, attributeSet);
    }
}
