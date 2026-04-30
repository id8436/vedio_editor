package g.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: compiled from: CalligraphyLayoutInflater.java */
/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
class i implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final LayoutInflater.Factory2 f4907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final d f4908b;

    public i(LayoutInflater.Factory2 factory2, d dVar) {
        this.f4907a = factory2;
        this.f4908b = dVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return this.f4908b.a(this.f4907a.onCreateView(str, context, attributeSet), context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f4908b.a(this.f4907a.onCreateView(view, str, context, attributeSet), context, attributeSet);
    }
}
