package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "location", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtLocation extends AbstractFreeTextExtension {
    public YtLocation() {
    }

    public YtLocation(String str) {
        super(str);
    }
}
