package com.google.gdata.client.http;

import com.google.gdata.client.authn.oauth.GoogleOAuthParameters;
import com.google.gdata.data.ILink;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.common.base.CharEscapers;
import com.google.gdata.util.common.base.Charsets;
import com.google.gdata.util.common.base.StringUtil;
import com.google.gdata.util.common.io.CharStreams;
import com.google.gdata.util.common.util.Base64;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class AuthSubUtil {
    private static final String DEFAULT_DOMAIN = "www.google.com";
    private static final String DEFAULT_PROTOCOL = "https";
    private static final SecureRandom RANDOM = new SecureRandom();

    enum SignatureAlgorithm {
        DSA_SHA1("dsa-sha1", "SHA1withDSA"),
        RSA_SHA1("rsa-sha1", "SHA1withRSA");

        private final String authSubName;
        private final String jcaName;

        SignatureAlgorithm(String str, String str2) {
            this.authSubName = str;
            this.jcaName = str2;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.jcaName;
        }

        public String getAuthSubName() {
            return this.authSubName;
        }

        public String getJCAName() {
            return this.jcaName;
        }
    }

    public static String getRequestUrl(String str, String str2, boolean z, boolean z2) {
        return getRequestUrl("https", "www.google.com", str, str2, z, z2);
    }

    public static String getRequestUrl(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        StringBuffer stringBufferAppend = new StringBuffer(str).append("://");
        stringBufferAppend.append(str2).append("/accounts/AuthSubRequest");
        addParameter(stringBufferAppend, ILink.Rel.NEXT, str3);
        addParameter(stringBufferAppend, GoogleOAuthParameters.SCOPE_KEY, str4);
        addParameter(stringBufferAppend, "secure", z ? "1" : "0");
        addParameter(stringBufferAppend, "session", z2 ? "1" : "0");
        return stringBufferAppend.toString();
    }

    public static String getRequestUrl(String str, String str2, String str3, boolean z, boolean z2) {
        return getRequestUrl("https", "www.google.com", str, str2, str3, z, z2);
    }

    public static String getRequestUrl(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        StringBuffer stringBuffer = new StringBuffer(getRequestUrl(str, str2, str4, str5, z, z2));
        addParameter(stringBuffer, "hd", str3);
        return stringBuffer.toString();
    }

    public static String getTokenFromReply(URL url) {
        return getTokenFromReply(url.getQuery());
    }

    public static String getTokenFromReply(String str) {
        String str2 = (String) StringUtil.lowercaseKeys(StringUtil.string2Map(str, "&", Engagement.Comparison.EQ, true)).get("token");
        if (str2 == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str2, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static PrivateKey getPrivateKeyFromKeystore(String str, String str2, String str3, String str4) throws Throwable {
        FileInputStream fileInputStream;
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        try {
            fileInputStream = new FileInputStream(str);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            keyStore.load(fileInputStream, str2.toCharArray());
            PrivateKey privateKey = (PrivateKey) keyStore.getKey(str3, str4.toCharArray());
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return privateKey;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }

    public static String exchangeForSessionToken(String str, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        return exchangeForSessionToken("https", "www.google.com", str, privateKey);
    }

    public static String exchangeForSessionToken(String str, String str2, String str3, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        URL url = new URL(getSessionTokenUrl(str, str2));
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("Authorization", formAuthorizationHeader(str3, privateKey, url, "GET"));
        if (httpURLConnection.getResponseCode() != 200) {
            throw new AuthenticationException(httpURLConnection.getResponseCode() + ": " + httpURLConnection.getResponseMessage());
        }
        return (String) StringUtil.lowercaseKeys(StringUtil.string2Map(CharStreams.toString(new InputStreamReader(httpURLConnection.getInputStream(), Charsets.ISO_8859_1)), IOUtils.LINE_SEPARATOR_UNIX, Engagement.Comparison.EQ, true)).get("token");
    }

    public static Map<String, String> getTokenInfo(String str, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        return getTokenInfo("https", "www.google.com", str, privateKey);
    }

    public static Map<String, String> getTokenInfo(String str, String str2, String str3, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        URL url = new URL(getTokenInfoUrl(str, str2));
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("Authorization", formAuthorizationHeader(str3, privateKey, url, "GET"));
        if (httpURLConnection.getResponseCode() != 200) {
            throw new AuthenticationException(httpURLConnection.getResponseCode() + ": " + httpURLConnection.getResponseMessage());
        }
        return StringUtil.string2Map(CharStreams.toString(new InputStreamReader(httpURLConnection.getInputStream(), Charsets.ISO_8859_1)).trim(), IOUtils.LINE_SEPARATOR_UNIX, Engagement.Comparison.EQ, true);
    }

    public static void revokeToken(String str, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        revokeToken("https", "www.google.com", str, privateKey);
    }

    public static void revokeToken(String str, String str2, String str3, PrivateKey privateKey) throws GeneralSecurityException, AuthenticationException, IOException {
        URL url = new URL(getRevokeTokenUrl(str, str2));
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("Authorization", formAuthorizationHeader(str3, privateKey, url, "GET"));
        if (httpURLConnection.getResponseCode() != 200) {
            throw new AuthenticationException(httpURLConnection.getResponseCode() + ": " + httpURLConnection.getResponseMessage());
        }
    }

    public static String formAuthorizationHeader(String str, PrivateKey privateKey, URL url, String str2) throws GeneralSecurityException {
        if (privateKey == null) {
            return String.format("AuthSub token=\"%s\"", str);
        }
        String str3 = String.format("%s %s %d %s", str2, url.toExternalForm(), Long.valueOf(System.currentTimeMillis() / 1000), unsignedLongToString(RANDOM.nextLong()));
        SignatureAlgorithm sigAlg = getSigAlg(privateKey);
        return String.format("AuthSub token=\"%s\" data=\"%s\" sig=\"%s\" sigalg=\"%s\"", str, str3, Base64.encode(sign(privateKey, str3, sigAlg)), sigAlg.getAuthSubName());
    }

    private static void addParameter(StringBuffer stringBuffer, String str, String str2) {
        String strEscape = CharEscapers.uriEscaper().escape(str);
        String strEscape2 = CharEscapers.uriEscaper().escape(str2);
        if (stringBuffer.indexOf("?") == -1) {
            stringBuffer.append('?');
        } else {
            switch (stringBuffer.charAt(stringBuffer.length() - 1)) {
                case '&':
                case '?':
                    break;
                default:
                    stringBuffer.append('&');
                    break;
            }
        }
        stringBuffer.append(strEscape).append('=').append(strEscape2);
    }

    private static byte[] sign(PrivateKey privateKey, String str, SignatureAlgorithm signatureAlgorithm) throws GeneralSecurityException {
        Signature signature = Signature.getInstance(signatureAlgorithm.getJCAName());
        signature.initSign(privateKey);
        signature.update(str.getBytes());
        return signature.sign();
    }

    private static SignatureAlgorithm getSigAlg(PrivateKey privateKey) {
        String algorithm = privateKey.getAlgorithm();
        if ("dsa".equalsIgnoreCase(algorithm)) {
            return SignatureAlgorithm.DSA_SHA1;
        }
        if ("rsa".equalsIgnoreCase(algorithm)) {
            return SignatureAlgorithm.RSA_SHA1;
        }
        throw new IllegalArgumentException("Unknown algorithm in private key.");
    }

    private static String getSessionTokenUrl(String str, String str2) {
        return str + "://" + str2 + "/accounts/AuthSubSessionToken";
    }

    private static String getRevokeTokenUrl(String str, String str2) {
        return str + "://" + str2 + "/accounts/AuthSubRevokeToken";
    }

    private static String getTokenInfoUrl(String str, String str2) {
        return str + "://" + str2 + "/accounts/AuthSubTokenInfo";
    }

    private static String unsignedLongToString(long j) {
        if (j >= 0) {
            return Long.toString(j);
        }
        char[] cArr = new char[20];
        long j2 = j >>> 32;
        long j3 = (4294967295L & j) + ((j2 % ((long) 10)) << 32);
        long j4 = j2 / ((long) 10);
        int i = 20;
        while (true) {
            if (j3 > 0 || j4 > 0) {
                i--;
                cArr[i] = Character.forDigit((int) (j3 % ((long) 10)), 10);
                j3 = (j3 / ((long) 10)) + ((j4 % ((long) 10)) << 32);
                j4 /= (long) 10;
            } else {
                return new String(cArr, i, 20 - i);
            }
        }
    }
}
