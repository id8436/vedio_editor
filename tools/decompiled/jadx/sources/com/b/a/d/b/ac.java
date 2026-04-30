package com.b.a.d.b;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: ResourceRecycler.java */
/* JADX INFO: loaded from: classes2.dex */
class ac implements Handler.Callback {
    private ac() {
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        ((z) message.obj).d();
        return true;
    }
}
