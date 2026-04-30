package com.adobe.mobile;

/* JADX INFO: loaded from: classes2.dex */
final class MessageMatcherLessThan extends MessageMatcher {
    MessageMatcherLessThan() {
    }

    @Override // com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        Double dTryParseDouble = tryParseDouble(obj);
        if (dTryParseDouble == null) {
            return false;
        }
        for (Object obj2 : this.values) {
            if ((obj2 instanceof Number) && dTryParseDouble.doubleValue() < ((Number) obj2).doubleValue()) {
                return true;
            }
        }
        return false;
    }
}
