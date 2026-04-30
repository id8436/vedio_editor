package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzu;

/* JADX INFO: loaded from: classes2.dex */
public final class Status implements Result, SafeParcelable {
    private final PendingIntent mPendingIntent;
    private final int zzOJ;
    private final String zzQZ;
    private final int zzzH;
    public static final Status zzQU = new Status(0);
    public static final Status zzQV = new Status(14);
    public static final Status zzQW = new Status(8);
    public static final Status zzQX = new Status(15);
    public static final Status zzQY = new Status(16);
    public static final StatusCreator CREATOR = new StatusCreator();

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.zzzH = i;
        this.zzOJ = i2;
        this.zzQZ = str;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    private String zzkv() {
        return this.zzQZ != null ? this.zzQZ : CommonStatusCodes.getStatusCodeString(this.zzOJ);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.zzzH == status.zzzH && this.zzOJ == status.zzOJ && zzu.equal(this.zzQZ, status.zzQZ) && zzu.equal(this.mPendingIntent, status.mPendingIntent);
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.zzOJ;
    }

    public String getStatusMessage() {
        return this.zzQZ;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    public boolean hasResolution() {
        return this.mPendingIntent != null;
    }

    public int hashCode() {
        return zzu.hashCode(Integer.valueOf(this.zzzH), Integer.valueOf(this.zzOJ), this.zzQZ, this.mPendingIntent);
    }

    public boolean isCanceled() {
        return this.zzOJ == 16;
    }

    public boolean isInterrupted() {
        return this.zzOJ == 14;
    }

    public boolean isSuccess() {
        return this.zzOJ <= 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        return zzu.zzq(this).zzg(AdobeCollaborationSession.STATUS_CODE, zzkv()).zzg("resolution", this.mPendingIntent).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        StatusCreator.zza(this, parcel, i);
    }

    PendingIntent zzlf() {
        return this.mPendingIntent;
    }
}
