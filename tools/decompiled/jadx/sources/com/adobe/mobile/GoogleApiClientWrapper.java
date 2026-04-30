package com.adobe.mobile;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class GoogleApiClientWrapper {
    GoogleApiClientWrapper() {
    }

    protected static void disconnect(GoogleApiClient googleApiClient) {
        try {
            GoogleApiClient.class.getDeclaredMethod("disconnect", new Class[0]).invoke(googleApiClient, new Object[0]);
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Wearable - Unable to call GoogleApiClient.disconnect() method (%s)", e2.getLocalizedMessage());
        }
    }

    protected static void connect(GoogleApiClient googleApiClient) {
        try {
            GoogleApiClient.class.getDeclaredMethod("connect", new Class[0]).invoke(googleApiClient, new Object[0]);
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Wearable - Unable to call GoogleApiClient.connect() method (%s)", e2.getLocalizedMessage());
        }
    }

    protected static Boolean isConnected(GoogleApiClient googleApiClient) {
        try {
            Object objInvoke = GoogleApiClient.class.getDeclaredMethod("isConnected", new Class[0]).invoke(googleApiClient, new Object[0]);
            return Boolean.valueOf(objInvoke instanceof Boolean ? ((Boolean) objInvoke).booleanValue() : false);
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Wearable - Unable to call GoogleApiClient.isConnected() method (%s)", e2.getLocalizedMessage());
            return false;
        }
    }

    protected static ConnectionResult blockingConnect(GoogleApiClient googleApiClient, long j, TimeUnit timeUnit) {
        try {
            Object objInvoke = GoogleApiClient.class.getDeclaredMethod("blockingConnect", Long.TYPE, TimeUnit.class).invoke(googleApiClient, Long.valueOf(j), timeUnit);
            if (objInvoke instanceof ConnectionResult) {
                return (ConnectionResult) objInvoke;
            }
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Wearable - Unable to call GoogleApiClient.blockingConnect() method (%s)", e2.getLocalizedMessage());
        }
        return null;
    }

    protected static Result await(PendingResult pendingResult) {
        try {
            Object objInvoke = PendingResult.class.getDeclaredMethod("await", new Class[0]).invoke(pendingResult, new Object[0]);
            if (objInvoke instanceof Result) {
                return (Result) objInvoke;
            }
        } catch (Exception e2) {
            StaticMethods.logDebugFormat("Wearable - Unable to call PendingResult.await() method (%s)", e2.getLocalizedMessage());
        }
        return null;
    }
}
