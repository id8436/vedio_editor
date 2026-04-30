package com.google.api.client.extensions.java6.auth.oauth2;

/* JADX INFO: loaded from: classes3.dex */
public interface VerificationCodeReceiver {
    String getRedirectUri() throws Exception;

    void stop() throws Exception;

    String waitForCode() throws Exception;
}
