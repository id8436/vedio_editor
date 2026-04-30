package com.adobe.mobile;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class MessageMatcherContains extends MessageMatcher {
    MessageMatcherContains() {
    }

    @Override // com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        boolean z = obj instanceof Number;
        if (!(obj instanceof String) && !z) {
            return false;
        }
        String string = obj.toString();
        for (Object obj2 : this.values) {
            if ((obj2 instanceof String) && Pattern.compile(Pattern.quote(obj2.toString()), 2).matcher(string).find()) {
                return true;
            }
        }
        return false;
    }
}
