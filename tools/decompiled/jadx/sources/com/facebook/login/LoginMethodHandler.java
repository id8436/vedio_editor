package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.facebook.AccessToken;
import com.facebook.i.as;
import com.facebook.login.LoginClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
abstract class LoginMethodHandler implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, String> f2979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LoginClient f2980b;

    abstract String a();

    abstract boolean a(LoginClient.Request request);

    LoginMethodHandler(LoginClient loginClient) {
        this.f2980b = loginClient;
    }

    LoginMethodHandler(Parcel parcel) {
        this.f2979a = as.a(parcel);
    }

    void a(LoginClient loginClient) {
        if (this.f2980b != null) {
            throw new com.facebook.q("Can't set LoginClient if it is already set.");
        }
        this.f2980b = loginClient;
    }

    boolean a(int i, int i2, Intent intent) {
        return false;
    }

    boolean c() {
        return false;
    }

    void b() {
    }

    protected void a(String str, Object obj) {
        if (this.f2979a == null) {
            this.f2979a = new HashMap();
        }
        this.f2979a.put(str, obj == null ? null : obj.toString());
    }

    protected void a(String str) {
        String strD = this.f2980b.c().d();
        com.facebook.a.a aVarA = com.facebook.a.a.a(this.f2980b.b(), strD);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", strD);
        aVarA.a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    static AccessToken a(Bundle bundle, com.facebook.j jVar, String str) {
        Date dateA = as.a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (as.a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, jVar, dateA, new Date());
    }

    public static AccessToken a(Collection<String> collection, Bundle bundle, com.facebook.j jVar, String str) throws com.facebook.q {
        Date dateA = as.a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        String string2 = bundle.getString("granted_scopes");
        Collection<String> arrayList = !as.a(string2) ? new ArrayList<>(Arrays.asList(string2.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR))) : collection;
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList2 = !as.a(string3) ? new ArrayList(Arrays.asList(string3.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR))) : null;
        if (as.a(string)) {
            return null;
        }
        return new AccessToken(string, str, b(bundle.getString("signed_request")), arrayList, arrayList2, jVar, dateA, new Date());
    }

    private static String b(String str) throws com.facebook.q {
        if (str == null || str.isEmpty()) {
            throw new com.facebook.q("Authorization response does not contain the signed_request");
        }
        try {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length == 2) {
                return new JSONObject(new String(Base64.decode(strArrSplit[1], 0), "UTF-8")).getString(BehanceSDKUrlUtil.KEY_USER_ID);
            }
        } catch (UnsupportedEncodingException e2) {
        } catch (JSONException e3) {
        }
        throw new com.facebook.q("Failed to retrieve user_id from signed_request");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        as.a(parcel, this.f2979a);
    }
}
