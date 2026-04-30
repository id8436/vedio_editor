package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: GenericDraweeView.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends d<com.facebook.drawee.f.a> {
    public e(Context context, com.facebook.drawee.f.a aVar) {
        super(context);
        setHierarchy(aVar);
    }

    public e(Context context) {
        super(context);
        a(context, null);
    }

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public e(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    @TargetApi(21)
    public e(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet);
    }

    protected void a(Context context, @Nullable AttributeSet attributeSet) {
        com.facebook.drawee.f.b bVarA = com.facebook.drawee.f.c.a(context, attributeSet);
        setAspectRatio(bVarA.c());
        setHierarchy(bVarA.t());
    }
}
