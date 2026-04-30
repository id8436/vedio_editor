package org.apache.http.impl.auth;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.common.base.Ascii;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainQuery;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.google.gdata.data.codesearch.Package;
import com.google.gdata.util.ContentType;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueFormatterHC4;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class DigestSchemeHC4 extends RFC2617SchemeHC4 {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private String a1;
    private String a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestSchemeHC4(Charset charset) {
        super(charset);
        this.complete = false;
    }

    @Deprecated
    public DigestSchemeHC4(ChallengeState challengeState) {
        super(challengeState);
    }

    public DigestSchemeHC4() {
        this(Consts.ASCII);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter(AdobeAnalyticsETSEvent.ADOBE_ETS_EVENT_CANCEL_REASON_STALE))) {
            return false;
        }
        return this.complete;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContextHC4());
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        if (getParameter(OAuthParameters.REALM_KEY) == null) {
            throw new AuthenticationException("missing realm in challenge");
        }
        if (getParameter("nonce") == null) {
            throw new AuthenticationException("missing nonce in challenge");
        }
        getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
        getParameters().put(Package.ATTRIBUTE_URI, httpRequest.getRequestLine().getUri());
        if (getParameter(ContentType.ATTR_CHARSET) == null) {
            getParameters().put(ContentType.ATTR_CHARSET, getCredentialsCharset(httpRequest));
        }
        return createDigestHeader(credentials, httpRequest);
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception e2) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    private Header createDigestHeader(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        byte b2;
        String string;
        String parameter = getParameter(Package.ATTRIBUTE_URI);
        String parameter2 = getParameter(OAuthParameters.REALM_KEY);
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter6 == null) {
            parameter6 = "MD5";
        }
        HashSet hashSet = new HashSet(8);
        byte b3 = -1;
        String parameter7 = getParameter("qop");
        if (parameter7 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(parameter7, BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            while (stringTokenizer.hasMoreTokens()) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.US));
            }
            if ((httpRequest instanceof HttpEntityEnclosingRequest) && hashSet.contains("auth-int")) {
                b3 = 1;
            } else if (hashSet.contains(AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH)) {
                b3 = 2;
            }
            b2 = b3;
        } else {
            b2 = 0;
        }
        if (b2 == -1) {
            throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
        }
        String parameter8 = getParameter(ContentType.ATTR_CHARSET);
        if (parameter8 == null) {
            parameter8 = "ISO-8859-1";
        }
        String str = parameter6.equalsIgnoreCase("MD5-sess") ? "MD5" : parameter6;
        try {
            MessageDigest messageDigestCreateMessageDigest = createMessageDigest(str);
            String name = credentials.getUserPrincipal().getName();
            String password = credentials.getPassword();
            if (parameter3.equals(this.lastNonce)) {
                this.nounceCount++;
            } else {
                this.nounceCount = 1L;
                this.cnonce = null;
                this.lastNonce = parameter3;
            }
            StringBuilder sb = new StringBuilder(256);
            Formatter formatter = new Formatter(sb, Locale.US);
            formatter.format("%08x", Long.valueOf(this.nounceCount));
            formatter.close();
            String string2 = sb.toString();
            if (this.cnonce == null) {
                this.cnonce = createCnonce();
            }
            this.a1 = null;
            this.a2 = null;
            if (parameter6.equalsIgnoreCase("MD5-sess")) {
                sb.setLength(0);
                sb.append(name).append(':').append(parameter2).append(':').append(password);
                String strEncode = encode(messageDigestCreateMessageDigest.digest(EncodingUtils.getBytes(sb.toString(), parameter8)));
                sb.setLength(0);
                sb.append(strEncode).append(':').append(parameter3).append(':').append(this.cnonce);
                this.a1 = sb.toString();
            } else {
                sb.setLength(0);
                sb.append(name).append(':').append(parameter2).append(':').append(password);
                this.a1 = sb.toString();
            }
            String strEncode2 = encode(messageDigestCreateMessageDigest.digest(EncodingUtils.getBytes(this.a1, parameter8)));
            if (b2 != 2 && b2 == 1) {
                HttpEntity entity = null;
                if (httpRequest instanceof HttpEntityEnclosingRequest) {
                    entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
                }
                if (entity != null && !entity.isRepeatable()) {
                    if (hashSet.contains(AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH)) {
                        b2 = 2;
                        this.a2 = parameter5 + ':' + parameter;
                    } else {
                        throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                    }
                } else {
                    HttpEntityDigester httpEntityDigester = new HttpEntityDigester(messageDigestCreateMessageDigest);
                    if (entity != null) {
                        try {
                            entity.writeTo(httpEntityDigester);
                        } catch (IOException e2) {
                            throw new AuthenticationException("I/O error reading entity content", e2);
                        }
                    }
                    httpEntityDigester.close();
                    this.a2 = parameter5 + ':' + parameter + ':' + encode(httpEntityDigester.getDigest());
                }
            } else {
                this.a2 = parameter5 + ':' + parameter;
            }
            String strEncode3 = encode(messageDigestCreateMessageDigest.digest(EncodingUtils.getBytes(this.a2, parameter8)));
            if (b2 == 0) {
                sb.setLength(0);
                sb.append(strEncode2).append(':').append(parameter3).append(':').append(strEncode3);
                string = sb.toString();
            } else {
                sb.setLength(0);
                sb.append(strEncode2).append(':').append(parameter3).append(':').append(string2).append(':').append(this.cnonce).append(':').append(b2 == 1 ? "auth-int" : AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH).append(':').append(strEncode3);
                string = sb.toString();
            }
            String strEncode4 = encode(messageDigestCreateMessageDigest.digest(EncodingUtils.getAsciiBytes(string)));
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
            if (isProxy()) {
                charArrayBuffer.append("Proxy-Authorization");
            } else {
                charArrayBuffer.append("Authorization");
            }
            charArrayBuffer.append(": Digest ");
            ArrayList arrayList = new ArrayList(20);
            arrayList.add(new BasicNameValuePair(AppsForYourDomainQuery.USERNAME, name));
            arrayList.add(new BasicNameValuePair(OAuthParameters.REALM_KEY, parameter2));
            arrayList.add(new BasicNameValuePair("nonce", parameter3));
            arrayList.add(new BasicNameValuePair(Package.ATTRIBUTE_URI, parameter));
            arrayList.add(new BasicNameValuePair(AdobeImageOperation.RESPONSE, strEncode4));
            if (b2 != 0) {
                arrayList.add(new BasicNameValuePair("qop", b2 == 1 ? "auth-int" : AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_COMPONENT_AUTH));
                arrayList.add(new BasicNameValuePair("nc", string2));
                arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
            }
            arrayList.add(new BasicNameValuePair("algorithm", parameter6));
            if (parameter4 != null) {
                arrayList.add(new BasicNameValuePair("opaque", parameter4));
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    BasicNameValuePair basicNameValuePair = (BasicNameValuePair) arrayList.get(i2);
                    if (i2 > 0) {
                        charArrayBuffer.append(", ");
                    }
                    String name2 = basicNameValuePair.getName();
                    BasicHeaderValueFormatterHC4.INSTANCE.formatNameValuePair(charArrayBuffer, basicNameValuePair, !("nc".equals(name2) || "qop".equals(name2) || "algorithm".equals(name2)));
                    i = i2 + 1;
                } else {
                    return new BufferedHeader(charArrayBuffer);
                }
            }
        } catch (UnsupportedDigestAlgorithmException e3) {
            throw new AuthenticationException("Unsuppported digest algorithm: " + str);
        }
    }

    String getCnonce() {
        return this.cnonce;
    }

    String getA1() {
        return this.a1;
    }

    String getA2() {
        return this.a2;
    }

    static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            int i2 = bArr[i] & Ascii.SI;
            cArr[i * 2] = HEXADECIMAL[(bArr[i] & 240) >> 4];
            cArr[(i * 2) + 1] = HEXADECIMAL[i2];
        }
        return new String(cArr);
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBaseHC4
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DIGEST [complete=").append(this.complete).append(", nonce=").append(this.lastNonce).append(", nc=").append(this.nounceCount).append("]");
        return sb.toString();
    }
}
