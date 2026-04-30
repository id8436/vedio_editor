package com.google.android.gms.internal;

import android.os.Binder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zzhc<T> {
    private T zzHW = null;
    protected final String zzra;
    protected final T zzrb;
    private static final Object zznu = new Object();
    private static zza zzRo = null;
    private static int zzRp = 0;

    interface zza {
        Long getLong(String str, Long l);

        String getString(String str, String str2);

        Boolean zzb(String str, Boolean bool);

        Float zzb(String str, Float f2);

        Integer zzb(String str, Integer num);
    }

    protected zzhc(String str, T t) {
        this.zzra = str;
        this.zzrb = t;
    }

    public static boolean isInitialized() {
        return zzRo != null;
    }

    public static zzhc<Float> zza(String str, Float f2) {
        return new zzhc<Float>(str, f2) { // from class: com.google.android.gms.internal.zzhc.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzhc
            /* JADX INFO: renamed from: zzbD, reason: merged with bridge method [inline-methods] */
            public Float zzbz(String str2) {
                return zzhc.zzRo.zzb(this.zzra, (Float) this.zzrb);
            }
        };
    }

    public static zzhc<Integer> zza(String str, Integer num) {
        return new zzhc<Integer>(str, num) { // from class: com.google.android.gms.internal.zzhc.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzhc
            /* JADX INFO: renamed from: zzbC, reason: merged with bridge method [inline-methods] */
            public Integer zzbz(String str2) {
                return zzhc.zzRo.zzb(this.zzra, (Integer) this.zzrb);
            }
        };
    }

    public static zzhc<Long> zza(String str, Long l) {
        return new zzhc<Long>(str, l) { // from class: com.google.android.gms.internal.zzhc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzhc
            /* JADX INFO: renamed from: zzbB, reason: merged with bridge method [inline-methods] */
            public Long zzbz(String str2) {
                return zzhc.zzRo.getLong(this.zzra, (Long) this.zzrb);
            }
        };
    }

    public static zzhc<Boolean> zzg(String str, boolean z) {
        return new zzhc<Boolean>(str, Boolean.valueOf(z)) { // from class: com.google.android.gms.internal.zzhc.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzhc
            /* JADX INFO: renamed from: zzbA, reason: merged with bridge method [inline-methods] */
            public Boolean zzbz(String str2) {
                return zzhc.zzRo.zzb(this.zzra, (Boolean) this.zzrb);
            }
        };
    }

    public static int zzlj() {
        return zzRp;
    }

    public static zzhc<String> zzr(String str, String str2) {
        return new zzhc<String>(str, str2) { // from class: com.google.android.gms.internal.zzhc.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzhc
            /* JADX INFO: renamed from: zzbE, reason: merged with bridge method [inline-methods] */
            public String zzbz(String str3) {
                return zzhc.zzRo.getString(this.zzra, (String) this.zzrb);
            }
        };
    }

    public final T get() {
        return this.zzHW != null ? this.zzHW : zzbz(this.zzra);
    }

    protected abstract T zzbz(String str);

    public final T zzlk() {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return get();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
