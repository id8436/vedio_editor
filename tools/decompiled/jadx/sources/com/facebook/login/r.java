package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.i.az;
import com.facebook.login.LoginClient;
import com.google.api.gbase.client.ServiceError;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: LoginManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set<String> f3016a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile r f3017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f3018c = g.NATIVE_WITH_FALLBACK;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f3019d = a.FRIENDS;

    r() {
        az.b();
    }

    public static r a() {
        if (f3017b == null) {
            synchronized (r.class) {
                if (f3017b == null) {
                    f3017b = new r();
                }
            }
        }
        return f3017b;
    }

    public void a(com.facebook.k kVar, com.facebook.o<x> oVar) {
        if (!(kVar instanceof com.facebook.i.r)) {
            throw new com.facebook.q("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((com.facebook.i.r) kVar).b(com.facebook.i.t.Login.a(), new s(this, oVar));
    }

    boolean a(int i, Intent intent) {
        return a(i, intent, null);
    }

    boolean a(int i, Intent intent, com.facebook.o<x> oVar) {
        boolean z;
        AccessToken accessToken;
        m mVar;
        LoginClient.Request request;
        com.facebook.q qVar;
        Map<String, String> map;
        LoginClient.Request request2;
        AccessToken accessToken2;
        Map<String, String> map2;
        com.facebook.n nVar;
        m mVar2;
        com.facebook.n nVar2 = null;
        AccessToken accessToken3 = null;
        m mVar3 = m.ERROR;
        boolean z2 = false;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result == null) {
                request2 = null;
                accessToken2 = null;
                map2 = null;
                nVar = null;
                mVar2 = mVar3;
            } else {
                LoginClient.Request request3 = result.f2977e;
                m mVar4 = result.f2973a;
                if (i == -1) {
                    if (result.f2973a == m.SUCCESS) {
                        accessToken3 = result.f2974b;
                    } else {
                        nVar2 = new com.facebook.n(result.f2975c);
                    }
                } else if (i == 0) {
                    z2 = true;
                }
                accessToken2 = accessToken3;
                map2 = result.f2978f;
                request2 = request3;
                nVar = nVar2;
                mVar2 = mVar4;
            }
            z = z2;
            request = request2;
            accessToken = accessToken2;
            qVar = nVar;
            Map<String, String> map3 = map2;
            mVar = mVar2;
            map = map3;
        } else if (i != 0) {
            z = false;
            accessToken = null;
            mVar = mVar3;
            request = null;
            qVar = null;
            map = null;
        } else {
            z = true;
            accessToken = null;
            mVar = m.CANCEL;
            request = null;
            qVar = null;
            map = null;
        }
        if (qVar == null && accessToken == null && !z) {
            qVar = new com.facebook.q("Unexpected call to LoginManager.onActivityResult");
        }
        a(null, mVar, map, qVar, true, request);
        a(accessToken, request, qVar, z, oVar);
        return true;
    }

    public r a(g gVar) {
        this.f3018c = gVar;
        return this;
    }

    public r a(a aVar) {
        this.f3019d = aVar;
        return this;
    }

    public void b() {
        AccessToken.a((AccessToken) null);
        Profile.a(null);
    }

    public void a(Fragment fragment, Collection<String> collection) {
        a(collection);
        a(new v(fragment), b(collection));
    }

    private void a(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (!a(str)) {
                    throw new com.facebook.q(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
                }
            }
        }
    }

    static boolean a(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f3016a.contains(str));
    }

    private static Set<String> c() {
        return Collections.unmodifiableSet(new t());
    }

    private LoginClient.Request b(Collection<String> collection) {
        LoginClient.Request request = new LoginClient.Request(this.f3018c, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.f3019d, com.facebook.w.i(), UUID.randomUUID().toString());
        request.a(AccessToken.a() != null);
        return request;
    }

    private void a(y yVar, LoginClient.Request request) throws com.facebook.q {
        a(yVar.a(), request);
        com.facebook.i.r.a(com.facebook.i.t.Login.a(), new u(this));
        if (!b(yVar, request)) {
            com.facebook.q qVar = new com.facebook.q("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            a(yVar.a(), m.ERROR, null, qVar, false, request);
            throw qVar;
        }
    }

    private void a(Context context, LoginClient.Request request) {
        q qVarB = w.b(context);
        if (qVarB != null && request != null) {
            qVarB.a(request);
        }
    }

    private void a(Context context, m mVar, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        q qVarB = w.b(context);
        if (qVarB != null) {
            if (request == null) {
                qVarB.b("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap map2 = new HashMap();
            map2.put("try_login_activity", z ? "1" : "0");
            qVarB.a(request.e(), map2, mVar, map, exc);
        }
    }

    private boolean b(y yVar, LoginClient.Request request) {
        Intent intentA = a(request);
        if (!a(intentA)) {
            return false;
        }
        try {
            yVar.a(intentA, LoginClient.d());
            return true;
        } catch (ActivityNotFoundException e2) {
            return false;
        }
    }

    private boolean a(Intent intent) {
        return com.facebook.w.f().getPackageManager().resolveActivity(intent, 0) != null;
    }

    private Intent a(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(com.facebook.w.f(), com.facebook.m.class);
        intent.setAction(request.b().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable(ServiceError.REQUEST_TYPE, request);
        intent.putExtras(bundle);
        return intent;
    }

    static x a(LoginClient.Request request, AccessToken accessToken) {
        Set<String> setA = request.a();
        HashSet hashSet = new HashSet(accessToken.d());
        if (request.f()) {
            hashSet.retainAll(setA);
        }
        HashSet hashSet2 = new HashSet(setA);
        hashSet2.removeAll(hashSet);
        return new x(accessToken, hashSet, hashSet2);
    }

    private void a(AccessToken accessToken, LoginClient.Request request, com.facebook.q qVar, boolean z, com.facebook.o<x> oVar) {
        if (accessToken != null) {
            AccessToken.a(accessToken);
            Profile.b();
        }
        if (oVar != null) {
            x xVarA = accessToken != null ? a(request, accessToken) : null;
            if (z || (xVarA != null && xVarA.b().size() == 0)) {
                oVar.onCancel();
            } else if (qVar != null) {
                oVar.onError(qVar);
            } else if (accessToken != null) {
                oVar.onSuccess(xVarA);
            }
        }
    }
}
