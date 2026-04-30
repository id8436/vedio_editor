package com.e.a.a.a.b;

import android.support.v7.widget.RecyclerView;

/* JADX INFO: compiled from: TopBottomEdgeEffectDecorator.java */
/* JADX INFO: loaded from: classes2.dex */
class u extends c {
    public u(RecyclerView recyclerView) {
        super(recyclerView);
    }

    @Override // com.e.a.a.a.b.c
    protected int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 3;
            default:
                throw new IllegalArgumentException();
        }
    }
}
