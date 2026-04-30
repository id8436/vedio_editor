package com.facebook.i;

import android.R;
import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;

/* JADX INFO: compiled from: WebDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class bf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f2340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f2342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private bh f2344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bundle f2345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AccessToken f2346g;

    public bf(Context context, String str, Bundle bundle) {
        this.f2343d = R.style.Theme.Translucent.NoTitleBar;
        this.f2346g = AccessToken.a();
        if (this.f2346g == null) {
            String strA = as.a(context);
            if (strA != null) {
                this.f2341b = strA;
            } else {
                throw new com.facebook.q("Attempted to create a builder without a valid access token or a valid default Application ID.");
            }
        }
        a(context, str, bundle);
    }

    public bf(Context context, String str, String str2, Bundle bundle) {
        this.f2343d = R.style.Theme.Translucent.NoTitleBar;
        str = str == null ? as.a(context) : str;
        az.a(str, "applicationId");
        this.f2341b = str;
        a(context, str2, bundle);
    }

    public bf a(int i) {
        this.f2343d = i;
        return this;
    }

    public bf a(bh bhVar) {
        this.f2344e = bhVar;
        return this;
    }

    public ba a() {
        if (this.f2346g != null) {
            this.f2345f.putString("app_id", this.f2346g.h());
            this.f2345f.putString("access_token", this.f2346g.b());
        } else {
            this.f2345f.putString("app_id", this.f2341b);
        }
        return new ba(this.f2340a, this.f2342c, this.f2345f, this.f2343d, this.f2344e);
    }

    public String b() {
        return this.f2341b;
    }

    public Context c() {
        return this.f2340a;
    }

    public int d() {
        return this.f2343d;
    }

    public Bundle e() {
        return this.f2345f;
    }

    public bh f() {
        return this.f2344e;
    }

    private void a(Context context, String str, Bundle bundle) {
        this.f2340a = context;
        this.f2342c = str;
        if (bundle != null) {
            this.f2345f = bundle;
        } else {
            this.f2345f = new Bundle();
        }
    }
}
