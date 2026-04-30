package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.facebook.i.ah;
import com.facebook.i.ar;
import com.facebook.i.as;
import com.facebook.login.LoginClient;

/* JADX INFO: loaded from: classes2.dex */
class KatanaProxyLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new f();

    KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "katana_proxy_auth";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        String strL = LoginClient.l();
        Intent intentA = ah.a(this.f2980b.b(), request.d(), request.a(), strL, request.f(), request.g(), request.c());
        a("e2e", strL);
        return a(intentA, LoginClient.d());
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(int i, int i2, Intent intent) {
        LoginClient.Result resultA;
        LoginClient.Request requestC = this.f2980b.c();
        if (intent == null) {
            resultA = LoginClient.Result.a(requestC, "Operation canceled");
        } else if (i2 == 0) {
            resultA = b(requestC, intent);
        } else if (i2 != -1) {
            resultA = LoginClient.Result.a(requestC, "Unexpected resultCode from authorization.", null);
        } else {
            resultA = a(requestC, intent);
        }
        if (resultA != null) {
            this.f2980b.a(resultA);
            return true;
        }
        this.f2980b.h();
        return true;
    }

    private LoginClient.Result a(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String strA = a(extras);
        String string = extras.getString("error_code");
        String strB = b(extras);
        String string2 = extras.getString("e2e");
        if (!as.a(string2)) {
            a(string2);
        }
        if (strA == null && string == null && strB == null) {
            try {
                return LoginClient.Result.a(request, a(request.a(), extras, com.facebook.j.FACEBOOK_APPLICATION_WEB, request.d()));
            } catch (com.facebook.q e2) {
                return LoginClient.Result.a(request, null, e2.getMessage());
            }
        }
        if (ar.f2304a.contains(strA)) {
            return null;
        }
        if (ar.f2305b.contains(strA)) {
            return LoginClient.Result.a(request, (String) null);
        }
        return LoginClient.Result.a(request, strA, strB, string);
    }

    private LoginClient.Result b(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String strA = a(extras);
        String string = extras.getString("error_code");
        return "CONNECTION_FAILURE".equals(string) ? LoginClient.Result.a(request, strA, b(extras), string) : LoginClient.Result.a(request, strA);
    }

    private String a(Bundle bundle) {
        String string = bundle.getString(Adobe360Constants.kAdobe360SatusError);
        if (string == null) {
            return bundle.getString("error_type");
        }
        return string;
    }

    private String b(Bundle bundle) {
        String string = bundle.getString("error_message");
        if (string == null) {
            return bundle.getString("error_description");
        }
        return string;
    }

    protected boolean a(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.f2980b.a().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e2) {
            return false;
        }
    }

    KatanaProxyLoginMethodHandler(Parcel parcel) {
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
