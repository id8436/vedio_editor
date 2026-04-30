package com.twitter.sdk.android.core.internal.scribe;

import java.util.Comparator;

/* JADX INFO: compiled from: EventsFilesManager.java */
/* JADX INFO: loaded from: classes3.dex */
class i implements Comparator<j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f4051a;

    i(h hVar) {
        this.f4051a = hVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(j jVar, j jVar2) {
        return (int) (jVar.f4053b - jVar2.f4053b);
    }
}
