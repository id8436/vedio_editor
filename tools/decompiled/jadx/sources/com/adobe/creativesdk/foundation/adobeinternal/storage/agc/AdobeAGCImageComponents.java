package com.adobe.creativesdk.foundation.adobeinternal.storage.agc;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAGCImageComponents {
    private ArrayList<AdobeAGCImageComponent> imageComponents = new ArrayList<>();

    public void addImageComponent(AdobeAGCImageComponent adobeAGCImageComponent) {
        this.imageComponents.add(adobeAGCImageComponent);
    }

    public AdobeAGCImageComponent getImageComponent(int i) {
        return this.imageComponents.get(i);
    }

    public int getSize() {
        return this.imageComponents.size();
    }
}
