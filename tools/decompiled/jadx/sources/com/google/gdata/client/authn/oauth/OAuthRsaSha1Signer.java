package com.google.gdata.client.authn.oauth;

import com.google.gdata.util.common.util.Base64;
import com.google.gdata.util.common.util.Base64DecoderException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthRsaSha1Signer implements OAuthSigner {
    PrivateKey privateKey;

    public OAuthRsaSha1Signer() {
    }

    public OAuthRsaSha1Signer(PrivateKey privateKey) throws OAuthException {
        setPrivateKey(privateKey);
    }

    public OAuthRsaSha1Signer(String str) throws OAuthException {
        if (str == null) {
            throw new OAuthException("Private key string cannot be null");
        }
        if (str.length() == 0) {
            throw new OAuthException("Private key string cannot be empty");
        }
        try {
            setPrivateKey(RsaSha1PrivateKeyHelper.getPrivateKey(str));
        } catch (Base64DecoderException e2) {
            throw new OAuthException("Invalid private key", e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new OAuthException("Invalid private key", e3);
        } catch (InvalidKeySpecException e4) {
            throw new OAuthException("Invalid private key", e4);
        }
    }

    public OAuthRsaSha1Signer(byte[] bArr) throws OAuthException {
        if (bArr == null) {
            throw new OAuthException("Private key bytes cannot be null");
        }
        if (bArr.length == 0) {
            throw new OAuthException("Private key bytes cannot be empty");
        }
        try {
            setPrivateKey(RsaSha1PrivateKeyHelper.getPrivateKey(bArr));
        } catch (NoSuchAlgorithmException e2) {
            throw new OAuthException("Invalid private key", e2);
        } catch (InvalidKeySpecException e3) {
            throw new OAuthException("Invalid private key", e3);
        }
    }

    public void setPrivateKey(PrivateKey privateKey) throws OAuthException {
        if (privateKey == null) {
            throw new OAuthException("Private key cannot be null");
        }
        this.privateKey = privateKey;
    }

    @Override // com.google.gdata.client.authn.oauth.OAuthSigner
    public String getSignature(String str, OAuthParameters oAuthParameters) throws OAuthException {
        if (this.privateKey == null) {
            throw new OAuthException("Private key cannot be null");
        }
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initSign(this.privateKey);
            signature.update(str.getBytes("UTF-8"));
            return Base64.encode(signature.sign());
        } catch (UnsupportedEncodingException e2) {
            throw new OAuthException("Error generating signature", e2);
        } catch (InvalidKeyException e3) {
            throw new OAuthException("Error generating signature", e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new OAuthException("Error generating signature", e4);
        } catch (SignatureException e5) {
            throw new OAuthException("Error generating signature", e5);
        }
    }

    @Override // com.google.gdata.client.authn.oauth.OAuthSigner
    public String getSignatureMethod() {
        return "RSA-SHA1";
    }
}
