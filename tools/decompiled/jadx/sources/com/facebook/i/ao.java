package com.facebook.i;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: compiled from: PlatformServiceClient.java */
/* JADX INFO: loaded from: classes2.dex */
class ao extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2302a;

    ao(an anVar) {
        this.f2302a = anVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f2302a.a(message);
    }
}
