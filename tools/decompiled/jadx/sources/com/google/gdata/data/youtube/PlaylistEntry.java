package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term("http://gdata.youtube.com/schemas/2007#playlist")
public class PlaylistEntry extends VideoEntry {
    public PlaylistEntry() {
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#playlist");
    }

    public PlaylistEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#playlist");
    }

    @Override // com.google.gdata.data.youtube.VideoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(PlaylistEntry.class, YtPosition.class);
        extensionProfile.declare(PlaylistEntry.class, YtDescription.class);
        extensionProfile.declareArbitraryXmlExtension(PlaylistEntry.class);
    }

    public Integer getPosition() {
        YtPosition ytPosition = (YtPosition) getExtension(YtPosition.class);
        if (ytPosition == null) {
            return null;
        }
        return Integer.valueOf(ytPosition.getPosition());
    }

    public void setPosition(Integer num) {
        if (num == null) {
            removeExtension(YtPosition.class);
        } else {
            setExtension(new YtPosition(num.intValue()));
        }
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
