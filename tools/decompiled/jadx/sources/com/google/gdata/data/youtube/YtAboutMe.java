package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "aboutMe", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtAboutMe extends AbstractFreeTextExtension {
    public YtAboutMe() {
    }

    public YtAboutMe(String str) {
        super(str);
    }
}
