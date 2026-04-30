package com.b.a.d.b;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: EngineJob.java */
/* JADX INFO: loaded from: classes2.dex */
class o implements Handler.Callback {
    private o() {
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (1 == message.what || 2 == message.what) {
            l lVar = (l) message.obj;
            if (1 == message.what) {
                lVar.b();
            } else {
                lVar.c();
            }
            return true;
        }
        return false;
    }
}
