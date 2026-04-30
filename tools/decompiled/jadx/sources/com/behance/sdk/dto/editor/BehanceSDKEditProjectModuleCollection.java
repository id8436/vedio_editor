package com.behance.sdk.dto.editor;

import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKEditProjectModuleCollection extends BehanceSDKEditProjectModuleCaptionable {
    private String collectionType;
    private JSONArray components;
    private boolean fullBleed;
    private String moduleTypeString;
    private String sortType;

    @Override // com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract
    public BehanceSDKProjectModuleType getModuleType() {
        return BehanceSDKProjectModuleType.MEDIA_COLLECTION;
    }

    public String getModuleTypeString() {
        return this.moduleTypeString;
    }

    public void setModuleTypeString(String str) {
        this.moduleTypeString = str;
    }

    public boolean isFullBleed() {
        return this.fullBleed;
    }

    public void setFullBleed(boolean z) {
        this.fullBleed = z;
    }

    public String getSortType() {
        return this.sortType;
    }

    public void setSortType(String str) {
        this.sortType = str;
    }

    public String getCollectionType() {
        return this.collectionType;
    }

    public void setCollectionType(String str) {
        this.collectionType = str;
    }

    public JSONArray getComponents() {
        return this.components;
    }

    public void setComponents(JSONArray jSONArray) {
        this.components = jSONArray;
    }
}
