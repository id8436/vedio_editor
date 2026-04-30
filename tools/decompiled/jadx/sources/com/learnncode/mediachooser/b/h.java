package com.learnncode.mediachooser.b;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: MediaAsync.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends Handler {
    private h() {
    }

    /* synthetic */ h(c cVar) {
        this();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        g gVar = (g) message.obj;
        switch (message.what) {
            case 1:
                gVar.f3692a.e(gVar.f3693b[0]);
                break;
            case 2:
                gVar.f3692a.b((Object[]) gVar.f3693b);
                break;
        }
    }
}
