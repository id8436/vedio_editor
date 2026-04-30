package com.k.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes3.dex */
final class bn extends Handler {
    bn(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        sendMessageDelayed(obtainMessage(), 1000L);
    }
}
