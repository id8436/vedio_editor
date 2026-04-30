package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "firstName", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtFirstName extends AbstractFreeTextExtension {
    public YtFirstName() {
    }

    public YtFirstName(String str) {
        super(str);
    }
}
