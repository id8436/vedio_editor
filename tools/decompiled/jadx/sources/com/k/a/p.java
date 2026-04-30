package com.k.a;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentStreamRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class p extends bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f3553a;

    p(Context context) {
        this.f3553a = context;
    }

    @Override // com.k.a.bb
    public boolean a(ax axVar) {
        return "content".equals(axVar.f3490d.getScheme());
    }

    @Override // com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        return new bc(b(axVar), aq.DISK);
    }

    InputStream b(ax axVar) throws FileNotFoundException {
        return this.f3553a.getContentResolver().openInputStream(axVar.f3490d);
    }
}
