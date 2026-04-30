package com.adobe.mobile;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class MessageMatcherNotExists extends MessageMatcherExists {
    MessageMatcherNotExists() {
    }

    @Override // com.adobe.mobile.MessageMatcherExists, com.adobe.mobile.MessageMatcher
    protected boolean matchesInMaps(Map<String, Object>... mapArr) {
        return !super.matchesInMaps(mapArr);
    }
}
