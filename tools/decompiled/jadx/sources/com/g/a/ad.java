package com.g.a;

import java.util.ArrayList;

/* JADX INFO: compiled from: ValueAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
final class ad extends ThreadLocal<ArrayList<ac>> {
    ad() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ArrayList<ac> initialValue() {
        return new ArrayList<>();
    }
}
