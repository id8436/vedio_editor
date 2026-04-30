package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes3.dex */
public class LogEvent implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    public final String tag;
    public final int versionCode;
    public final long zzayr;
    public final byte[] zzays;
    public final Bundle zzayt;

    LogEvent(int i, long j, String str, byte[] bArr, Bundle bundle) {
        this.versionCode = i;
        this.zzayr = j;
        this.tag = str;
        this.zzays = bArr;
        this.zzayt = bundle;
    }

    public LogEvent(long j, String str, byte[] bArr, String... strArr) {
        this.versionCode = 1;
        this.zzayr = j;
        this.tag = str;
        this.zzays = bArr;
        this.zzayt = zzd(strArr);
    }

    private static Bundle zzd(String... strArr) {
        Bundle bundle = null;
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("extras must have an even number of elements");
            }
            int length = strArr.length / 2;
            if (length != 0) {
                bundle = new Bundle(length);
                for (int i = 0; i < length; i++) {
                    bundle.putString(strArr[i * 2], strArr[(i * 2) + 1]);
                }
            }
        }
        return bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("tag=").append(this.tag).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        sb.append("eventTime=").append(this.zzayr).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        if (this.zzayt != null && !this.zzayt.isEmpty()) {
            sb.append("keyValues=");
            for (String str : this.zzayt.keySet()) {
                sb.append("(").append(str).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                sb.append(this.zzayt.getString(str)).append(")");
                sb.append(" ");
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
