package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "hometown", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtHometown extends AbstractFreeTextExtension {
    public YtHometown() {
    }

    public YtHometown(String str) {
        super(str);
    }
}
