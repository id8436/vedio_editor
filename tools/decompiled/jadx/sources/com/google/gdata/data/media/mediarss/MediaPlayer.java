package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "player", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaPlayer extends AbstractMediaResource {
    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(MediaPlayer.class);
    }
}
