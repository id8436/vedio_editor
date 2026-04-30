package com.google.gdata.data;

/* JADX INFO: loaded from: classes3.dex */
public class Entry extends BaseEntry<Entry> {
    public Entry() {
    }

    public Entry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareArbitraryXmlExtension(BaseEntry.class);
    }
}
