package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "lastName", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtLastName extends AbstractFreeTextExtension {
    public YtLastName() {
    }

    public YtLastName(String str) {
        super(str);
    }
}
