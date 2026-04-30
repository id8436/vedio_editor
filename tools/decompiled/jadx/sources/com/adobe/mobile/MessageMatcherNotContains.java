package com.adobe.mobile;

/* JADX INFO: loaded from: classes2.dex */
final class MessageMatcherNotContains extends MessageMatcherContains {
    MessageMatcherNotContains() {
    }

    @Override // com.adobe.mobile.MessageMatcherContains, com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        return !super.matches(obj);
    }
}
