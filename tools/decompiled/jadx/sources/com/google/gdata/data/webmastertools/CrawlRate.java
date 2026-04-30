package com.google.gdata.data.webmastertools;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;

/* JADX INFO: loaded from: classes3.dex */
public enum CrawlRate {
    SLOWEST("slowest"),
    SLOWER("slower"),
    NORMAL(AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeNormal),
    FASTER("faster"),
    FASTEST("fastest");

    private String value;

    CrawlRate(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static CrawlRate getDefault() {
        return NORMAL;
    }

    public static CrawlRate fromString(String str) throws IllegalArgumentException {
        for (CrawlRate crawlRate : values()) {
            if (crawlRate.toString().equals(str)) {
                return crawlRate;
            }
        }
        throw new IllegalArgumentException("The parameter is not a valid CrawlRate string");
    }
}
