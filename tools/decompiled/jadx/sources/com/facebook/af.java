package com.facebook;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class af implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f1757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ap f1758b;

    af(ArrayList arrayList, ap apVar) {
        this.f1757a = arrayList;
        this.f1758b = apVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (Pair pair : this.f1757a) {
            ((ai) pair.first).a((as) pair.second);
        }
        Iterator<aq> it = this.f1758b.e().iterator();
        while (it.hasNext()) {
            it.next().a(this.f1758b);
        }
    }
}
