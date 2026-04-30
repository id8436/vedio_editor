package com.behance.sdk.dto;

import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageDTO implements Serializable {
    private int height;
    private boolean local;
    private String path;
    private int width;

    public BehanceSDKImageDTO(String str, int i, int i2) {
        setPath(str);
        setWidth(i);
        setHeight(i2);
    }

    public BehanceSDKImageDTO(String str, int i, int i2, boolean z) {
        setPath(str);
        setWidth(i);
        setHeight(i2);
        setLocal(z);
    }

    public BehanceSDKImageDTO(BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage) {
        if (behanceSDKEditProjectModuleImage.getPath() != null) {
            setPath(behanceSDKEditProjectModuleImage.getPath());
        } else {
            setPath(behanceSDKEditProjectModuleImage.getDisp());
        }
        setWidth(behanceSDKEditProjectModuleImage.getWidth());
        setHeight(behanceSDKEditProjectModuleImage.getHeight());
        setLocal(behanceSDKEditProjectModuleImage.isNewModule());
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public boolean isLocal() {
        return this.local;
    }

    public void setLocal(boolean z) {
        this.local = z;
    }
}
