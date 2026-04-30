package com.i.a.b.f;

import android.graphics.Bitmap;
import android.view.View;

/* JADX INFO: compiled from: ImageLoadingListener.java */
/* JADX INFO: loaded from: classes3.dex */
public interface a {
    void onLoadingCancelled(String str, View view);

    void onLoadingComplete(String str, View view, Bitmap bitmap);

    void onLoadingFailed(String str, View view, com.i.a.b.a.b bVar);

    void onLoadingStarted(String str, View view);
}
