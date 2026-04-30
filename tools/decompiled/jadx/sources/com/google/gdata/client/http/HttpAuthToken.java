package com.google.gdata.client.http;

import com.google.gdata.client.AuthTokenFactory;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public interface HttpAuthToken extends AuthTokenFactory.AuthToken {
    String getAuthorizationHeader(URL url, String str);
}
