package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectionEvent implements SafeParcelable {
    public static final Parcelable.Creator<ConnectionEvent> CREATOR = new zza();
    private final long zzUR;
    private String zzUS;
    private final String zzUT;
    private final String zzUU;
    private final String zzUV;
    private final String zzUW;
    private final String zzUX;
    private final long zzUY;
    private final long zzUZ;
    private final long zzVa;
    private long zzVb;
    final int zzzH;

    ConnectionEvent(int i, long j, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3, long j4) {
        this.zzzH = i;
        this.zzUR = j;
        this.zzUS = str;
        this.zzUT = str2;
        this.zzUU = str3;
        this.zzUV = str4;
        this.zzUW = str5;
        this.zzVb = -1L;
        this.zzUX = str6;
        this.zzUY = j2;
        this.zzUZ = j3;
        this.zzVa = j4;
    }

    public ConnectionEvent(long j, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3, long j4) {
        this(1, j, str, str2, str3, str4, str5, str6, j2, j3, j4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getTimeMillis() {
        return this.zzUR;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzmS() {
        return this.zzUS;
    }

    public String zzmT() {
        return this.zzUT;
    }

    public String zzmU() {
        return this.zzUU;
    }

    public String zzmV() {
        return this.zzUV;
    }

    public String zzmW() {
        return this.zzUW;
    }

    public String zzmX() {
        return this.zzUX;
    }

    public long zzmY() {
        return this.zzUY;
    }

    public long zzmZ() {
        return this.zzVa;
    }

    public long zzna() {
        return this.zzUZ;
    }
}
