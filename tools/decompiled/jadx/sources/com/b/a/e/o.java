package com.b.a.e;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: RequestManagerRetriever.java */
/* JADX INFO: loaded from: classes2.dex */
public class o implements Handler.Callback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final o f1130c = new o();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile com.b.a.l f1133d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<FragmentManager, l> f1131a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Map<android.support.v4.app.FragmentManager, r> f1132b = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f1134e = new Handler(Looper.getMainLooper(), this);

    public static o a() {
        return f1130c;
    }

    o() {
    }

    private com.b.a.l b(Context context) {
        if (this.f1133d == null) {
            synchronized (this) {
                if (this.f1133d == null) {
                    this.f1133d = new com.b.a.l(context.getApplicationContext(), new b(), new h());
                }
            }
        }
        return this.f1133d;
    }

    public com.b.a.l a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (com.b.a.j.h.b() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return a((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return a((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return a(((ContextWrapper) context).getBaseContext());
            }
        }
        return b(context);
    }

    public com.b.a.l a(FragmentActivity fragmentActivity) {
        if (com.b.a.j.h.c()) {
            return a(fragmentActivity.getApplicationContext());
        }
        b((Activity) fragmentActivity);
        return a(fragmentActivity, fragmentActivity.getSupportFragmentManager());
    }

    @TargetApi(11)
    public com.b.a.l a(Activity activity) {
        if (com.b.a.j.h.c() || Build.VERSION.SDK_INT < 11) {
            return a(activity.getApplicationContext());
        }
        b(activity);
        return a(activity, activity.getFragmentManager());
    }

    @TargetApi(17)
    private static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @TargetApi(17)
    l a(FragmentManager fragmentManager) {
        l lVar = (l) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (lVar == null) {
            l lVar2 = this.f1131a.get(fragmentManager);
            if (lVar2 == null) {
                l lVar3 = new l();
                this.f1131a.put(fragmentManager, lVar3);
                fragmentManager.beginTransaction().add(lVar3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f1134e.obtainMessage(1, fragmentManager).sendToTarget();
                return lVar3;
            }
            return lVar2;
        }
        return lVar;
    }

    @TargetApi(11)
    com.b.a.l a(Context context, FragmentManager fragmentManager) {
        l lVarA = a(fragmentManager);
        com.b.a.l lVarB = lVarA.b();
        if (lVarB == null) {
            com.b.a.l lVar = new com.b.a.l(context, lVarA.a(), lVarA.c());
            lVarA.a(lVar);
            return lVar;
        }
        return lVarB;
    }

    r a(android.support.v4.app.FragmentManager fragmentManager) {
        r rVar = (r) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (rVar == null) {
            r rVar2 = this.f1132b.get(fragmentManager);
            if (rVar2 == null) {
                r rVar3 = new r();
                this.f1132b.put(fragmentManager, rVar3);
                fragmentManager.beginTransaction().add(rVar3, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f1134e.obtainMessage(2, fragmentManager).sendToTarget();
                return rVar3;
            }
            return rVar2;
        }
        return rVar;
    }

    com.b.a.l a(Context context, android.support.v4.app.FragmentManager fragmentManager) {
        r rVarA = a(fragmentManager);
        com.b.a.l lVarB = rVarA.b();
        if (lVarB == null) {
            com.b.a.l lVar = new com.b.a.l(context, rVarA.a(), rVarA.c());
            rVarA.a(lVar);
            return lVar;
        }
        return lVarB;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        ComponentCallbacks componentCallbacksRemove;
        Object obj = null;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                componentCallbacksRemove = this.f1131a.remove(obj);
                break;
            case 2:
                obj = (android.support.v4.app.FragmentManager) message.obj;
                componentCallbacksRemove = this.f1132b.remove(obj);
                break;
            default:
                z = false;
                componentCallbacksRemove = null;
                break;
        }
        if (z && componentCallbacksRemove == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
