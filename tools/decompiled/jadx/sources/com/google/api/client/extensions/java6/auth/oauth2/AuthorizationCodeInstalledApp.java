package com.google.api.client.extensions.java6.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeFlow;
import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.auth.oauth2.Credential;
import com.google.common.base.Preconditions;
import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;

/* JADX INFO: loaded from: classes3.dex */
public class AuthorizationCodeInstalledApp {
    private final AuthorizationCodeFlow flow;
    private final VerificationCodeReceiver receiver;

    public AuthorizationCodeInstalledApp(AuthorizationCodeFlow authorizationCodeFlow, VerificationCodeReceiver verificationCodeReceiver) {
        this.flow = (AuthorizationCodeFlow) Preconditions.checkNotNull(authorizationCodeFlow);
        this.receiver = (VerificationCodeReceiver) Preconditions.checkNotNull(verificationCodeReceiver);
    }

    public Credential authorize(String str) throws Exception {
        try {
            Credential credentialLoadCredential = this.flow.loadCredential(str);
            if (credentialLoadCredential == null || (credentialLoadCredential.getRefreshToken() == null && credentialLoadCredential.getExpiresInSeconds().longValue() <= 60)) {
                String redirectUri = this.receiver.getRedirectUri();
                onAuthorization(this.flow.newAuthorizationUrl().setRedirectUri(redirectUri));
                credentialLoadCredential = this.flow.createAndStoreCredential(this.flow.newTokenRequest(this.receiver.waitForCode()).setRedirectUri(redirectUri).execute(), str);
            }
            return credentialLoadCredential;
        } finally {
            this.receiver.stop();
        }
    }

    protected void onAuthorization(AuthorizationCodeRequestUrl authorizationCodeRequestUrl) throws Exception {
        browse(authorizationCodeRequestUrl.build());
    }

    public static void browse(String str) {
        Preconditions.checkNotNull(str);
        if (Desktop.isDesktopSupported()) {
            Desktop desktop = Desktop.getDesktop();
            if (desktop.isSupported(Desktop.Action.BROWSE)) {
                try {
                    desktop.browse(URI.create(str));
                    return;
                } catch (IOException e2) {
                }
            }
        }
        System.out.println("Please open the following URL in your browser:");
        System.out.println("  " + str);
    }

    public final AuthorizationCodeFlow getFlow() {
        return this.flow;
    }

    public final VerificationCodeReceiver getReceiver() {
        return this.receiver;
    }
}
