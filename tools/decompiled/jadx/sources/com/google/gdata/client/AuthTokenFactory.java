package com.google.gdata.client;

import com.google.gdata.client.GoogleService;
import com.google.gdata.util.AuthenticationException;

/* JADX INFO: loaded from: classes3.dex */
public interface AuthTokenFactory {

    public interface AuthToken {
    }

    public interface TokenListener {
        void tokenChanged(AuthToken authToken);
    }

    AuthToken getAuthToken();

    void handleSessionExpiredException(GoogleService.SessionExpiredException sessionExpiredException) throws AuthenticationException;
}
