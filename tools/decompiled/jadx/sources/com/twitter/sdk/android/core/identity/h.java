package com.twitter.sdk.android.core.identity;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

/* JADX INFO: compiled from: OAuthWebChromeClient.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends WebChromeClient {
    h() {
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return true;
    }
}
