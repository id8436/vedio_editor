package com.google.gdata.client;

import com.google.common.collect.ConcurrentHashMultiset;
import com.google.common.collect.Multiset;
import com.google.gdata.client.http.GoogleGDataRequest;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class SimpleCookieManager implements CookieManager {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected Multiset<GoogleGDataRequest.GoogleCookie> cookies = ConcurrentHashMultiset.create();
    protected boolean cookiesEnabled = true;

    static {
        $assertionsDisabled = !SimpleCookieManager.class.desiredAssertionStatus();
    }

    @Override // com.google.gdata.client.CookieManager
    public void setCookiesEnabled(boolean z) {
        this.cookiesEnabled = z;
        if (!this.cookiesEnabled) {
            clearCookies();
        }
    }

    @Override // com.google.gdata.client.CookieManager
    public boolean cookiesEnabled() {
        return this.cookiesEnabled;
    }

    @Override // com.google.gdata.client.CookieManager
    public void clearCookies() {
        this.cookies.clear();
    }

    @Override // com.google.gdata.client.CookieManager
    public void addCookie(GoogleGDataRequest.GoogleCookie googleCookie) {
        if (!$assertionsDisabled && !this.cookiesEnabled) {
            throw new AssertionError();
        }
        this.cookies.remove(googleCookie);
        this.cookies.add(googleCookie);
    }

    @Override // com.google.gdata.client.CookieManager
    public Set<GoogleGDataRequest.GoogleCookie> getCookies() {
        Iterator<GoogleGDataRequest.GoogleCookie> it = this.cookies.iterator();
        while (it.hasNext()) {
            if (it.next().hasExpired()) {
                it.remove();
            }
        }
        return this.cookies.elementSet();
    }
}
