package com.k.a;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes3.dex */
final class e extends ThreadLocal<StringBuilder> {
    e() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public StringBuilder initialValue() {
        return new StringBuilder("Picasso-");
    }
}
