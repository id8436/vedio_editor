package com.adobe.creativesdk.foundation.internal.storage.controllers.libraryedit;

import android.support.v4.app.FragmentManager;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignLibraryEditManager {
    static AdobeDesignLibraryEditSession _session;
    static boolean isEditInProgress;
    static double progressValue;
    static boolean editStarted = false;
    static boolean editCompletionHandled = true;
    static boolean updateCollectionDueToItemEdit = false;

    public static boolean isUpdateCollectionDueToItemEdit() {
        return updateCollectionDueToItemEdit;
    }

    public static void setUpdateCollectionDueToItemEdit(boolean z) {
        updateCollectionDueToItemEdit = z;
    }

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

    public static AdobeDesignLibraryEditSession createSession(FragmentManager fragmentManager, AdobeDesignLibraryEditOperation adobeDesignLibraryEditOperation, IAdobeEditLibraryCallback iAdobeEditLibraryCallback) {
        _session = new AdobeDesignLibraryEditSession(fragmentManager, adobeDesignLibraryEditOperation, iAdobeEditLibraryCallback);
        return _session;
    }

    public static AdobeDesignLibraryEditSession createSession(String str, FragmentManager fragmentManager, AdobeDesignLibraryEditOperation adobeDesignLibraryEditOperation, IAdobeEditLibraryCallback iAdobeEditLibraryCallback) {
        _session = new AdobeDesignLibraryEditSession(str, fragmentManager, adobeDesignLibraryEditOperation, iAdobeEditLibraryCallback);
        return _session;
    }

    public static AdobeDesignLibraryEditSession getLastSession() {
        return _session;
    }
}
