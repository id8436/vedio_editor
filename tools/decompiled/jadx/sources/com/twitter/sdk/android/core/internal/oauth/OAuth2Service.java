package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.internal.z;
import f.b.k;
import f.b.o;

/* JADX INFO: loaded from: classes3.dex */
public class OAuth2Service extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    OAuth2Api f3945a;

    /* JADX INFO: loaded from: classes.dex */
    interface OAuth2Api {
        @k(a = {"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o(a = "/oauth2/token")
        @f.b.e
        f.g<OAuth2Token> getAppAuthToken(@f.b.i(a = "Authorization") String str, @f.b.c(a = "grant_type") String str2);

        @o(a = "/1.1/guest/activate.json")
        f.g<a> getGuestToken(@f.b.i(a = "Authorization") String str);
    }

    public OAuth2Service(af afVar, z zVar) {
        super(afVar, zVar);
        this.f3945a = (OAuth2Api) f().a(OAuth2Api.class);
    }

    public void a(com.twitter.sdk.android.core.c<GuestAuthToken> cVar) {
        b(new e(this, cVar));
    }

    void b(com.twitter.sdk.android.core.c<OAuth2Token> cVar) {
        this.f3945a.getAppAuthToken(a(), "client_credentials").a(cVar);
    }

    void a(com.twitter.sdk.android.core.c<a> cVar, OAuth2Token oAuth2Token) {
        this.f3945a.getGuestToken(a(oAuth2Token)).a(cVar);
    }

    private String a(OAuth2Token oAuth2Token) {
        return "Bearer " + oAuth2Token.d();
    }

    private String a() {
        TwitterAuthConfig twitterAuthConfigC = c().c();
        return "Basic " + e.k.a(com.twitter.sdk.android.core.internal.a.f.c(twitterAuthConfigC.a()) + ":" + com.twitter.sdk.android.core.internal.a.f.c(twitterAuthConfigC.b())).b();
    }
}
