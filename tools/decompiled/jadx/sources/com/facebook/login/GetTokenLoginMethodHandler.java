package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.i.ap;
import com.facebook.i.as;
import com.facebook.i.ay;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f2959c;

    GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "get_token";
    }

    @Override // com.facebook.login.LoginMethodHandler
    void b() {
        if (this.f2959c != null) {
            this.f2959c.b();
            this.f2959c.a((ap) null);
            this.f2959c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        this.f2959c = new b(this.f2980b.b(), request.d());
        if (!this.f2959c.a()) {
            return false;
        }
        this.f2980b.j();
        this.f2959c.a(new c(this, request));
        return true;
    }

    void a(LoginClient.Request request, Bundle bundle) {
        if (this.f2959c != null) {
            this.f2959c.a((ap) null);
        }
        this.f2959c = null;
        this.f2980b.k();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> setA = request.a();
            if (stringArrayList != null && (setA == null || stringArrayList.containsAll(setA))) {
                c(request, bundle);
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : setA) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                a("new_permissions", TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, hashSet));
            }
            request.a(hashSet);
        }
        this.f2980b.h();
    }

    void b(LoginClient.Request request, Bundle bundle) {
        this.f2980b.a(LoginClient.Result.a(this.f2980b.c(), a(bundle, com.facebook.j.FACEBOOK_APPLICATION_SERVICE, request.d())));
    }

    void c(LoginClient.Request request, Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.f2980b.j();
            as.a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), (ay) new d(this, bundle, request));
        } else {
            b(request, bundle);
        }
    }

    GetTokenLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
