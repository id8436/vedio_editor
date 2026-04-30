package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_FAVORITE)
public class FavoriteFeed extends BaseFeed<FavoriteFeed, FavoriteEntry> {
    public FavoriteFeed() {
        super(FavoriteEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FAVORITE);
    }

    public FavoriteFeed(BaseFeed<?, ?> baseFeed) {
        super(FavoriteEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_FAVORITE);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
