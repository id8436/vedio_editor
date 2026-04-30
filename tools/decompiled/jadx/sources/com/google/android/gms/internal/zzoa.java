package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class zzoa {
    final int tag;
    final byte[] zzaNU;

    zzoa(int i, byte[] bArr) {
        this.tag = i;
        this.zzaNU = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzoa)) {
            return false;
        }
        zzoa zzoaVar = (zzoa) obj;
        return this.tag == zzoaVar.tag && Arrays.equals(this.zzaNU, zzoaVar.zzaNU);
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzaNU);
    }

    void zza(zznr zznrVar) throws IOException {
        zznrVar.zzjy(this.tag);
        zznrVar.zzz(this.zzaNU);
    }

    int zzc() {
        return 0 + zznr.zzjz(this.tag) + this.zzaNU.length;
    }
}
