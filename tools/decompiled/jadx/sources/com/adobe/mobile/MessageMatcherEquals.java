package com.adobe.mobile;

/* JADX INFO: loaded from: classes2.dex */
class MessageMatcherEquals extends MessageMatcher {
    MessageMatcherEquals() {
    }

    @Override // com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        for (Object obj2 : this.values) {
            if ((obj2 instanceof String) && (obj instanceof String)) {
                if (obj2.toString().compareToIgnoreCase(obj.toString()) == 0) {
                    return true;
                }
            } else if ((obj2 instanceof Number) && (obj instanceof Number)) {
                if (((Number) obj2).doubleValue() == ((Number) obj).doubleValue()) {
                    return true;
                }
            } else if ((obj2 instanceof Number) && (obj instanceof String)) {
                if (tryParseDouble(obj) != null && ((Number) obj2).doubleValue() == tryParseDouble(obj).doubleValue()) {
                    return true;
                }
            } else if ((obj2 instanceof String) && (obj instanceof Number) && obj2.toString().compareToIgnoreCase(obj.toString()) == 0) {
                return true;
            }
        }
        return false;
    }
}
