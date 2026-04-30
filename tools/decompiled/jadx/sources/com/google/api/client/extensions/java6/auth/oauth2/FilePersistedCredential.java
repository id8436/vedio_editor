package com.google.api.client.extensions.java6.auth.oauth2;

import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: loaded from: classes.dex */
public class FilePersistedCredential extends GenericJson {

    @Key("access_token")
    private String accessToken;

    @Key("expiration_time_millis")
    private Long expirationTimeMillis;

    @Key(AdobeAuthIdentityManagementService.IMS_KEY_REFRESH_TOKEN)
    private String refreshToken;

    void store(Credential credential) {
        this.accessToken = credential.getAccessToken();
        this.refreshToken = credential.getRefreshToken();
        this.expirationTimeMillis = credential.getExpirationTimeMilliseconds();
    }

    void load(Credential credential) {
        credential.setAccessToken(this.accessToken);
        credential.setRefreshToken(this.refreshToken);
        credential.setExpirationTimeMilliseconds(this.expirationTimeMillis);
    }
}
