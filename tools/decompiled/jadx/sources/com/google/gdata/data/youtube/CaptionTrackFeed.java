package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_CAPTION_TRACK)
public class CaptionTrackFeed extends BaseFeed<CaptionTrackFeed, CaptionTrackEntry> {
    public CaptionTrackFeed() {
        super(CaptionTrackEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CAPTION_TRACK);
    }

    public CaptionTrackFeed(BaseFeed<?, ?> baseFeed) {
        super(CaptionTrackEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CAPTION_TRACK);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
