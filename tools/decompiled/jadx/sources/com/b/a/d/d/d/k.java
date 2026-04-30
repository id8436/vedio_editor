package com.b.a.d.d.d;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes2.dex */
class k implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f1065a;

    private k(g gVar) {
        this.f1065a = gVar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            this.f1065a.a((i) message.obj);
            return true;
        }
        if (message.what == 2) {
            com.b.a.h.a((i) message.obj);
        }
        return false;
    }
}
