package com.a.a.a.e;

import com.a.a.a.s;
import java.util.Comparator;

/* JADX INFO: compiled from: SimpleInMemoryPriorityQueue.java */
/* JADX INFO: loaded from: classes.dex */
class b implements Comparator<s> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f461a;

    b(a aVar) {
        this.f461a = aVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(s sVar, s sVar2) {
        if (sVar.j().getId().equals(sVar2.j().getId())) {
            return 0;
        }
        int iA = a(sVar.b(), sVar2.b());
        if (iA == 0) {
            int i = -a(sVar.e(), sVar2.e());
            return i == 0 ? -a(sVar.c().longValue(), sVar2.c().longValue()) : i;
        }
        return iA;
    }

    private int a(int i, int i2) {
        if (i > i2) {
            return -1;
        }
        if (i2 > i) {
            return 1;
        }
        return 0;
    }

    private int a(long j, long j2) {
        if (j > j2) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        return 0;
    }
}
