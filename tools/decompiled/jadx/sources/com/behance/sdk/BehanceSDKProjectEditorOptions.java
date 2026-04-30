package com.behance.sdk;

import com.behance.sdk.dto.BehanceSDKTagDTO;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorOptions extends BehanceSDKAbstractPublishOptions {
    private BehanceSDKTagDTO defaultTool;
    private String projectId = null;

    public String getProjectId() {
        return this.projectId;
    }

    public void setProjectId(String str) {
        this.projectId = str;
    }

    public BehanceSDKTagDTO getDefaultTool() {
        return this.defaultTool;
    }

    public void setDefaultTool(BehanceSDKTagDTO behanceSDKTagDTO) {
        this.defaultTool = behanceSDKTagDTO;
    }
}
