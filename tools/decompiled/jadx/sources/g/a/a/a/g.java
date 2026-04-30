package g.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: compiled from: CalligraphyLayoutInflater.java */
/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
class g extends i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f4903c;

    public g(LayoutInflater.Factory2 factory2, f fVar, d dVar) {
        super(factory2, dVar);
        this.f4903c = fVar;
    }

    @Override // g.a.a.a.i, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f4908b.a(this.f4903c.a(view, this.f4907a.onCreateView(view, str, context, attributeSet), str, context, attributeSet), context, attributeSet);
    }
}
