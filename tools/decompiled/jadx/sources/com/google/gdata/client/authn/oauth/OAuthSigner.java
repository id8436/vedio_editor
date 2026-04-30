package com.google.gdata.client.authn.oauth;

/* JADX INFO: loaded from: classes3.dex */
public interface OAuthSigner {
    String getSignature(String str, OAuthParameters oAuthParameters) throws OAuthException;

    String getSignatureMethod();
}
