package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term(YouTubeNamespace.KIND_VIDEO_MESSAGE)
public class VideoMessageEntry extends VideoEntry {
    public VideoMessageEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_VIDEO_MESSAGE);
    }

    public VideoMessageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_VIDEO_MESSAGE);
    }

    @Override // com.google.gdata.data.youtube.VideoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(VideoMessageEntry.class, YtDescription.class);
        extensionProfile.declareArbitraryXmlExtension(PlaylistEntry.class);
    }

    @Deprecated
    public String getDescription() {
        YtDescription ytDescription = (YtDescription) getExtension(YtDescription.class);
        if (ytDescription == null) {
            return null;
        }
        return ytDescription.getContent();
    }

    @Deprecated
    public void setDescription(String str) {
        if (str == null) {
            removeExtension(YtDescription.class);
        } else {
            setExtension(new YtDescription(str));
        }
    }
}
