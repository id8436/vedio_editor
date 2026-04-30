package com.adobe.creativesdk.foundation.storage;

import com.behance.sdk.util.BehanceSDKConstants;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetImageDimensions {
    static final /* synthetic */ boolean $assertionsDisabled;
    public float height;
    public float width;

    static {
        $assertionsDisabled = !AdobeAssetImageDimensions.class.desiredAssertionStatus();
    }

    public AdobeAssetImageDimensions(AdobeAssetImageDimensions adobeAssetImageDimensions) {
        this.width = adobeAssetImageDimensions.width;
        this.height = adobeAssetImageDimensions.height;
    }

    public AdobeAssetImageDimensions(float f2, float f3) {
        this.width = f2;
        this.height = f3;
    }

    public String toString() {
        return "[" + this.width + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + this.height + "]";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdobeAssetImageDimensions)) {
            return false;
        }
        AdobeAssetImageDimensions adobeAssetImageDimensions = (AdobeAssetImageDimensions) obj;
        return adobeAssetImageDimensions.width == this.width && adobeAssetImageDimensions.height == this.height;
    }

    public int hashCode() {
        if ($assertionsDisabled) {
            return 42;
        }
        throw new AssertionError("hashCode not designed");
    }
}
