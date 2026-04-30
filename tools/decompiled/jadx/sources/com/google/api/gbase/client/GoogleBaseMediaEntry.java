package com.google.api.gbase.client;

import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.media.mediarss.MediaContent;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseMediaEntry extends MediaEntry<GoogleBaseMediaEntry> {
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(GoogleBaseMediaEntry.class, MediaContent.class);
    }
}
