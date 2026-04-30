package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DowngradeableSafeParcel implements SafeParcelable {
    private static final Object zzTd = new Object();
    private static ClassLoader zzTe = null;
    private static Integer zzTf = null;
    private boolean zzTg = false;

    private static boolean zza(Class<?> cls) {
        try {
            return SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (IllegalAccessException e2) {
            return false;
        } catch (NoSuchFieldException e3) {
            return false;
        }
    }

    protected static boolean zzbK(String str) {
        ClassLoader classLoaderZzlO = zzlO();
        if (classLoaderZzlO == null) {
            return true;
        }
        try {
            return zza(classLoaderZzlO.loadClass(str));
        } catch (Exception e2) {
            return false;
        }
    }

    protected static ClassLoader zzlO() {
        ClassLoader classLoader;
        synchronized (zzTd) {
            classLoader = zzTe;
        }
        return classLoader;
    }

    protected static Integer zzlP() {
        Integer num;
        synchronized (zzTd) {
            num = zzTf;
        }
        return num;
    }

    protected boolean zzlQ() {
        return this.zzTg;
    }
}
