package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzu;
import com.google.android.gms.common.internal.zzv;

/* JADX INFO: loaded from: classes.dex */
public class PlayLoggerContext implements SafeParcelable {
    public static final zze CREATOR = new zze();
    public final String packageName;
    public final int versionCode;
    public final int zzayB;
    public final int zzayC;
    public final String zzayD;
    public final String zzayE;
    public final boolean zzayF;
    public final String zzayG;
    public final boolean zzayH;

    public PlayLoggerContext(int i, String str, int i2, int i3, String str2, String str3, boolean z, String str4, boolean z2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzayB = i2;
        this.zzayC = i3;
        this.zzayD = str2;
        this.zzayE = str3;
        this.zzayF = z;
        this.zzayG = str4;
        this.zzayH = z2;
    }

    @Deprecated
    public PlayLoggerContext(String str, int i, int i2, String str2, String str3, boolean z) {
        this.versionCode = 1;
        this.packageName = (String) zzv.zzr(str);
        this.zzayB = i;
        this.zzayC = i2;
        this.zzayG = null;
        this.zzayD = str2;
        this.zzayE = str3;
        this.zzayF = z;
        this.zzayH = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayLoggerContext)) {
            return false;
        }
        PlayLoggerContext playLoggerContext = (PlayLoggerContext) obj;
        return this.packageName.equals(playLoggerContext.packageName) && this.zzayB == playLoggerContext.zzayB && this.zzayC == playLoggerContext.zzayC && zzu.equal(this.zzayG, playLoggerContext.zzayG) && zzu.equal(this.zzayD, playLoggerContext.zzayD) && zzu.equal(this.zzayE, playLoggerContext.zzayE) && this.zzayF == playLoggerContext.zzayF && this.zzayH == playLoggerContext.zzayH;
    }

    public int hashCode() {
        return zzu.hashCode(this.packageName, Integer.valueOf(this.zzayB), Integer.valueOf(this.zzayC), this.zzayG, this.zzayD, this.zzayE, Boolean.valueOf(this.zzayF), Boolean.valueOf(this.zzayH));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PlayLoggerContext[");
        sb.append("package=").append(this.packageName).append(',');
        sb.append("versionCode=").append(this.versionCode).append(',');
        sb.append("logSource=").append(this.zzayC).append(',');
        sb.append("logSourceName=").append(this.zzayG).append(',');
        sb.append("uploadAccount=").append(this.zzayD).append(',');
        sb.append("loggingId=").append(this.zzayE).append(',');
        sb.append("logAndroidId=").append(this.zzayF).append(',');
        sb.append("isAnonymous=").append(this.zzayH);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
