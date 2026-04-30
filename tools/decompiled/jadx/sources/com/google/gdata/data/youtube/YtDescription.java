package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "description", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
@Deprecated
public class YtDescription extends AbstractFreeTextExtension {
    public YtDescription() {
    }

    public YtDescription(String str) {
        super(str);
    }
}
