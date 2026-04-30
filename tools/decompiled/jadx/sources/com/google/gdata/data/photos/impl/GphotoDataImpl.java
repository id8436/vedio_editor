package com.google.gdata.data.photos.impl;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Person;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.photos.GphotoData;
import com.google.gdata.data.photos.GphotoId;
import com.google.gdata.data.photos.GphotoNickname;
import com.google.gdata.data.photos.GphotoThumbnail;
import com.google.gdata.data.photos.GphotoType;
import com.google.gdata.data.photos.GphotoUsername;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GphotoDataImpl implements GphotoData {
    private final Class<? extends ExtensionPoint> extClass;
    private final ExtensionPoint extPoint;

    public GphotoDataImpl(ExtensionPoint extensionPoint) {
        this.extPoint = extensionPoint;
        this.extClass = extensionPoint.getClass();
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        declare(extensionProfile, GphotoId.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoType.getDefaultDescription(false, false));
        extensionProfile.declareArbitraryXmlExtension(this.extClass);
        extensionProfile.declare(Person.class, GphotoUsername.getDefaultDescription(false, false));
        extensionProfile.declare(Person.class, GphotoNickname.getDefaultDescription(false, false));
        extensionProfile.declare(Person.class, GphotoThumbnail.getDefaultDescription(false, false));
    }

    protected void declare(ExtensionProfile extensionProfile, ExtensionDescription extensionDescription) {
        extensionProfile.declare(this.extClass, extensionDescription);
        if (BaseEntry.class.isAssignableFrom(this.extClass)) {
            extensionProfile.declare(BaseEntry.class, extensionDescription);
        }
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public String getGphotoId() {
        return getSimpleValue(GphotoId.class);
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public void setGphotoId(Long l) {
        if (l != null) {
            setExtension(GphotoId.from(l));
        } else {
            removeExtension(GphotoId.class);
        }
    }

    @Override // com.google.gdata.data.photos.GphotoData
    public void setGphotoId(String str) {
        if (str != null) {
            setExtension(new GphotoId(str));
        } else {
            removeExtension(GphotoId.class);
        }
    }

    protected String getSimpleValue(Class<? extends ValueConstruct> cls) {
        ValueConstruct valueConstruct = (ValueConstruct) getExtension(cls);
        if (valueConstruct == null) {
            return null;
        }
        return valueConstruct.getValue();
    }

    protected <T extends Extension> T getExtension(Class<T> cls) {
        return (T) this.extPoint.getExtension(cls);
    }

    protected <T extends Extension> List<T> getRepeatingExtension(Class<T> cls) {
        return this.extPoint.getRepeatingExtension(cls);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void setExtension(Extension extension) {
        this.extPoint.setExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void addExtension(Extension extension) {
        this.extPoint.addExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void addRepeatingExtension(Extension extension) {
        this.extPoint.addRepeatingExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeExtension(Class<? extends Extension> cls) {
        this.extPoint.removeExtension(cls);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeExtension(Extension extension) {
        this.extPoint.removeExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeRepeatingExtension(Extension extension) {
        this.extPoint.removeRepeatingExtension(extension);
    }
}
