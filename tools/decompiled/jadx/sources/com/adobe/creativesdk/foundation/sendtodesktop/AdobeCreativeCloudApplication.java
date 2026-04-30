package com.adobe.creativesdk.foundation.sendtodesktop;

/* JADX INFO: loaded from: classes2.dex */
public enum AdobeCreativeCloudApplication {
    AdobeUnknownCreativeCloud(0),
    AdobePhotoshopCreativeCloud(1),
    AdobeIllustratorCreativeCloud(2),
    AdobeInDesignCreativeCloud(3),
    AdobeAnimateCreativeCloud(4);

    private int id;

    AdobeCreativeCloudApplication(int i) {
        this.id = i;
    }

    public int getValue() {
        return this.id;
    }
}
