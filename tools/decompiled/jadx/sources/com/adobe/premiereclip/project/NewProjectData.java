package com.adobe.premiereclip.project;

import android.content.Intent;
import com.adobe.premiereclip.media.AddMediaManager;

/* JADX INFO: loaded from: classes2.dex */
public class NewProjectData {
    private static NewProjectData instance;
    private static boolean read = true;
    private int projectMode;
    private int mediaRequestType = AddMediaManager.DEVICE_MEDIA_REQUEST;
    private Intent mediaRequestResult = new Intent();

    private NewProjectData() {
    }

    public static NewProjectData getInstance() {
        read = false;
        if (instance == null) {
            instance = new NewProjectData();
        }
        return instance;
    }

    public int getMediaRequestType() {
        return this.mediaRequestType;
    }

    public Intent getMediaRequestResult() {
        return this.mediaRequestResult;
    }

    public void setMediaRequestType(int i) {
        this.mediaRequestType = i;
    }

    public void setMediaRequestResult(Intent intent) {
        this.mediaRequestResult = intent;
    }

    public void setProjectMode(int i) {
        this.projectMode = i;
    }

    public int getProjectMode() {
        return this.projectMode;
    }

    public static void reset() {
        instance = null;
        read = true;
    }

    public static boolean isRead() {
        return read;
    }
}
