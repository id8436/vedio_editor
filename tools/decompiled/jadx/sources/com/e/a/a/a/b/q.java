package com.e.a.a.a.b;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;

/* JADX INFO: compiled from: RecyclerViewDragDropManager.java */
/* JADX INFO: loaded from: classes2.dex */
class q extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f1619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MotionEvent f1620b;

    public q(l lVar) {
        this.f1619a = lVar;
    }

    public void a() {
        removeCallbacks(null);
        this.f1619a = null;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.f1619a.a(this.f1620b);
                break;
        }
    }

    public void a(MotionEvent motionEvent, int i) {
        b();
        this.f1620b = MotionEvent.obtain(motionEvent);
        sendEmptyMessageAtTime(1, motionEvent.getDownTime() + ((long) i));
    }

    public void b() {
        removeMessages(1);
        if (this.f1620b != null) {
            this.f1620b.recycle();
            this.f1620b = null;
        }
    }
}
