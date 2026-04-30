package com.google.gdata.data.youtube;

import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AppsForYourDomainQuery.USERNAME, nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtUsername extends AbstractFreeTextExtension {
    public YtUsername() {
    }

    public YtUsername(String str) {
        super(str);
    }
}
