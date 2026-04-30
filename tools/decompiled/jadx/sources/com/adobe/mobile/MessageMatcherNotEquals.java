package com.adobe.mobile;

/* JADX INFO: loaded from: classes2.dex */
final class MessageMatcherNotEquals extends MessageMatcherEquals {
    MessageMatcherNotEquals() {
    }

    @Override // com.adobe.mobile.MessageMatcherEquals, com.adobe.mobile.MessageMatcher
    protected boolean matches(Object obj) {
        return !super.matches(obj);
    }
}
