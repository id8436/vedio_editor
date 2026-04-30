package com.google.gdata.data.youtube;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.ExtensionDescription;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = BehanceSDKUrlUtil.PARAM_KEY_OCCUPATION, nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtOccupation extends AbstractFreeTextExtension {
    public YtOccupation() {
    }

    public YtOccupation(String str) {
        super(str);
    }
}
