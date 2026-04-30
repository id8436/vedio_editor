package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.k.a.ak;
import com.twitter.sdk.android.core.internal.ac;
import com.twitter.sdk.android.core.internal.ae;
import com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class ComposerView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ImageView f4132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ImageView f4133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    EditText f4134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f4135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Button f4136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ObservableScrollView f4137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    View f4138g;
    ColorDrawable h;
    ImageView i;
    e j;
    private ak k;

    public ComposerView(Context context) {
        this(context, null);
    }

    public ComposerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public ComposerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.k = ak.a(getContext());
        this.h = new ColorDrawable(context.getResources().getColor(q.tw__composer_light_gray));
        inflate(context, s.tw__composer_view, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        a();
        this.f4133b.setOnClickListener(new j(this));
        this.f4136e.setOnClickListener(new k(this));
        this.f4134c.setOnEditorActionListener(new l(this));
        this.f4134c.addTextChangedListener(new m(this));
        this.f4137f.setScrollViewListener(new n(this));
    }

    void a() {
        this.f4132a = (ImageView) findViewById(r.tw__author_avatar);
        this.f4133b = (ImageView) findViewById(r.tw__composer_close);
        this.f4134c = (EditText) findViewById(r.tw__edit_tweet);
        this.f4135d = (TextView) findViewById(r.tw__char_count);
        this.f4136e = (Button) findViewById(r.tw__post_tweet);
        this.f4137f = (ObservableScrollView) findViewById(r.tw__composer_scroll_view);
        this.f4138g = findViewById(r.tw__composer_profile_divider);
        this.i = (ImageView) findViewById(r.tw__image_view);
    }

    void setCallbacks(e eVar) {
        this.j = eVar;
    }

    void setProfilePhotoView(com.twitter.sdk.android.core.a.q qVar) {
        String strA = ac.a(qVar, ae.REASONABLY_SMALL);
        if (this.k != null) {
            this.k.a(strA).a(this.h).a(this.f4132a);
        }
    }

    String getTweetText() {
        return this.f4134c.getText().toString();
    }

    void setTweetText(String str) {
        this.f4134c.setText(str);
    }

    void setCharCount(int i) {
        this.f4135d.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i)));
    }

    void setCharCountTextStyle(int i) {
        this.f4135d.setTextAppearance(getContext(), i);
    }

    void a(boolean z) {
        this.f4136e.setEnabled(z);
    }

    void setImageView(Uri uri) {
        if (this.k != null) {
            this.i.setVisibility(0);
            this.k.a(uri).a(this.i);
        }
    }
}
