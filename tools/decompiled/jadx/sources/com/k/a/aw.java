package com.k.a;

import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: PicassoExecutorService.java */
/* JADX INFO: loaded from: classes3.dex */
final class aw extends FutureTask<d> implements Comparable<aw> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f3486a;

    public aw(d dVar) {
        super(dVar, null);
        this.f3486a = dVar;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(aw awVar) {
        ar arVarN = this.f3486a.n();
        ar arVarN2 = awVar.f3486a.n();
        return arVarN == arVarN2 ? this.f3486a.f3538a - awVar.f3486a.f3538a : arVarN2.ordinal() - arVarN.ordinal();
    }
}
