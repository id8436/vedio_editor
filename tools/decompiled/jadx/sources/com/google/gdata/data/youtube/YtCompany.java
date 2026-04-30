package com.google.gdata.data.youtube;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = BehanceSDKUrlUtil.PARAM_KEY_COMPANY, nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtCompany extends AbstractFreeTextExtension {
    public YtCompany() {
    }

    public YtCompany(String str) {
        super(str);
    }
}
