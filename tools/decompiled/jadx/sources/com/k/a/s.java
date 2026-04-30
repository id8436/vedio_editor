package com.k.a;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes3.dex */
class s extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3564a;

    public s(Looper looper, r rVar) {
        super(looper);
        this.f3564a = rVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.f3564a.c((a) message.obj);
                break;
            case 2:
                this.f3564a.d((a) message.obj);
                break;
            case 3:
            case 8:
            default:
                ak.f3451a.post(new t(this, message));
                break;
            case 4:
                this.f3564a.e((d) message.obj);
                break;
            case 5:
                this.f3564a.d((d) message.obj);
                break;
            case 6:
                this.f3564a.a((d) message.obj, false);
                break;
            case 7:
                this.f3564a.a();
                break;
            case 9:
                this.f3564a.b((NetworkInfo) message.obj);
                break;
            case 10:
                this.f3564a.b(message.arg1 == 1);
                break;
            case 11:
                this.f3564a.a(message.obj);
                break;
            case 12:
                this.f3564a.b(message.obj);
                break;
        }
    }
}
