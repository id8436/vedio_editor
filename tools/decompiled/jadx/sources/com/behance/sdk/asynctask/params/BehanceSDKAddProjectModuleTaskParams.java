package com.behance.sdk.asynctask.params;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class BehanceSDKAddProjectModuleTaskParams extends BehanceSDKAbstractTaskParams {
    private File imageFile;
    private String projectID;

    public void setImage(File file) {
        this.imageFile = file;
    }

    public File getImage() {
        return this.imageFile;
    }

    public void setProjectId(String str) {
        this.projectID = str;
    }

    public String getProjectId() {
        return this.projectID;
    }
}
