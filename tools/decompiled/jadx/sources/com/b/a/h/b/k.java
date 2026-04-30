package com.b.a.h.b;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: Target.java */
/* JADX INFO: loaded from: classes2.dex */
public interface k<R> extends com.b.a.e.j {
    com.b.a.h.c getRequest();

    void getSize(h hVar);

    void onLoadCleared(Drawable drawable);

    void onLoadFailed(Exception exc, Drawable drawable);

    void onLoadStarted(Drawable drawable);

    void onResourceReady(R r, com.b.a.h.a.d<? super R> dVar);

    void setRequest(com.b.a.h.c cVar);
}
