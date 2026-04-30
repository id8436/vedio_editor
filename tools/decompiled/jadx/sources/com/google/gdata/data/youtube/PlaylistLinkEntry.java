package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_PLAYLIST_LINK)
public class PlaylistLinkEntry extends FeedLinkEntry<PlaylistLinkEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.TAG_SCHEME};

    public PlaylistLinkEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_PLAYLIST_LINK);
    }

    public PlaylistLinkEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_PLAYLIST_LINK);
    }

    public void setPrivate(boolean z) {
        if (z) {
            setExtension(new YtPrivate());
        } else {
            removeExtension(YtPrivate.class);
        }
    }

    public boolean isPrivate() {
        return getExtension(YtPrivate.class) != null;
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

    @Override // com.google.gdata.data.youtube.FeedLinkEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(PlaylistLinkEntry.class, YtPlaylistId.class);
    }
}
