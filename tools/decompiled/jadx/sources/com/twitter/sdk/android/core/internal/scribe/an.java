package com.twitter.sdk.android.core.internal.scribe;

import android.annotation.SuppressLint;
import android.content.Context;
import com.twitter.sdk.android.core.TwitterAuthToken;

/* JADX INFO: compiled from: TwitterCoreScribeClientHolder.java */
/* JADX INFO: loaded from: classes3.dex */
public class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static a f4025a;

    public static a a() {
        return f4025a;
    }

    public static void a(Context context, com.twitter.sdk.android.core.u<? extends com.twitter.sdk.android.core.t<TwitterAuthToken>> uVar, com.twitter.sdk.android.core.g gVar, com.twitter.sdk.android.core.internal.s sVar, String str, String str2) {
        f4025a = new a(context, uVar, gVar, sVar, a.a(str, str2));
    }
}
