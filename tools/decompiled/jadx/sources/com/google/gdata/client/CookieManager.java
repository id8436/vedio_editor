package com.google.gdata.client;

import com.google.gdata.client.http.GoogleGDataRequest;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface CookieManager {
    void addCookie(GoogleGDataRequest.GoogleCookie googleCookie);

    void clearCookies();

    boolean cookiesEnabled();

    Set<GoogleGDataRequest.GoogleCookie> getCookies();

    void setCookiesEnabled(boolean z);
}
