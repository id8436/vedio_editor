package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import com.adobe.creativesdk.foundation.internal.collaboration.AdobeCollaborationSession;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzu;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionResult implements SafeParcelable {
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;

    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;
    private final PendingIntent mPendingIntent;
    private final int zzOJ;
    final int zzzH;
    public static final ConnectionResult zzOI = new ConnectionResult(0, null);
    public static final ConnectionResultCreator CREATOR = new ConnectionResultCreator();

    ConnectionResult(int i, int i2, PendingIntent pendingIntent) {
        this.zzzH = i;
        this.zzOJ = i2;
        this.mPendingIntent = pendingIntent;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(1, i, pendingIntent);
    }

    private String zzkv() {
        switch (this.zzOJ) {
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            case 12:
            default:
                return "unknown status code " + this.zzOJ;
            case 13:
                return "CANCELED";
            case 14:
                return "TIMEOUT";
            case 15:
                return "INTERRUPTED";
            case 16:
                return "API_UNAVAILABLE";
            case 17:
                return "SIGN_IN_FAILED";
            case 18:
                return "SERVICE_UPDATING";
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.zzOJ == connectionResult.zzOJ && zzu.equal(this.mPendingIntent, connectionResult.mPendingIntent);
    }

    public int getErrorCode() {
        return this.zzOJ;
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    public boolean hasResolution() {
        return (this.zzOJ == 0 || this.mPendingIntent == null) ? false : true;
    }

    public int hashCode() {
        return zzu.hashCode(Integer.valueOf(this.zzOJ), this.mPendingIntent);
    }

    public boolean isSuccess() {
        return this.zzOJ == 0;
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
        ConnectionResultCreator.zza(this, parcel, i);
    }
}
