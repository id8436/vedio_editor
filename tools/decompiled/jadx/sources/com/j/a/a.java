package com.j.a;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.adobe.customextractor.Constants;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: SystemBarTintManager.java */
/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f3401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3402c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f3404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f3405f;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
                declaredMethod.setAccessible(true);
                f3400a = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
            } catch (Throwable th) {
                f3400a = null;
            }
        }
    }

    @TargetApi(19)
    public a(Activity activity) {
        Window window = activity.getWindow();
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        if (Build.VERSION.SDK_INT >= 19) {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.windowTranslucentStatus, R.attr.windowTranslucentNavigation});
            try {
                this.f3402c = typedArrayObtainStyledAttributes.getBoolean(0, false);
                this.f3403d = typedArrayObtainStyledAttributes.getBoolean(1, false);
                typedArrayObtainStyledAttributes.recycle();
                WindowManager.LayoutParams attributes = window.getAttributes();
                if ((67108864 & attributes.flags) != 0) {
                    this.f3402c = true;
                }
                if ((attributes.flags & Constants.SAMPLE_FLAG_DECODE_ONLY) != 0) {
                    this.f3403d = true;
                }
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f3401b = new c(activity, this.f3402c, this.f3403d);
        if (!this.f3401b.c()) {
            this.f3403d = false;
        }
        if (this.f3402c) {
            a(activity, viewGroup);
        }
        if (this.f3403d) {
            b(activity, viewGroup);
        }
    }

    public c a() {
        return this.f3401b;
    }

    private void a(Context context, ViewGroup viewGroup) {
        this.f3404e = new View(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f3401b.b());
        layoutParams.gravity = 48;
        if (this.f3403d && !this.f3401b.a()) {
            layoutParams.rightMargin = this.f3401b.e();
        }
        this.f3404e.setLayoutParams(layoutParams);
        this.f3404e.setBackgroundColor(-1728053248);
        this.f3404e.setVisibility(8);
        viewGroup.addView(this.f3404e);
    }

    private void b(Context context, ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        this.f3405f = new View(context);
        if (this.f3401b.a()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.f3401b.d());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.f3401b.e(), -1);
            layoutParams.gravity = 5;
        }
        this.f3405f.setLayoutParams(layoutParams);
        this.f3405f.setBackgroundColor(-1728053248);
        this.f3405f.setVisibility(8);
        viewGroup.addView(this.f3405f);
    }
}
