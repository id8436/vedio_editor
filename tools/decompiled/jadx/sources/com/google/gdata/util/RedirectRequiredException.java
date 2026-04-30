package com.google.gdata.util;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RedirectRequiredException extends ServiceException {
    private static final String LOCATION = "Location";

    public RedirectRequiredException(int i, String str) {
        super("Redirect Required");
        setHttpErrorCodeOverride(i);
        getHttpHeaders().put("Location", Collections.singletonList(str));
    }

    public RedirectRequiredException(HttpURLConnection httpURLConnection) throws IOException {
        super(httpURLConnection);
        setHttpErrorCodeOverride(httpURLConnection.getResponseCode());
    }

    public String getRedirectLocation() {
        List<String> httpHeader = getHttpHeader("Location");
        if (httpHeader == null || httpHeader.size() <= 0) {
            return null;
        }
        return httpHeader.get(0);
    }
}
