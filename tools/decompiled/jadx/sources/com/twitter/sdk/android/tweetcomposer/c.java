package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.aj;

/* JADX INFO: compiled from: ComposerController.java */
/* JADX INFO: loaded from: classes3.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ComposerView f4143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final aj f4144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Uri f4145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final a f4146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final g f4147e;

    c(ComposerView composerView, aj ajVar, Uri uri, String str, String str2, a aVar) {
        this(composerView, ajVar, uri, str, str2, aVar, new g());
    }

    c(ComposerView composerView, aj ajVar, Uri uri, String str, String str2, a aVar, g gVar) {
        this.f4143a = composerView;
        this.f4144b = ajVar;
        this.f4145c = uri;
        this.f4146d = aVar;
        this.f4147e = gVar;
        composerView.setCallbacks(new f(this));
        composerView.setTweetText(a(str, str2));
        a();
        a(uri);
        gVar.b().a();
    }

    String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    void a() {
        this.f4147e.a(this.f4144b).getAccountService().verifyCredentials(false, true, false).a(new d(this));
    }

    void a(Uri uri) {
        if (uri != null) {
            this.f4143a.setImageView(uri);
        }
    }

    void b() {
        this.f4147e.b().a("cancel");
        c();
        this.f4146d.a();
    }

    int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return this.f4147e.a().a(str);
    }

    void c() {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL");
        intent.setPackage(this.f4143a.getContext().getPackageName());
        this.f4143a.getContext().sendBroadcast(intent);
    }

    static int a(int i) {
        return 140 - i;
    }

    static boolean b(int i) {
        return i > 0 && i <= 140;
    }

    static boolean c(int i) {
        return i > 140;
    }
}
