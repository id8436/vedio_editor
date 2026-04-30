package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleAbstract implements Serializable {
    private int id;
    private boolean newModule;

    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.UNKNOWN;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public boolean isNewModule() {
        return this.newModule;
    }

    public void setNewModule(boolean z) {
        this.newModule = z;
    }
}
