package com.adobe.creativesdk.foundation.internal.twowayview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.twowayview.TwoWayLayoutManager;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes2.dex */
public class TwoWayView extends RecyclerView {
    private static final String LOGTAG = "TwoWayView";
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    final Object[] sConstructorArgs;

    public TwoWayView(Context context) {
        this(context, null);
    }

    public TwoWayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoWayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.sConstructorArgs = new Object[2];
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.adobe_csdk_twowayview_TwoWayView, i, 0);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.adobe_csdk_twowayview_TwoWayView_adobe_csdk_twowayview_layoutManager);
        if (!TextUtils.isEmpty(string)) {
            loadLayoutManagerFromName(context, attributeSet, string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void loadLayoutManagerFromName(Context context, AttributeSet attributeSet, String str) {
        try {
            int iIndexOf = str.indexOf(46);
            if (iIndexOf == -1) {
                str = "com.adobe.creativesdk.foundation.internal.twowayview.widget." + str;
            } else if (iIndexOf == 0) {
                str = context.getPackageName() + "." + str;
            }
            Constructor constructor = context.getClassLoader().loadClass(str).asSubclass(TwoWayLayoutManager.class).getConstructor(sConstructorSignature);
            this.sConstructorArgs[0] = context;
            this.sConstructorArgs[1] = attributeSet;
            setLayoutManager((RecyclerView.LayoutManager) constructor.newInstance(this.sConstructorArgs));
        } catch (Exception e2) {
            throw new IllegalStateException("Could not load TwoWayLayoutManager from class: " + str, e2);
        }
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof TwoWayLayoutManager)) {
            throw new IllegalArgumentException("TwoWayView can only use TwoWayLayoutManager subclasses as its layout manager");
        }
        super.setLayoutManager(layoutManager);
    }

    public TwoWayLayoutManager.Orientation getOrientation() {
        return ((TwoWayLayoutManager) getLayoutManager()).getOrientation();
    }

    public void setOrientation(TwoWayLayoutManager.Orientation orientation) {
        ((TwoWayLayoutManager) getLayoutManager()).setOrientation(orientation);
    }

    public int getFirstVisiblePosition() {
        return ((TwoWayLayoutManager) getLayoutManager()).getFirstVisiblePosition();
    }

    public int getLastVisiblePosition() {
        return ((TwoWayLayoutManager) getLayoutManager()).getLastVisiblePosition();
    }
}
