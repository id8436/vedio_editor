package com.google.gdata.data.youtube;

import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "movies", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtMovies extends AbstractFreeTextExtension {
    public YtMovies() {
    }

    public YtMovies(String str) {
        super(str);
    }
}
