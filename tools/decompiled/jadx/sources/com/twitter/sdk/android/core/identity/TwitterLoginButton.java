package com.twitter.sdk.android.core.identity;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.twitter.sdk.android.core.af;
import com.twitter.sdk.android.core.aj;
import com.twitter.sdk.android.core.r;
import com.twitter.sdk.android.core.v;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class TwitterLoginButton extends Button {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final WeakReference<Activity> f3879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile l f3880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View.OnClickListener f3881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.twitter.sdk.android.core.c<aj> f3882d;

    public TwitterLoginButton(Context context) {
        this(context, null);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null);
    }

    TwitterLoginButton(Context context, AttributeSet attributeSet, int i, l lVar) {
        super(context, attributeSet, i);
        this.f3879a = new WeakReference<>(getActivity());
        this.f3880b = lVar;
        a();
        b();
    }

    @TargetApi(21)
    private void a() {
        Resources resources = getResources();
        super.setCompoundDrawablesWithIntrinsicBounds(resources.getDrawable(com.twitter.sdk.android.core.o.tw__ic_logo_default), (Drawable) null, (Drawable) null, (Drawable) null);
        super.setCompoundDrawablePadding(resources.getDimensionPixelSize(com.twitter.sdk.android.core.n.tw__login_btn_drawable_padding));
        super.setText(r.tw__login_btn_txt);
        super.setTextColor(resources.getColor(com.twitter.sdk.android.core.m.tw__solid_white));
        super.setTextSize(0, resources.getDimensionPixelSize(com.twitter.sdk.android.core.n.tw__login_btn_text_size));
        super.setTypeface(Typeface.DEFAULT_BOLD);
        super.setPadding(resources.getDimensionPixelSize(com.twitter.sdk.android.core.n.tw__login_btn_left_padding), 0, resources.getDimensionPixelSize(com.twitter.sdk.android.core.n.tw__login_btn_right_padding), 0);
        super.setBackgroundResource(com.twitter.sdk.android.core.o.tw__login_btn);
        super.setOnClickListener(new p(this));
        if (Build.VERSION.SDK_INT >= 21) {
            super.setAllCaps(false);
        }
    }

    public void setCallback(com.twitter.sdk.android.core.c<aj> cVar) {
        if (cVar == null) {
            throw new IllegalArgumentException("Callback cannot be null");
        }
        this.f3882d = cVar;
    }

    public com.twitter.sdk.android.core.c<aj> getCallback() {
        return this.f3882d;
    }

    public void a(int i, int i2, Intent intent) {
        if (i == getTwitterAuthClient().a()) {
            getTwitterAuthClient().a(i, i2, intent);
        }
    }

    protected Activity getActivity() {
        if (getContext() instanceof Activity) {
            return (Activity) getContext();
        }
        if (isInEditMode()) {
            return null;
        }
        throw new IllegalStateException("TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f3881c = onClickListener;
    }

    l getTwitterAuthClient() {
        if (this.f3880b == null) {
            synchronized (TwitterLoginButton.class) {
                if (this.f3880b == null) {
                    this.f3880b = new l();
                }
            }
        }
        return this.f3880b;
    }

    private void b() {
        if (!isInEditMode()) {
            try {
                af.a();
            } catch (IllegalStateException e2) {
                v.h().c("Twitter", e2.getMessage());
                setEnabled(false);
            }
        }
    }
}
