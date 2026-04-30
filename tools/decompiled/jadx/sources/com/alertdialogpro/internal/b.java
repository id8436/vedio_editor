package com.alertdialogpro.internal;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: AlertController.java */
/* JADX INFO: loaded from: classes2.dex */
final class b extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<DialogInterface> f661a;

    public b(DialogInterface dialogInterface) {
        this.f661a = new WeakReference<>(dialogInterface);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case -3:
            case -2:
            case -1:
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f661a.get(), message.what);
                break;
            case 1:
                ((DialogInterface) message.obj).dismiss();
                break;
        }
    }
}
