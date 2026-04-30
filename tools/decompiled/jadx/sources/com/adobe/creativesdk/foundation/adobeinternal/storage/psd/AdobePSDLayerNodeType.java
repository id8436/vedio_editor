package com.adobe.creativesdk.foundation.adobeinternal.storage.psd;

/* JADX INFO: loaded from: classes.dex */
public enum AdobePSDLayerNodeType {
    AdobePSDLayerNodeTypeUnknown(1),
    AdobePSDLayerNodeTypeRGBPixels(2),
    AdobePSDLayerNodeTypeSolidColor(4),
    AdobePSDLayerNodeTypeGroup(8),
    AdobePSDLayerNodeTypeAdjustment(16);

    private final int value;

    AdobePSDLayerNodeType(int i) {
        this.value = i;
    }

    public int value() {
        return this.value;
    }
}
