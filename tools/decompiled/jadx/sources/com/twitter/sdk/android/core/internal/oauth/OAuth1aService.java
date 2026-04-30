package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.client.authn.oauth.OAuthParameters;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.internal.z;
import d.bf;
import f.b.o;
import f.b.t;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class OAuth1aService extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    OAuthApi f3944a;

    /* JADX INFO: loaded from: classes.dex */
    interface OAuthApi {
        @o(a = "/oauth/access_token")
        f.g<bf> getAccessToken(@f.b.i(a = "Authorization") String str, @t(a = OAuthParameters.OAUTH_VERIFIER_KEY) String str2);

        @o(a = "/oauth/request_token")
        f.g<bf> getTempToken(@f.b.i(a = "Authorization") String str);
    }

    public OAuth1aService(af afVar, z zVar) {
        super(afVar, zVar);
        this.f3944a = (OAuthApi) f().a(OAuthApi.class);
    }

    public void a(com.twitter.sdk.android.core.c<OAuthResponse> cVar) {
        TwitterAuthConfig twitterAuthConfigC = c().c();
        this.f3944a.getTempToken(new b().a(twitterAuthConfigC, null, a(twitterAuthConfigC), "POST", a(), null)).a(b(cVar));
    }

    String a() {
        return d().a() + "/oauth/request_token";
    }

    public String a(TwitterAuthConfig twitterAuthConfig) {
        return Uri.parse("twittersdk://callback").buildUpon().appendQueryParameter(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, c().b()).appendQueryParameter("app", twitterAuthConfig.a()).build().toString();
    }

    public void a(com.twitter.sdk.android.core.c<OAuthResponse> cVar, TwitterAuthToken twitterAuthToken, String str) {
        this.f3944a.getAccessToken(new b().a(c().c(), twitterAuthToken, null, "POST", b(), null), str).a(b(cVar));
    }

    String b() {
        return d().a() + "/oauth/access_token";
    }

    public String a(TwitterAuthToken twitterAuthToken) {
        return d().a("oauth", "authorize").appendQueryParameter(OAuthParameters.OAUTH_TOKEN_KEY, twitterAuthToken.f3818b).build().toString();
    }

    public static OAuthResponse a(String str) {
        long j;
        TreeMap<String, String> treeMapA = com.twitter.sdk.android.core.internal.a.f.a(str, false);
        String str2 = treeMapA.get(OAuthParameters.OAUTH_TOKEN_KEY);
        String str3 = treeMapA.get(OAuthParameters.OAUTH_TOKEN_SECRET_KEY);
        String str4 = treeMapA.get("screen_name");
        if (treeMapA.containsKey(BehanceSDKUrlUtil.KEY_USER_ID)) {
            j = Long.parseLong(treeMapA.get(BehanceSDKUrlUtil.KEY_USER_ID));
        } else {
            j = 0;
        }
        if (str2 == null || str3 == null) {
            return null;
        }
        return new OAuthResponse(new TwitterAuthToken(str2, str3), str4, j);
    }

    com.twitter.sdk.android.core.c<bf> b(com.twitter.sdk.android.core.c<OAuthResponse> cVar) {
        return new d(this, cVar);
    }
}
