package com.google.gdata.data.photos.impl;

import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.photos.GphotoWeight;
import com.google.gdata.data.photos.TagData;

/* JADX INFO: loaded from: classes3.dex */
public class TagDataImpl extends GphotoDataImpl implements TagData {
    public TagDataImpl(ExtensionPoint extensionPoint) {
        super(extensionPoint);
    }

    @Override // com.google.gdata.data.photos.impl.GphotoDataImpl, com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        declare(extensionProfile, GphotoWeight.getDefaultDescription(false, false));
    }

    @Override // com.google.gdata.data.photos.TagData
    public Integer getWeight() {
        GphotoWeight gphotoWeight = (GphotoWeight) getExtension(GphotoWeight.class);
        if (gphotoWeight == null) {
            return null;
        }
        return gphotoWeight.getValue();
    }

    @Override // com.google.gdata.data.photos.TagData
    public void setWeight(Integer num) {
        if (num != null) {
            setExtension(new GphotoWeight(num));
        } else {
            removeExtension(GphotoWeight.class);
        }
    }
}
