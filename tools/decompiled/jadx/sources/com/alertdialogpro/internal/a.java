package com.alertdialogpro.internal;

import android.os.Message;
import android.view.View;

/* JADX INFO: compiled from: AlertController.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AlertController f660a;

    a(AlertController alertController) {
        this.f660a = alertController;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Message messageObtain = null;
        if (view != this.f660a.o || this.f660a.q == null) {
            if (view != this.f660a.r || this.f660a.t == null) {
                if (view == this.f660a.u && this.f660a.w != null) {
                    messageObtain = Message.obtain(this.f660a.w);
                }
            } else {
                messageObtain = Message.obtain(this.f660a.t);
            }
        } else {
            messageObtain = Message.obtain(this.f660a.q);
        }
        if (messageObtain != null) {
            messageObtain.sendToTarget();
        }
        this.f660a.L.obtainMessage(1, this.f660a.f653c).sendToTarget();
    }
}
