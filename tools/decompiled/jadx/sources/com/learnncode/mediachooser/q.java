package com.learnncode.mediachooser;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: VideoControllerView.java */
/* JADX INFO: loaded from: classes3.dex */
class q extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<m> f3767a;

    q(m mVar) {
        this.f3767a = new WeakReference<>(mVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        m mVar = this.f3767a.get();
        if (mVar != null && mVar.f3760c != null) {
            switch (message.what) {
                case 1:
                    mVar.c();
                    break;
                case 2:
                    int iG = mVar.g();
                    if (!mVar.j && mVar.i && mVar.f3760c.e()) {
                        sendMessageDelayed(obtainMessage(2), 1000 - (iG % 1000));
                        break;
                    }
                    break;
            }
        }
    }
}
