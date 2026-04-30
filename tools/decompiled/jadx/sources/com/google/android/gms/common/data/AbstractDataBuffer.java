package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {
    protected final DataHolder zzPy;

    protected AbstractDataBuffer(DataHolder dataHolder) {
        this.zzPy = dataHolder;
        if (this.zzPy != null) {
            this.zzPy.zzm(this);
        }
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public final void close() {
        release();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public abstract T get(int i);

    @Override // com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        if (this.zzPy == null) {
            return 0;
        }
        return this.zzPy.getCount();
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    @Deprecated
    public boolean isClosed() {
        return this.zzPy == null || this.zzPy.isClosed();
    }

    @Override // com.google.android.gms.common.data.DataBuffer, java.lang.Iterable
    public Iterator<T> iterator() {
        return new zzb(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer, com.google.android.gms.common.api.Releasable
    public void release() {
        if (this.zzPy != null) {
            this.zzPy.close();
        }
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Iterator<T> singleRefIterator() {
        return new zzg(this);
    }

    @Override // com.google.android.gms.common.data.DataBuffer
    public Bundle zzlm() {
        return this.zzPy.zzlm();
    }
}
