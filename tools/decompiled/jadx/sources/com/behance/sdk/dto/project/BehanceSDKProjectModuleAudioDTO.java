package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleAudioDTO extends BehanceSDKAbstractProjectModuleDTO {
    private static final long serialVersionUID = -646184695805770780L;
    private String embedHTML;
    private String srcURL;

    public BehanceSDKProjectModuleAudioDTO() {
        setType(BehanceSDKProjectModuleType.AUDIO);
    }

    public String getEmbedHTML() {
        return this.embedHTML;
    }

    public void setEmbedHTML(String str) {
        this.embedHTML = str;
    }

    public String getSrcURL() {
        return this.srcURL;
    }

    public void setSrcURL(String str) {
        this.srcURL = str;
    }
}
