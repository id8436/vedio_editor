package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "queryString", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtQueryString extends AbstractFreeTextExtension {
    public YtQueryString() {
    }

    public YtQueryString(String str) {
        super(str);
    }
}
