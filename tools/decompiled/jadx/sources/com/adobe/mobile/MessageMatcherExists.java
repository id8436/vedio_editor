package com.adobe.mobile;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class MessageMatcherExists extends MessageMatcher {
    MessageMatcherExists() {
    }

    @Override // com.adobe.mobile.MessageMatcher
    protected boolean matchesInMaps(Map<String, Object>... mapArr) {
        Object obj = null;
        if (mapArr == null || mapArr.length <= 0) {
            return false;
        }
        int length = mapArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Map<String, Object> map = mapArr[i];
            if (map == null || !map.containsKey(this.key)) {
                i++;
            } else {
                obj = map.get(this.key);
                break;
            }
        }
        return obj != null;
    }
}
