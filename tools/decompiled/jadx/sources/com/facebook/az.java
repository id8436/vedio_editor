package com.facebook;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;

/* JADX INFO: compiled from: ProfileManager.java */
/* JADX INFO: loaded from: classes2.dex */
final class az {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile az f1799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocalBroadcastManager f1800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ay f1801c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Profile f1802d;

    az(LocalBroadcastManager localBroadcastManager, ay ayVar) {
        com.facebook.i.az.a(localBroadcastManager, "localBroadcastManager");
        com.facebook.i.az.a(ayVar, "profileCache");
        this.f1800b = localBroadcastManager;
        this.f1801c = ayVar;
    }

    static az a() {
        if (f1799a == null) {
            synchronized (az.class) {
                if (f1799a == null) {
                    f1799a = new az(LocalBroadcastManager.getInstance(w.f()), new ay());
                }
            }
        }
        return f1799a;
    }

    Profile b() {
        return this.f1802d;
    }

    boolean c() {
        Profile profileA = this.f1801c.a();
        if (profileA == null) {
            return false;
        }
        a(profileA, false);
        return true;
    }

    void a(Profile profile) {
        a(profile, true);
    }

    private void a(Profile profile, boolean z) {
        Profile profile2 = this.f1802d;
        this.f1802d = profile;
        if (z) {
            if (profile != null) {
                this.f1801c.a(profile);
            } else {
                this.f1801c.b();
            }
        }
        if (!com.facebook.i.as.a(profile2, profile)) {
            a(profile2, profile);
        }
    }

    private void a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f1800b.sendBroadcast(intent);
    }
}
