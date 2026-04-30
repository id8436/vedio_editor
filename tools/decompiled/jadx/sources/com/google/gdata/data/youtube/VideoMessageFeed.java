package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_VIDEO_MESSAGE)
public class VideoMessageFeed extends BaseFeed<VideoMessageFeed, VideoMessageEntry> {
    public VideoMessageFeed() {
        super(VideoMessageEntry.class);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_VIDEO_MESSAGE);
    }

    public VideoMessageFeed(BaseFeed<?, ?> baseFeed) {
        super(VideoMessageEntry.class, baseFeed);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_VIDEO_MESSAGE);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }
}
