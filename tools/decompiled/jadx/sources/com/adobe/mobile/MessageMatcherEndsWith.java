package com.adobe.mobile;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class MessageMatcherEndsWith extends MessageMatcher {
    MessageMatcherEndsWith() {
    }

    @Override // com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        boolean z = obj instanceof Number;
        if (!(obj instanceof String) && !z) {
            return false;
        }
        String string = obj.toString();
        for (Object obj2 : this.values) {
            if ((obj2 instanceof String) && string.matches("(?i).*" + Pattern.quote(obj2.toString()))) {
                return true;
            }
        }
        return false;
    }
}
