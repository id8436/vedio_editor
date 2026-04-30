package com.k.a;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes3.dex */
class an extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReferenceQueue<Object> f3465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f3466b;

    an(ReferenceQueue<Object> referenceQueue, Handler handler) {
        this.f3465a = referenceQueue;
        this.f3466b = handler;
        setDaemon(true);
        setName("Picasso-refQueue");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b bVar = (b) this.f3465a.remove(1000L);
                Message messageObtainMessage = this.f3466b.obtainMessage();
                if (bVar != null) {
                    messageObtainMessage.what = 3;
                    messageObtainMessage.obj = bVar.f3501a;
                    this.f3466b.sendMessage(messageObtainMessage);
                } else {
                    messageObtainMessage.recycle();
                }
            } catch (InterruptedException e2) {
                return;
            } catch (Exception e3) {
                this.f3466b.post(new ao(this, e3));
                return;
            }
        }
    }
}
