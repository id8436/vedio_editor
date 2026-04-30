package com.twitter.sdk.android.core.internal.oauth;

import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.v;
import e.k;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.mortbay.util.StringUtil;

/* JADX INFO: compiled from: OAuth1aParameters.java */
/* JADX INFO: loaded from: classes3.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SecureRandom f3952a = new SecureRandom();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TwitterAuthConfig f3953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TwitterAuthToken f3954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f3956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f3957f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<String, String> f3958g;

    public c(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        this.f3953b = twitterAuthConfig;
        this.f3954c = twitterAuthToken;
        this.f3955d = str;
        this.f3956e = str2;
        this.f3957f = str3;
        this.f3958g = map;
    }

    public String a() {
        String strB = b();
        String strC = c();
        return a(strB, strC, a(a(strB, strC)));
    }

    private String b() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(f3952a.nextLong()));
    }

    private String c() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    String a(String str, String str2) {
        URI uriCreate = URI.create(this.f3957f);
        TreeMap<String, String> treeMapA = com.twitter.sdk.android.core.internal.a.f.a(uriCreate, true);
        if (this.f3958g != null) {
            treeMapA.putAll(this.f3958g);
        }
        if (this.f3955d != null) {
            treeMapA.put(OAuthParameters.OAUTH_CALLBACK_KEY, this.f3955d);
        }
        treeMapA.put(OAuthParameters.OAUTH_CONSUMER_KEY, this.f3953b.a());
        treeMapA.put(OAuthParameters.OAUTH_NONCE_KEY, str);
        treeMapA.put(OAuthParameters.OAUTH_SIGNATURE_METHOD_KEY, "HMAC-SHA1");
        treeMapA.put(OAuthParameters.OAUTH_TIMESTAMP_KEY, str2);
        if (this.f3954c != null && this.f3954c.f3818b != null) {
            treeMapA.put(OAuthParameters.OAUTH_TOKEN_KEY, this.f3954c.f3818b);
        }
        treeMapA.put("oauth_version", "1.0");
        return this.f3956e.toUpperCase(Locale.ENGLISH) + '&' + com.twitter.sdk.android.core.internal.a.f.c(uriCreate.getScheme() + "://" + uriCreate.getHost() + uriCreate.getPath()) + '&' + a(treeMapA);
    }

    private String a(TreeMap<String, String> treeMap) {
        StringBuilder sb = new StringBuilder();
        int size = treeMap.size();
        int i = 0;
        Iterator<Map.Entry<String, String>> it = treeMap.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                sb.append(com.twitter.sdk.android.core.internal.a.f.c(com.twitter.sdk.android.core.internal.a.f.c(next.getKey()))).append("%3D").append(com.twitter.sdk.android.core.internal.a.f.c(com.twitter.sdk.android.core.internal.a.f.c(next.getValue())));
                i = i2 + 1;
                if (i < size) {
                    sb.append("%26");
                }
            } else {
                return sb.toString();
            }
        }
    }

    String a(String str) {
        try {
            String strD = d();
            byte[] bytes = str.getBytes(StringUtil.__UTF8Alt);
            SecretKeySpec secretKeySpec = new SecretKeySpec(strD.getBytes(StringUtil.__UTF8Alt), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] bArrDoFinal = mac.doFinal(bytes);
            return k.a(bArrDoFinal, 0, bArrDoFinal.length).b();
        } catch (UnsupportedEncodingException e2) {
            v.h().c("Twitter", "Failed to calculate signature", e2);
            return "";
        } catch (InvalidKeyException e3) {
            v.h().c("Twitter", "Failed to calculate signature", e3);
            return "";
        } catch (NoSuchAlgorithmException e4) {
            v.h().c("Twitter", "Failed to calculate signature", e4);
            return "";
        }
    }

    private String d() {
        return com.twitter.sdk.android.core.internal.a.f.a(this.f3953b.b()) + '&' + com.twitter.sdk.android.core.internal.a.f.a(this.f3954c != null ? this.f3954c.f3819c : null);
    }

    String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(OAuthParameters.OAUTH_KEY);
        a(sb, OAuthParameters.OAUTH_CALLBACK_KEY, this.f3955d);
        a(sb, OAuthParameters.OAUTH_CONSUMER_KEY, this.f3953b.a());
        a(sb, OAuthParameters.OAUTH_NONCE_KEY, str);
        a(sb, OAuthParameters.OAUTH_SIGNATURE_KEY, str3);
        a(sb, OAuthParameters.OAUTH_SIGNATURE_METHOD_KEY, "HMAC-SHA1");
        a(sb, OAuthParameters.OAUTH_TIMESTAMP_KEY, str2);
        a(sb, OAuthParameters.OAUTH_TOKEN_KEY, this.f3954c != null ? this.f3954c.f3818b : null);
        a(sb, "oauth_version", "1.0");
        return sb.substring(0, sb.length() - 1);
    }

    private void a(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ').append(com.twitter.sdk.android.core.internal.a.f.c(str)).append("=\"").append(com.twitter.sdk.android.core.internal.a.f.c(str2)).append("\",");
        }
    }
}
