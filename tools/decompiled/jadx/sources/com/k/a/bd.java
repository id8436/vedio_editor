package com.k.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;

/* JADX INFO: compiled from: ResourceRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class bd extends bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3513a;

    bd(Context context) {
        this.f3513a = context;
    }

    @Override // com.k.a.bb
    public boolean a(ax axVar) {
        if (axVar.f3491e != 0) {
            return true;
        }
        return "android.resource".equals(axVar.f3490d.getScheme());
    }

    @Override // com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        Resources resourcesA = bm.a(this.f3513a, axVar);
        return new bc(a(resourcesA, bm.a(resourcesA, axVar), axVar), aq.DISK);
    }

    private static Bitmap a(Resources resources, int i, ax axVar) {
        BitmapFactory.Options optionsC = c(axVar);
        if (a(optionsC)) {
            BitmapFactory.decodeResource(resources, i, optionsC);
            a(axVar.h, axVar.i, optionsC, axVar);
        }
        return BitmapFactory.decodeResource(resources, i, optionsC);
    }
}
