package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_FAVORITE)
public class FavoriteEntry extends VideoEntry {
    public FavoriteEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FAVORITE);
    }

    public FavoriteEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FAVORITE);
    }

    @Override // com.google.gdata.data.youtube.VideoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareArbitraryXmlExtension(FavoriteEntry.class);
    }
}
