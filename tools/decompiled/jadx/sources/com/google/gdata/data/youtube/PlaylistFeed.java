package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://gdata.youtube.com/schemas/2007#playlist")
public class PlaylistFeed extends BaseFeed<PlaylistFeed, PlaylistEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.TAG_SCHEME};

    public PlaylistFeed() {
        super(PlaylistEntry.class);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#playlist");
    }

    public PlaylistFeed(BaseFeed<?, ?> baseFeed) {
        super(PlaylistEntry.class, baseFeed);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#playlist");
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareFeedExtension(YtPrivate.class);
        extensionProfile.declareFeedExtension(YouTubeMediaGroup.class);
        extensionProfile.declare(PlaylistFeed.class, YtPlaylistId.class);
        new YouTubeMediaGroup().declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }

    public String getPlaylistId() {
        YtPlaylistId ytPlaylistId = (YtPlaylistId) getExtension(YtPlaylistId.class);
        if (ytPlaylistId == null) {
            return null;
        }
        return ytPlaylistId.getPlaylistId();
    }

    public void setPlaylistId(String str) {
        if (str != null) {
            addExtension(new YtPlaylistId(str));
        } else {
            removeExtension(YtPlaylistId.class);
        }
    }

    public boolean isPrivate() {
        return getExtension(YtPrivate.class) != null;
    }

    public void setPrivate(boolean z) {
        if (z) {
            setExtension(new YtPrivate());
        } else {
            removeExtension(YtPrivate.class);
        }
    }

    public YouTubeMediaGroup getMediaGroup() {
        return (YouTubeMediaGroup) getExtension(YouTubeMediaGroup.class);
    }

    public YouTubeMediaGroup getOrCreateMediaGroup() {
        YouTubeMediaGroup mediaGroup = getMediaGroup();
        if (mediaGroup == null) {
            YouTubeMediaGroup youTubeMediaGroup = new YouTubeMediaGroup();
            setExtension(youTubeMediaGroup);
            return youTubeMediaGroup;
        }
        return mediaGroup;
    }
}
