package org.mortbay.jetty.security;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.data.codesearch.Package;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.Principal;
import org.mortbay.jetty.HttpTokens;
import org.mortbay.jetty.Request;
import org.mortbay.jetty.Response;
import org.mortbay.jetty.security.Credential;
import org.mortbay.log.Log;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class DigestAuthenticator implements Authenticator {
    protected long maxNonceAge = 0;
    protected long nonceSecret = ((long) hashCode()) ^ System.currentTimeMillis();
    protected boolean useStale = false;

    @Override // org.mortbay.jetty.security.Authenticator
    public Principal authenticate(UserRealm userRealm, String str, Request request, Response response) throws IOException {
        boolean z;
        String str2;
        Principal principalAuthenticate = null;
        String header = request.getHeader("Authorization");
        if (header != null) {
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("Credentials: ").append(header).toString());
            }
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(header, "=, ", true, false);
            Digest digest = new Digest(request.getMethod());
            String str3 = null;
            String str4 = null;
            while (quotedStringTokenizer.hasMoreTokens()) {
                String strNextToken = quotedStringTokenizer.nextToken();
                switch (strNextToken.length() == 1 ? strNextToken.charAt(0) : (char) 0) {
                    case ' ':
                        break;
                    case ',':
                        str3 = null;
                        break;
                    case '=':
                        str2 = strNextToken;
                        continue;
                        String str5 = str4;
                        str4 = str2;
                        str3 = str5;
                        break;
                    default:
                        if (str3 != null) {
                            if (AppsForYourDomainQuery.USERNAME.equalsIgnoreCase(str3)) {
                                digest.username = strNextToken;
                            } else if (OAuthParameters.REALM_KEY.equalsIgnoreCase(str3)) {
                                digest.realm = strNextToken;
                            } else if ("nonce".equalsIgnoreCase(str3)) {
                                digest.nonce = strNextToken;
                            } else if ("nc".equalsIgnoreCase(str3)) {
                                digest.nc = strNextToken;
                            } else if ("cnonce".equalsIgnoreCase(str3)) {
                                digest.cnonce = strNextToken;
                            } else if ("qop".equalsIgnoreCase(str3)) {
                                digest.qop = strNextToken;
                            } else if (Package.ATTRIBUTE_URI.equalsIgnoreCase(str3)) {
                                digest.uri = strNextToken;
                            } else if (AdobeImageOperation.RESPONSE.equalsIgnoreCase(str3)) {
                                digest.response = strNextToken;
                            }
                            str4 = null;
                            str2 = strNextToken;
                            continue;
                        } else {
                            str4 = str3;
                            str2 = strNextToken;
                        }
                        String str52 = str4;
                        str4 = str2;
                        str3 = str52;
                        break;
                }
                String str6 = str3;
                str2 = str4;
                str4 = str6;
                String str522 = str4;
                str4 = str2;
                str3 = str522;
            }
            int iCheckNonce = checkNonce(digest.nonce, request);
            if (iCheckNonce > 0) {
                principalAuthenticate = userRealm.authenticate(digest.username, digest, request);
                z = false;
            } else {
                z = iCheckNonce == 0;
            }
            if (principalAuthenticate == null) {
                Log.warn(new StringBuffer().append("AUTH FAILURE: user ").append(StringUtil.printable(digest.username)).toString());
            } else {
                request.setAuthType("DIGEST");
                request.setUserPrincipal(principalAuthenticate);
            }
        } else {
            z = false;
        }
        if (principalAuthenticate == null && response != null) {
            sendChallenge(userRealm, request, response, z);
        }
        return principalAuthenticate;
    }

    @Override // org.mortbay.jetty.security.Authenticator
    public String getAuthMethod() {
        return "DIGEST";
    }

    public void sendChallenge(UserRealm userRealm, Request request, Response response, boolean z) throws IOException {
        String contextPath = request.getContextPath();
        if (contextPath == null) {
            contextPath = URIUtil.SLASH;
        }
        response.setHeader("WWW-Authenticate", new StringBuffer().append("Digest realm=\"").append(userRealm.getName()).append("\", domain=\"").append(contextPath).append("\", nonce=\"").append(newNonce(request)).append("\", algorithm=MD5, qop=\"auth\"").append(this.useStale ? new StringBuffer().append(" stale=").append(z).toString() : "").toString());
        response.sendError(401);
    }

    public String newNonce(Request request) {
        long timeStamp = request.getTimeStamp();
        long j = this.nonceSecret;
        byte[] bArr = new byte[24];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) (timeStamp & 255);
            timeStamp >>= 8;
            bArr[i + 8] = (byte) (j & 255);
            j >>= 8;
        }
        byte[] bArrDigest = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr, 0, 16);
            bArrDigest = messageDigest.digest();
        } catch (Exception e2) {
            Log.warn(e2);
        }
        for (int i2 = 0; i2 < bArrDigest.length; i2++) {
            bArr[i2 + 8] = bArrDigest[i2];
            if (i2 == 23) {
                break;
            }
        }
        return new String(B64Code.encode(bArr));
    }

    public int checkNonce(String str, Request request) {
        try {
            byte[] bArrDecode = B64Code.decode(str.toCharArray());
            if (bArrDecode.length != 24) {
                return -1;
            }
            long j = 0;
            long j2 = this.nonceSecret;
            byte[] bArr = new byte[16];
            System.arraycopy(bArrDecode, 0, bArr, 0, 8);
            for (int i = 0; i < 8; i++) {
                bArr[i + 8] = (byte) (255 & j2);
                j2 >>= 8;
                j = (j << 8) + (255 & ((long) bArrDecode[7 - i]));
            }
            long timeStamp = request.getTimeStamp() - j;
            if (Log.isDebugEnabled()) {
                Log.debug(new StringBuffer().append("age=").append(timeStamp).toString());
            }
            byte[] bArrDigest = null;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.reset();
                messageDigest.update(bArr, 0, 16);
                bArrDigest = messageDigest.digest();
            } catch (Exception e2) {
                Log.warn(e2);
            }
            for (int i2 = 0; i2 < 16; i2++) {
                if (bArrDecode[i2 + 8] != bArrDigest[i2]) {
                    return -1;
                }
            }
            if (this.maxNonceAge > 0) {
                if (timeStamp >= 0) {
                    if (timeStamp > this.maxNonceAge) {
                    }
                }
                return 0;
            }
            return 1;
        } catch (Exception e3) {
            Log.ignore(e3);
            return -1;
        }
    }

    class Digest extends Credential {
        String method;
        String username = null;
        String realm = null;
        String nonce = null;
        String nc = null;
        String cnonce = null;
        String qop = null;
        String uri = null;
        String response = null;

        Digest(String str) {
            this.method = null;
            this.method = str;
        }

        @Override // org.mortbay.jetty.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            String string = obj instanceof String ? (String) obj : obj.toString();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                if (obj instanceof Credential.MD5) {
                    bArrDigest = ((Credential.MD5) obj).getDigest();
                } else {
                    messageDigest.update(this.username.getBytes(StringUtil.__ISO_8859_1));
                    messageDigest.update(HttpTokens.COLON);
                    messageDigest.update(this.realm.getBytes(StringUtil.__ISO_8859_1));
                    messageDigest.update(HttpTokens.COLON);
                    messageDigest.update(string.getBytes(StringUtil.__ISO_8859_1));
                    bArrDigest = messageDigest.digest();
                }
                messageDigest.reset();
                messageDigest.update(this.method.getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.uri.getBytes(StringUtil.__ISO_8859_1));
                byte[] bArrDigest2 = messageDigest.digest();
                messageDigest.update(TypeUtil.toString(bArrDigest, 16).getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.nonce.getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.nc.getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.cnonce.getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(this.qop.getBytes(StringUtil.__ISO_8859_1));
                messageDigest.update(HttpTokens.COLON);
                messageDigest.update(TypeUtil.toString(bArrDigest2, 16).getBytes(StringUtil.__ISO_8859_1));
                return TypeUtil.toString(messageDigest.digest(), 16).equalsIgnoreCase(this.response);
            } catch (Exception e2) {
                Log.warn(e2);
                return false;
            }
        }

        public String toString() {
            return new StringBuffer().append(this.username).append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR).append(this.response).toString();
        }
    }

    public long getMaxNonceAge() {
        return this.maxNonceAge;
    }

    public void setMaxNonceAge(long j) {
        this.maxNonceAge = j;
    }

    public long getNonceSecret() {
        return this.nonceSecret;
    }

    public void setNonceSecret(long j) {
        this.nonceSecret = j;
    }

    public void setUseStale(boolean z) {
        this.useStale = z;
    }

    public boolean getUseStale() {
        return this.useStale;
    }
}
