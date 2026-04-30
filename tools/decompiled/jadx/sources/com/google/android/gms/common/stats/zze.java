package com.google.android.gms.common.stats;

import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes3.dex */
public class zze {
    private final SimpleArrayMap<Long, Long> zzVA;
    private final long zzVy;
    private final int zzVz;

    public zze() {
        this.zzVy = DateUtils.MILLIS_PER_MINUTE;
        this.zzVz = 10;
        this.zzVA = new SimpleArrayMap<>(10);
    }

    public zze(int i, long j) {
        this.zzVy = j;
        this.zzVz = i;
        this.zzVA = new SimpleArrayMap<>();
    }

    private void zzc(long j, long j2) {
        for (int size = this.zzVA.size() - 1; size >= 0; size--) {
            if (j2 - this.zzVA.valueAt(size).longValue() > j) {
                this.zzVA.removeAt(size);
            }
        }
    }

    public boolean zzA(long j) {
        boolean z;
        synchronized (this) {
            z = this.zzVA.remove(Long.valueOf(j)) != null;
        }
        return z;
    }

    public Long zza(Long l) {
        Long lPut;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.zzVy;
        synchronized (this) {
            while (this.zzVA.size() >= this.zzVz) {
                zzc(j, jElapsedRealtime);
                j /= 2;
                Log.w("PassiveTimedConnectionMap", "The max capacity " + this.zzVz + " is not enough. Current durationThreshold is: " + j);
            }
            lPut = this.zzVA.put(l, Long.valueOf(jElapsedRealtime));
        }
        return lPut;
    }
}
