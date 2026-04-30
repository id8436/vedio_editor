package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: GenericByteArrayPool.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class r extends a<byte[]> implements j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f2938g;

    public r(com.facebook.d.g.b bVar, ae aeVar, af afVar) {
        super(bVar, aeVar, afVar);
        SparseIntArray sparseIntArray = aeVar.f2904c;
        this.f2938g = new int[sparseIntArray.size()];
        for (int i = 0; i < sparseIntArray.size(); i++) {
            this.f2938g[i] = sparseIntArray.keyAt(i);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public byte[] b(int i) {
        return new byte[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(byte[] bArr) {
        com.facebook.d.d.k.a(bArr);
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int d(int i) {
        return i;
    }

    @Override // com.facebook.imagepipeline.memory.a
    protected int c(int i) {
        if (i <= 0) {
            throw new c(Integer.valueOf(i));
        }
        for (int i2 : this.f2938g) {
            if (i2 >= i) {
                return i2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(byte[] bArr) {
        com.facebook.d.d.k.a(bArr);
        return bArr.length;
    }
}
