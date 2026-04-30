package com.google.gdata.client.authn.oauth;

import com.google.gdata.util.common.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public class OAuthHmacSha1Signer implements OAuthSigner {
    @Override // com.google.gdata.client.authn.oauth.OAuthSigner
    public String getSignature(String str, OAuthParameters oAuthParameters) throws OAuthException {
        try {
            if (oAuthParameters == null) {
                throw new OAuthException("OAuth parameters cannot be null");
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(getKey(oAuthParameters).getBytes("UTF-8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return Base64.encode(mac.doFinal(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e2) {
            throw new OAuthException(e2);
        } catch (InvalidKeyException e3) {
            throw new OAuthException(e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new OAuthException(e4);
        }
    }

    private String getKey(OAuthParameters oAuthParameters) {
        return OAuthUtil.encode(oAuthParameters.getOAuthConsumerSecret()) + "&" + OAuthUtil.encode(oAuthParameters.getOAuthTokenSecret());
    }

    @Override // com.google.gdata.client.authn.oauth.OAuthSigner
    public String getSignatureMethod() {
        return "HMAC-SHA1";
    }
}
