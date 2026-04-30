package com.behance.sdk.ui.animations;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.i.a.b.a.g;
import com.i.a.b.c.a;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKCustomFadeInBitmapDisplayer implements a {
    private final boolean animateFromDisk;
    private final boolean animateFromMemory;
    private final boolean animateFromNetwork;
    private final int durationMillis;

    public BehanceSDKCustomFadeInBitmapDisplayer(int i) {
        this(i, true, true, true);
    }

    public BehanceSDKCustomFadeInBitmapDisplayer(int i, boolean z, boolean z2, boolean z3) {
        this.durationMillis = i;
        this.animateFromNetwork = z;
        this.animateFromDisk = z2;
        this.animateFromMemory = z3;
    }

    @Override // com.i.a.b.c.a
    public void display(Bitmap bitmap, com.i.a.b.e.a aVar, g gVar) {
        if ((this.animateFromNetwork && gVar == g.NETWORK) || ((this.animateFromDisk && gVar == g.DISC_CACHE) || (this.animateFromMemory && gVar == g.MEMORY_CACHE))) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(15790320), new BitmapDrawable((Resources) null, bitmap)});
            transitionDrawable.setCrossFadeEnabled(true);
            aVar.a(transitionDrawable);
            transitionDrawable.startTransition(this.durationMillis);
            return;
        }
        aVar.a(bitmap);
    }
}
