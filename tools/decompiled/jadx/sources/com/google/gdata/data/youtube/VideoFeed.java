package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://gdata.youtube.com/schemas/2007#video")
public class VideoFeed extends MediaFeed<VideoFeed, VideoEntry> {
    public VideoFeed() {
        super(VideoEntry.class);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#video");
    }

    public VideoFeed(BaseFeed<?, ?> baseFeed) {
        super(VideoEntry.class, baseFeed);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#video");
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }

    public Link getGetUploadTokenActionLink() {
        for (Link link : getLinks()) {
            if (YouTubeNamespace.GET_UPLOAD_TOKEN_REL.equals(link.getRel())) {
                return link;
            }
        }
        return null;
    }
}
