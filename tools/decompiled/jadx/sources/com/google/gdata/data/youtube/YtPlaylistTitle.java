package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "playlistTitle", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtPlaylistTitle extends AbstractFreeTextExtension {
    public YtPlaylistTitle() {
    }

    public YtPlaylistTitle(String str) {
        super(str);
    }
}
