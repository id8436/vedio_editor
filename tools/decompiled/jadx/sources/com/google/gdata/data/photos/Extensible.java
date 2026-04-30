package com.google.gdata.data.photos;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public interface Extensible {
    void addExtension(Extension extension);

    void addRepeatingExtension(Extension extension);

    void declareExtensions(ExtensionProfile extensionProfile);

    void removeExtension(Extension extension);

    void removeExtension(Class<? extends Extension> cls);

    void removeRepeatingExtension(Extension extension);

    void setExtension(Extension extension);
}
