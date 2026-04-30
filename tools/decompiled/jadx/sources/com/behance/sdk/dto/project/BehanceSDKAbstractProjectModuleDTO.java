package com.behance.sdk.dto.project;

import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BehanceSDKAbstractProjectModuleDTO implements Serializable {
    private static final long serialVersionUID = 5665527980106568354L;
    private BehanceSDKProjectModuleAlignment alignment;
    private String id;
    private BehanceSDKProjectModuleType type;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public BehanceSDKProjectModuleType getType() {
        return this.type;
    }

    public void setType(BehanceSDKProjectModuleType behanceSDKProjectModuleType) {
        this.type = behanceSDKProjectModuleType;
    }

    public void setAlignment(String str) {
        this.alignment = BehanceSDKProjectModuleAlignment.fromString(str);
    }
}
