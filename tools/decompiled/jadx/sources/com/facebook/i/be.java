package com.facebook.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
class be implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ba f2339a;

    be(ba baVar) {
        this.f2339a = baVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!view.hasFocus()) {
            view.requestFocus();
            return false;
        }
        return false;
    }
}
