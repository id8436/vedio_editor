package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "token", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtToken extends AbstractFreeTextExtension {
    public YtToken() {
    }

    public YtToken(String str) {
        super(str);
    }
}
