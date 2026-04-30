package com.g.a;

import android.view.View;

/* JADX INFO: compiled from: PreHoneycombCompat.java */
/* JADX INFO: loaded from: classes2.dex */
final class v extends com.g.b.a<View> {
    v(String str) {
        super(str);
    }

    @Override // com.g.b.a
    public void a(View view, float f2) {
        com.g.c.a.a.a(view).e(f2);
    }

    @Override // com.g.b.c
    public Float a(View view) {
        return Float.valueOf(com.g.c.a.a.a(view).e());
    }
}
