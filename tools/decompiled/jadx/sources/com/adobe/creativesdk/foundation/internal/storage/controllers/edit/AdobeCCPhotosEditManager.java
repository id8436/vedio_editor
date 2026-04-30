package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.storage.AdobePhoto;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCPhotosEditManager {
    static AdobeCCPhotosEditSession _session;
    static boolean isEditInProgress;
    static double progressValue;
    static boolean editStarted = false;
    static boolean editCompletionHandled = true;

    public static void setProgressValue(double d2) {
        progressValue = d2;
    }

    public static double getProgressValue() {
        return progressValue;
    }

    public static void setEditInProgress(boolean z) {
        isEditInProgress = z;
    }

    public static boolean hasEditCompletionHandled() {
        return editCompletionHandled;
    }

    public static void setEditCompletionHandled(boolean z) {
        editCompletionHandled = z;
    }

    public static boolean isEditInProgress() {
        return isEditInProgress;
    }

    public static void setEditStarted(boolean z) {
        editStarted = z;
    }

    public static boolean hasEditStarted() {
        return editStarted;
    }

    public static AdobeCCPhotosEditSession createSession(AdobePhoto adobePhoto, FragmentManager fragmentManager, AdobePhotosEditOperation adobePhotosEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        _session = new AdobeCCPhotosEditSession(adobePhoto, fragmentManager, adobePhotosEditOperation, iAdobeEditAssetCallback, adobeCloud);
        return _session;
    }

    public static AdobeCCPhotosEditSession getLastSession() {
        return _session;
    }
}
