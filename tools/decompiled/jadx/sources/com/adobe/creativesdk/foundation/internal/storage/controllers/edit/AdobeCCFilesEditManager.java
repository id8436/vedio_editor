package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCFilesEditManager {
    static AdobeCCFilesEditSession _session;
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

    public static AdobeCCFilesEditSession createSession(FragmentManager fragmentManager, AdobeCCFilesEditOperation adobeCCFilesEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        _session = new AdobeCCFilesEditSession(fragmentManager, adobeCCFilesEditOperation, iAdobeEditAssetCallback, adobeCloud);
        return _session;
    }

    public static AdobeCCFilesEditSession createSession(String str, FragmentManager fragmentManager, AdobeCCFilesEditOperation adobeCCFilesEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        _session = new AdobeCCFilesEditSession(str, fragmentManager, adobeCCFilesEditOperation, iAdobeEditAssetCallback, adobeCloud);
        return _session;
    }

    public static AdobeCCFilesEditSession getLastSession() {
        return _session;
    }
}
