package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: compiled from: NativeMemoryChunkPool.java */
/* JADX INFO: loaded from: classes2.dex */
@ThreadSafe
public class s extends a<NativeMemoryChunk> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f2939g;

    public s(com.facebook.d.g.b bVar, ae aeVar, af afVar) {
        super(bVar, aeVar, afVar);
        SparseIntArray sparseIntArray = aeVar.f2904c;
        this.f2939g = new int[sparseIntArray.size()];
        for (int i = 0; i < this.f2939g.length; i++) {
            this.f2939g[i] = sparseIntArray.keyAt(i);
        }
        a();
    }

    public int d() {
        return this.f2939g[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public NativeMemoryChunk b(int i) {
        return new NativeMemoryChunk(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(NativeMemoryChunk nativeMemoryChunk) {
        com.facebook.d.d.k.a(nativeMemoryChunk);
        nativeMemoryChunk.close();
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
        for (int i2 : this.f2939g) {
            if (i2 >= i) {
                return i2;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int c(NativeMemoryChunk nativeMemoryChunk) {
        com.facebook.d.d.k.a(nativeMemoryChunk);
        return nativeMemoryChunk.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.a
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean d(NativeMemoryChunk nativeMemoryChunk) {
        com.facebook.d.d.k.a(nativeMemoryChunk);
        return !nativeMemoryChunk.a();
    }
}
