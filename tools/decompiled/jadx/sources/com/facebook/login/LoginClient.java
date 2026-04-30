package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.behance.sdk.util.BehanceSDKConstants;
import com.facebook.AccessToken;
import com.facebook.bh;
import com.facebook.i.as;
import com.facebook.i.az;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    LoginMethodHandler[] f2960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Fragment f2962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    j f2963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    i f2964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2965f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Request f2966g;
    Map<String, String> h;
    private q i;

    public LoginClient(Fragment fragment) {
        this.f2961b = -1;
        this.f2962c = fragment;
    }

    public Fragment a() {
        return this.f2962c;
    }

    void a(Fragment fragment) {
        if (this.f2962c != null) {
            throw new com.facebook.q("Can't set fragment once it is already set.");
        }
        this.f2962c = fragment;
    }

    FragmentActivity b() {
        return this.f2962c.getActivity();
    }

    public Request c() {
        return this.f2966g;
    }

    public static int d() {
        return com.facebook.i.t.Login.a();
    }

    void a(Request request) {
        if (!e()) {
            b(request);
        }
    }

    void b(Request request) {
        if (request != null) {
            if (this.f2966g != null) {
                throw new com.facebook.q("Attempted to authorize while a request is pending.");
            }
            if (AccessToken.a() == null || g()) {
                this.f2966g = request;
                this.f2960a = c(request);
                h();
            }
        }
    }

    boolean e() {
        return this.f2966g != null && this.f2961b >= 0;
    }

    void f() {
        if (this.f2961b >= 0) {
            m().b();
        }
    }

    private LoginMethodHandler m() {
        if (this.f2961b >= 0) {
            return this.f2960a[this.f2961b];
        }
        return null;
    }

    public boolean a(int i, int i2, Intent intent) {
        if (this.f2966g != null) {
            return m().a(i, i2, intent);
        }
        return false;
    }

    private LoginMethodHandler[] c(Request request) {
        ArrayList arrayList = new ArrayList();
        g gVarB = request.b();
        if (gVarB.a()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (gVarB.b()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    boolean g() {
        if (this.f2965f) {
            return true;
        }
        if (a("android.permission.INTERNET") != 0) {
            FragmentActivity fragmentActivityB = b();
            b(Result.a(this.f2966g, fragmentActivityB.getString(bh.com_facebook_internet_permission_error_title), fragmentActivityB.getString(bh.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.f2965f = true;
        return true;
    }

    void h() {
        if (this.f2961b >= 0) {
            a(m().a(), "skipped", null, null, m().f2979a);
        }
        while (this.f2960a != null && this.f2961b < this.f2960a.length - 1) {
            this.f2961b++;
            if (i()) {
                return;
            }
        }
        if (this.f2966g != null) {
            n();
        }
    }

    private void n() {
        b(Result.a(this.f2966g, "Login attempt failed.", null));
    }

    private void a(String str, String str2, boolean z) {
        if (this.h == null) {
            this.h = new HashMap();
        }
        if (this.h.containsKey(str) && z) {
            str2 = this.h.get(str) + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR + str2;
        }
        this.h.put(str, str2);
    }

    boolean i() {
        boolean zA = false;
        LoginMethodHandler loginMethodHandlerM = m();
        if (loginMethodHandlerM.c() && !g()) {
            a("no_internet_permission", "1", false);
        } else {
            zA = loginMethodHandlerM.a(this.f2966g);
            if (zA) {
                o().a(this.f2966g.e(), loginMethodHandlerM.a());
            } else {
                a("not_tried", loginMethodHandlerM.a(), true);
            }
        }
        return zA;
    }

    void a(Result result) {
        if (result.f2974b != null && AccessToken.a() != null) {
            c(result);
        } else {
            b(result);
        }
    }

    void b(Result result) {
        LoginMethodHandler loginMethodHandlerM = m();
        if (loginMethodHandlerM != null) {
            a(loginMethodHandlerM.a(), result, loginMethodHandlerM.f2979a);
        }
        if (this.h != null) {
            result.f2978f = this.h;
        }
        this.f2960a = null;
        this.f2961b = -1;
        this.f2966g = null;
        this.h = null;
        d(result);
    }

    void a(j jVar) {
        this.f2963d = jVar;
    }

    void a(i iVar) {
        this.f2964e = iVar;
    }

    int a(String str) {
        return b().checkCallingOrSelfPermission(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031 A[Catch: Exception -> 0x003c, TRY_LEAVE, TryCatch #0 {Exception -> 0x003c, blocks: (B:9:0x0017, B:11:0x0025, B:12:0x002d, B:14:0x0031), top: B:18:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void c(com.facebook.login.LoginClient.Result r4) {
        /*
            r3 = this;
            com.facebook.AccessToken r0 = r4.f2974b
            if (r0 != 0) goto Ld
            com.facebook.q r0 = new com.facebook.q
            java.lang.String r1 = "Can't validate without a token"
            r0.<init>(r1)
            throw r0
        Ld:
            com.facebook.AccessToken r0 = com.facebook.AccessToken.a()
            com.facebook.AccessToken r1 = r4.f2974b
            if (r0 == 0) goto L31
            if (r1 == 0) goto L31
            java.lang.String r0 = r0.i()     // Catch: java.lang.Exception -> L3c
            java.lang.String r1 = r1.i()     // Catch: java.lang.Exception -> L3c
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L3c
            if (r0 == 0) goto L31
            com.facebook.login.LoginClient$Request r0 = r3.f2966g     // Catch: java.lang.Exception -> L3c
            com.facebook.AccessToken r1 = r4.f2974b     // Catch: java.lang.Exception -> L3c
            com.facebook.login.LoginClient$Result r0 = com.facebook.login.LoginClient.Result.a(r0, r1)     // Catch: java.lang.Exception -> L3c
        L2d:
            r3.b(r0)     // Catch: java.lang.Exception -> L3c
        L30:
            return
        L31:
            com.facebook.login.LoginClient$Request r0 = r3.f2966g     // Catch: java.lang.Exception -> L3c
            java.lang.String r1 = "User logged in as different Facebook user."
            r2 = 0
            com.facebook.login.LoginClient$Result r0 = com.facebook.login.LoginClient.Result.a(r0, r1, r2)     // Catch: java.lang.Exception -> L3c
            goto L2d
        L3c:
            r0 = move-exception
            com.facebook.login.LoginClient$Request r1 = r3.f2966g
            java.lang.String r2 = "Caught exception"
            java.lang.String r0 = r0.getMessage()
            com.facebook.login.LoginClient$Result r0 = com.facebook.login.LoginClient.Result.a(r1, r2, r0)
            r3.b(r0)
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginClient.c(com.facebook.login.LoginClient$Result):void");
    }

    private q o() {
        if (this.i == null || !this.i.a().equals(this.f2966g.d())) {
            this.i = new q(b(), this.f2966g.d());
        }
        return this.i;
    }

    private void d(Result result) {
        if (this.f2963d != null) {
            this.f2963d.a(result);
        }
    }

    void j() {
        if (this.f2964e != null) {
            this.f2964e.a();
        }
    }

    void k() {
        if (this.f2964e != null) {
            this.f2964e.b();
        }
    }

    private void a(String str, Result result, Map<String, String> map) {
        a(str, result.f2973a.a(), result.f2975c, result.f2976d, map);
    }

    private void a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.f2966g == null) {
            o().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            o().a(this.f2966g.e(), str, str2, str3, str4, map);
        }
    }

    static String l() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e2) {
        }
        return jSONObject.toString();
    }

    public class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new k();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g f2967a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Set<String> f2968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f2969c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f2970d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f2971e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2972f;

        /* synthetic */ Request(Parcel parcel, h hVar) {
            this(parcel);
        }

        Request(g gVar, Set<String> set, a aVar, String str, String str2) {
            this.f2972f = false;
            this.f2967a = gVar;
            this.f2968b = set == null ? new HashSet<>() : set;
            this.f2969c = aVar;
            this.f2970d = str;
            this.f2971e = str2;
        }

        Set<String> a() {
            return this.f2968b;
        }

        void a(Set<String> set) {
            az.a((Object) set, "permissions");
            this.f2968b = set;
        }

        g b() {
            return this.f2967a;
        }

        a c() {
            return this.f2969c;
        }

        String d() {
            return this.f2970d;
        }

        String e() {
            return this.f2971e;
        }

        boolean f() {
            return this.f2972f;
        }

        void a(boolean z) {
            this.f2972f = z;
        }

        boolean g() {
            Iterator<String> it = this.f2968b.iterator();
            while (it.hasNext()) {
                if (r.a(it.next())) {
                    return true;
                }
            }
            return false;
        }

        private Request(Parcel parcel) {
            this.f2972f = false;
            String string = parcel.readString();
            this.f2967a = string != null ? g.valueOf(string) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f2968b = new HashSet(arrayList);
            String string2 = parcel.readString();
            this.f2969c = string2 != null ? a.valueOf(string2) : null;
            this.f2970d = parcel.readString();
            this.f2971e = parcel.readString();
            this.f2972f = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2967a != null ? this.f2967a.name() : null);
            parcel.writeStringList(new ArrayList(this.f2968b));
            parcel.writeString(this.f2969c != null ? this.f2969c.name() : null);
            parcel.writeString(this.f2970d);
            parcel.writeString(this.f2971e);
            parcel.writeByte((byte) (this.f2972f ? 1 : 0));
        }
    }

    public class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new l();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final m f2973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AccessToken f2974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f2975c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f2976d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Request f2977e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Map<String, String> f2978f;

        /* synthetic */ Result(Parcel parcel, h hVar) {
            this(parcel);
        }

        Result(Request request, m mVar, AccessToken accessToken, String str, String str2) {
            az.a(mVar, ProjectHostingService.PROJECTHOSTING_SERVICE);
            this.f2977e = request;
            this.f2974b = accessToken;
            this.f2975c = str;
            this.f2973a = mVar;
            this.f2976d = str2;
        }

        static Result a(Request request, AccessToken accessToken) {
            return new Result(request, m.SUCCESS, accessToken, null, null);
        }

        static Result a(Request request, String str) {
            return new Result(request, m.CANCEL, null, str, null);
        }

        static Result a(Request request, String str, String str2) {
            return a(request, str, str2, null);
        }

        static Result a(Request request, String str, String str2, String str3) {
            return new Result(request, m.ERROR, null, TextUtils.join(": ", as.b(str, str2)), str3);
        }

        private Result(Parcel parcel) {
            this.f2973a = m.valueOf(parcel.readString());
            this.f2974b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.f2975c = parcel.readString();
            this.f2976d = parcel.readString();
            this.f2977e = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f2978f = as.a(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2973a.name());
            parcel.writeParcelable(this.f2974b, i);
            parcel.writeString(this.f2975c);
            parcel.writeString(this.f2976d);
            parcel.writeParcelable(this.f2977e, i);
            as.a(parcel, this.f2978f);
        }
    }

    public LoginClient(Parcel parcel) {
        this.f2961b = -1;
        Parcelable[] parcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f2960a = new LoginMethodHandler[parcelableArray.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < parcelableArray.length) {
                this.f2960a[i2] = (LoginMethodHandler) parcelableArray[i2];
                this.f2960a[i2].a(this);
                i = i2 + 1;
            } else {
                this.f2961b = parcel.readInt();
                this.f2966g = (Request) parcel.readParcelable(Request.class.getClassLoader());
                this.h = as.a(parcel);
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f2960a, i);
        parcel.writeInt(this.f2961b);
        parcel.writeParcelable(this.f2966g, i);
        as.a(parcel, this.h);
    }
}
