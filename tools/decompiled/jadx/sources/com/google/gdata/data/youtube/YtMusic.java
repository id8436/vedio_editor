package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "music", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtMusic extends AbstractFreeTextExtension {
    public YtMusic() {
    }

    public YtMusic(String str) {
        super(str);
    }
}
