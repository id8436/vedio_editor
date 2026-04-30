package com.k.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: Stats.java */
/* JADX INFO: loaded from: classes3.dex */
class bf extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final be f3521a;

    public bf(Looper looper, be beVar) {
        super(looper);
        this.f3521a = beVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.f3521a.c();
                break;
            case 1:
                this.f3521a.d();
                break;
            case 2:
                this.f3521a.b(message.arg1);
                break;
            case 3:
                this.f3521a.c(message.arg1);
                break;
            case 4:
                this.f3521a.a((Long) message.obj);
                break;
            default:
                ak.f3451a.post(new bg(this, message));
                break;
        }
    }
}
