package com.google.api.gbase.client;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.FeedLink;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseEntry extends BaseEntry<GoogleBaseEntry> {
    private final MetadataEntryExtension metadata = new MetadataEntryExtension(this);
    private final GoogleBaseAttributesExtension googleBaseAttributesExtension = new GoogleBaseAttributesExtension();

    public GoogleBaseEntry() {
        addExtension(this.googleBaseAttributesExtension);
    }

    public GoogleBaseAttributesExtension getGoogleBaseAttributes() {
        return this.googleBaseAttributesExtension;
    }

    public MetadataEntryExtension getGoogleBaseMetadata() {
        return this.metadata;
    }

    public FeedLink<GoogleBaseMediaFeed> getMediaFeedLink() {
        for (FeedLink<GoogleBaseMediaFeed> feedLink : getRepeatingExtension(FeedLink.class)) {
            if ("media".equals(feedLink.getRel())) {
                return feedLink;
            }
        }
        return null;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareArbitraryXmlExtension(GoogleBaseEntry.class);
        GoogleBaseNamespaces.declareAllExtensions(extensionProfile);
    }
}
