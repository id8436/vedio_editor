package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: compiled from: TweetComposer.java */
/* JADX INFO: loaded from: classes3.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private URL f4167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Uri f4168d;

    public y(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        this.f4165a = context;
    }

    public y a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("text must not be null.");
        }
        if (this.f4166b != null) {
            throw new IllegalStateException("text already set.");
        }
        this.f4166b = str;
        return this;
    }

    public Intent a() {
        Intent intentB = b();
        if (intentB == null) {
            return c();
        }
        return intentB;
    }

    Intent b() {
        Intent intent = new Intent("android.intent.action.SEND");
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.f4166b)) {
            sb.append(this.f4166b);
        }
        if (this.f4167c != null) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(this.f4167c.toString());
        }
        intent.putExtra("android.intent.extra.TEXT", sb.toString());
        intent.setType(MimeTypes.TEXT_PLAIN);
        if (this.f4168d != null) {
            intent.putExtra("android.intent.extra.STREAM", this.f4168d);
            intent.setType("image/jpeg");
        }
        for (ResolveInfo resolveInfo : this.f4165a.getPackageManager().queryIntentActivities(intent, 65536)) {
            if (resolveInfo.activityInfo.packageName.startsWith("com.twitter.android")) {
                intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                return intent;
            }
        }
        return null;
    }

    Intent c() {
        return new Intent("android.intent.action.VIEW", Uri.parse(String.format("https://twitter.com/intent/tweet?text=%s&url=%s", com.twitter.sdk.android.core.internal.a.f.a(this.f4166b), com.twitter.sdk.android.core.internal.a.f.a(this.f4167c == null ? "" : this.f4167c.toString()))));
    }

    public void d() {
        this.f4165a.startActivity(a());
    }
}
