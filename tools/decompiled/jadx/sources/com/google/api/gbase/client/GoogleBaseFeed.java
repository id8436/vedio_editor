package com.google.api.gbase.client;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseFeed extends BaseFeed<GoogleBaseFeed, GoogleBaseEntry> {
    private final GoogleBaseAttributesExtension googleBaseAttributesExtension;

    public GoogleBaseFeed() {
        super(GoogleBaseEntry.class);
        this.googleBaseAttributesExtension = new GoogleBaseAttributesExtension();
        addExtension(this.googleBaseAttributesExtension);
    }

    public GoogleBaseAttributesExtension getGoogleBaseAttributes() {
        return this.googleBaseAttributesExtension;
    }

    public void addEntry(GoogleBaseEntry googleBaseEntry) {
        getEntries().add(googleBaseEntry);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareArbitraryXmlExtension(GoogleBaseFeed.class);
        extensionProfile.declareFeedExtension(GoogleBaseAttributesExtension.DESCRIPTION);
        super.declareExtensions(extensionProfile);
    }
}
