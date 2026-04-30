package com.google.gdata.data;

/* JADX INFO: loaded from: classes3.dex */
public class Feed extends BaseFeed<Feed, Entry> {
    public Feed() {
        super(Entry.class);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareArbitraryXmlExtension(BaseFeed.class);
        super.declareExtensions(extensionProfile);
    }
}
