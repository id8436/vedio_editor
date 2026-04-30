package com.j.a;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: SystemBarTintManager.java */
/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f3412g;
    private final boolean h;
    private final float i;

    private c(Activity activity, boolean z, boolean z2) {
        Resources resources = activity.getResources();
        this.h = resources.getConfiguration().orientation == 1;
        this.i = a(activity);
        this.f3408c = a(resources, "status_bar_height");
        this.f3409d = a((Context) activity);
        this.f3411f = b(activity);
        this.f3412g = c(activity);
        this.f3410e = this.f3411f > 0;
        this.f3406a = z;
        this.f3407b = z2;
    }

    @TargetApi(14)
    private int a(Context context) {
        if (Build.VERSION.SDK_INT < 14) {
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return context.getResources().getDimensionPixelSize(typedValue.resourceId);
    }

    @TargetApi(14)
    private int b(Context context) {
        String str;
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT < 14 || !d(context)) {
            return 0;
        }
        if (this.h) {
            str = "navigation_bar_height";
        } else {
            str = "navigation_bar_height_landscape";
        }
        return a(resources, str);
    }

    @TargetApi(14)
    private int c(Context context) {
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT < 14 || !d(context)) {
            return 0;
        }
        return a(resources, "navigation_bar_width");
    }

    @TargetApi(14)
    private boolean d(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showNavigationBar", "bool", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
        if (identifier != 0) {
            boolean z = resources.getBoolean(identifier);
            if ("1".equals(a.f3400a)) {
                return false;
            }
            if ("0".equals(a.f3400a)) {
                return true;
            }
            return z;
        }
        return ViewConfiguration.get(context).hasPermanentMenuKey() ? false : true;
    }

    private int a(Resources resources, String str) {
        int identifier = resources.getIdentifier(str, "dimen", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
        if (identifier <= 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    @SuppressLint({"NewApi"})
    private float a(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 16) {
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        return Math.min(displayMetrics.widthPixels / displayMetrics.density, displayMetrics.heightPixels / displayMetrics.density);
    }

    public boolean a() {
        return this.i >= 600.0f || this.h;
    }

    public int b() {
        return this.f3408c;
    }

    public boolean c() {
        return this.f3410e;
    }

    public int d() {
        return this.f3411f;
    }

    public int e() {
        return this.f3412g;
    }
}
