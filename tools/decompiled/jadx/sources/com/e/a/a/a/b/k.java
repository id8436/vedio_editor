package com.e.a.a.a.b;

import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: LeftRightEdgeEffectDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
class k extends c {
    public k(RecyclerView recyclerView) {
        super(recyclerView);
    }

    @Override // com.e.a.a.a.b.c
    protected int a(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }
}
