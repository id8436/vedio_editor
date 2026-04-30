package com.google.gdata.client.authn.oauth;

import com.google.gdata.client.authn.oauth.OAuthHelper;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class TwoLeggedOAuthHelper {
    private final OAuthParameters parameters;
    private final OAuthSigner signer;

    public TwoLeggedOAuthHelper(OAuthSigner oAuthSigner, OAuthParameters oAuthParameters) {
        this.signer = oAuthSigner;
        this.parameters = oAuthParameters;
    }

    void validateInputParameters() throws OAuthException {
        this.parameters.assertOAuthConsumerKeyExists();
        if (this.signer instanceof OAuthHmacSha1Signer) {
            this.parameters.assertOAuthConsumerSecretExists();
        }
    }

    void addCommonRequestParameters(String str, String str2) throws OAuthException {
        if (this.parameters.getOAuthSignatureMethod().length() == 0) {
            this.parameters.setOAuthSignatureMethod(this.signer.getSignatureMethod());
        }
        if (this.parameters.getOAuthTimestamp().length() == 0) {
            this.parameters.setOAuthTimestamp(OAuthUtil.getTimestamp());
        }
        if (this.parameters.getOAuthNonce().length() == 0) {
            this.parameters.setOAuthNonce(OAuthUtil.getNonce());
        }
        if (this.parameters.getOAuthSignature().length() == 0) {
            this.parameters.setOAuthSignature(this.signer.getSignature(OAuthUtil.getSignatureBaseString(str, str2, this.parameters.getBaseParameters()), this.parameters));
        }
    }

    public String getAuthorizationHeader(String str, String str2) throws OAuthException {
        validateInputParameters();
        return addParametersAndRetrieveHeader(str, str2);
    }

    String addParametersAndRetrieveHeader(String str, String str2) throws OAuthException {
        addCommonRequestParameters(str, str2);
        OAuthHelper.HeaderKeyValuePair headerKeyValuePair = new OAuthHelper.HeaderKeyValuePair();
        headerKeyValuePair.add(OAuthParameters.REALM_KEY, this.parameters.getRealm());
        headerKeyValuePair.add(OAuthParameters.OAUTH_SIGNATURE_KEY, this.parameters.getOAuthSignature());
        for (Map.Entry<String, String> entry : this.parameters.getBaseParameters().entrySet()) {
            if (entry.getValue().length() > 0) {
                headerKeyValuePair.add(entry.getKey(), entry.getValue());
            }
        }
        this.parameters.reset();
        return OAuthParameters.OAUTH_KEY + " " + headerKeyValuePair.toString();
    }
}
