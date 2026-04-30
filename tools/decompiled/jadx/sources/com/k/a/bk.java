package com.k.a;

/* JADX INFO: compiled from: UrlConnectionDownloader.java */
/* JADX INFO: loaded from: classes3.dex */
final class bk extends ThreadLocal<StringBuilder> {
    bk() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // java.lang.ThreadLocal
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public StringBuilder initialValue() {
        return new StringBuilder();
    }
}
