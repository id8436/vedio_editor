package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.d.d.k;
import com.facebook.d.d.m;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleDraweeView extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m<? extends com.facebook.drawee.h.d> f2188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.drawee.h.d f2189b;

    public static void a(m<? extends com.facebook.drawee.h.d> mVar) {
        f2188a = mVar;
    }

    public SimpleDraweeView(Context context, com.facebook.drawee.f.a aVar) {
        super(context, aVar);
        b(context, null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        b(context, null);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context, attributeSet);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(context, attributeSet);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        b(context, attributeSet);
    }

    private void b(Context context, @Nullable AttributeSet attributeSet) {
        if (!isInEditMode()) {
            k.a(f2188a, "SimpleDraweeView was not initialized!");
            this.f2189b = f2188a.b();
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.facebook.drawee.b.SimpleDraweeView);
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(com.facebook.drawee.b.SimpleDraweeView_actualImageUri)) {
                        a(Uri.parse(typedArrayObtainStyledAttributes.getString(com.facebook.drawee.b.SimpleDraweeView_actualImageUri)), (Object) null);
                    }
                } finally {
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        }
    }

    protected com.facebook.drawee.h.d getControllerBuilder() {
        return this.f2189b;
    }

    @Override // com.facebook.drawee.view.d, android.widget.ImageView
    public void setImageURI(Uri uri) {
        a(uri, (Object) null);
    }

    public void setImageURI(@Nullable String str) {
        a(str, (Object) null);
    }

    public void a(Uri uri, @Nullable Object obj) {
        setController(this.f2189b.e(obj).b(uri).b(getController()).p());
    }

    public void a(@Nullable String str, @Nullable Object obj) {
        a(str != null ? Uri.parse(str) : null, obj);
    }
}
