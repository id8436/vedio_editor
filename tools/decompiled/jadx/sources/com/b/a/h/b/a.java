package com.b.a.h.b;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: BaseTarget.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<Z> implements k<Z> {
    private com.b.a.h.c request;

    @Override // com.b.a.h.b.k
    public void setRequest(com.b.a.h.c cVar) {
        this.request = cVar;
    }

    @Override // com.b.a.h.b.k
    public com.b.a.h.c getRequest() {
        return this.request;
    }

    @Override // com.b.a.h.b.k
    public void onLoadCleared(Drawable drawable) {
    }

    @Override // com.b.a.h.b.k
    public void onLoadStarted(Drawable drawable) {
    }

    @Override // com.b.a.h.b.k
    public void onLoadFailed(Exception exc, Drawable drawable) {
    }

    @Override // com.b.a.e.j
    public void onStart() {
    }

    @Override // com.b.a.e.j
    public void onStop() {
    }

    @Override // com.b.a.e.j
    public void onDestroy() {
    }
}
