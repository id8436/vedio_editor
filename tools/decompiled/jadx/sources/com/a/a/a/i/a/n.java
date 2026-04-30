package com.a.a.a.i.a;

import android.support.v4.util.LruCache;

/* JADX INFO: compiled from: WhereQueryCache.java */
/* JADX INFO: loaded from: classes.dex */
class n extends LruCache<Long, l> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f577a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    n(m mVar, int i) {
        super(i);
        this.f577a = mVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.util.LruCache
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void entryRemoved(boolean z, Long l, l lVar, l lVar2) {
        lVar.a();
    }
}
