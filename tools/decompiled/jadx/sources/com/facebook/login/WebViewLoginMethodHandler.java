package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.AccessToken;
import com.facebook.ac;
import com.facebook.i.as;
import com.facebook.i.ba;
import com.facebook.login.LoginClient;
import com.google.gdata.client.authn.oauth.GoogleOAuthParameters;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class WebViewLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new aa();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ba f2981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2982d;

    WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "web_view";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean c() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    void b() {
        if (this.f2981c != null) {
            this.f2981c.cancel();
            this.f2981c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!as.a(request.a())) {
            String strJoin = TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, request.a());
            bundle.putString(GoogleOAuthParameters.SCOPE_KEY, strJoin);
            a(GoogleOAuthParameters.SCOPE_KEY, strJoin);
        }
        bundle.putString("default_audience", request.c().a());
        AccessToken accessTokenA = AccessToken.a();
        String strB = accessTokenA != null ? accessTokenA.b() : null;
        if (strB != null && strB.equals(d())) {
            bundle.putString("access_token", strB);
            a("access_token", "1");
        } else {
            as.b(this.f2980b.b());
            a("access_token", "0");
        }
        z zVar = new z(this, request);
        this.f2982d = LoginClient.l();
        a("e2e", this.f2982d);
        FragmentActivity fragmentActivityB = this.f2980b.b();
        this.f2981c = new ab(fragmentActivityB, request.d(), bundle).a(this.f2982d).a(request.f()).a(zVar).a(com.facebook.w.k()).a();
        com.facebook.i.u uVar = new com.facebook.i.u();
        uVar.setRetainInstance(true);
        uVar.a(this.f2981c);
        uVar.show(fragmentActivityB.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    void a(LoginClient.Request request, Bundle bundle, com.facebook.q qVar) {
        String str;
        LoginClient.Result resultA;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f2982d = bundle.getString("e2e");
            }
            try {
                AccessToken accessTokenA = a(request.a(), bundle, com.facebook.j.WEB_VIEW, request.d());
                resultA = LoginClient.Result.a(this.f2980b.c(), accessTokenA);
                CookieSyncManager.createInstance(this.f2980b.b()).sync();
                b(accessTokenA.b());
            } catch (com.facebook.q e2) {
                resultA = LoginClient.Result.a(this.f2980b.c(), null, e2.getMessage());
            }
        } else if (qVar instanceof com.facebook.r) {
            resultA = LoginClient.Result.a(this.f2980b.c(), "User canceled log in.");
        } else {
            this.f2982d = null;
            String message = qVar.getMessage();
            if (qVar instanceof ac) {
                com.facebook.s sVarA = ((ac) qVar).a();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(sVarA.b()));
                message = sVarA.toString();
            } else {
                str = null;
            }
            resultA = LoginClient.Result.a(this.f2980b.c(), null, message, str);
        }
        if (!as.a(this.f2982d)) {
            a(this.f2982d);
        }
        this.f2980b.a(resultA);
    }

    private void b(String str) {
        this.f2980b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    private String d() {
        return this.f2980b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.f2982d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f2982d);
    }
}
