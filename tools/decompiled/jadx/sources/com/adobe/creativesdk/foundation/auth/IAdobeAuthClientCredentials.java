package com.adobe.creativesdk.foundation.auth;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeAuthClientCredentials {
    String[] getAdditionalScopesList();

    String getClientID();

    String getClientSecret();

    String getRedirectURI();
}
