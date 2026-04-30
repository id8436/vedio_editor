package g.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: CalligraphyFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewGroup f4895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f4896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f4897c;

    e(d dVar, ViewGroup viewGroup, Context context) {
        this.f4897c = dVar;
        this.f4895a = viewGroup;
        this.f4896b = context;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    @TargetApi(16)
    public void onGlobalLayout() {
        int childCount = this.f4895a.getChildCount();
        if (childCount != 0) {
            for (int i = 0; i < childCount; i++) {
                this.f4897c.a(this.f4895a.getChildAt(i), this.f4896b, null);
            }
        }
        if (Build.VERSION.SDK_INT < 16) {
            this.f4895a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        } else {
            this.f4895a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }
}
