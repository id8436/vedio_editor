package com.behance.sdk.ui.behaviors;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKShiftForSnackbarBehavior extends CoordinatorLayout.Behavior<FrameLayout> {
    public BehanceSDKShiftForSnackbarBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view) {
        return view instanceof Snackbar.SnackbarLayout;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view) {
        frameLayout.animate().translationY(-view.getHeight());
        return super.onDependentViewChanged(coordinatorLayout, frameLayout, view);
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, View view) {
        frameLayout.animate().translationY(0.0f);
        super.onDependentViewRemoved(coordinatorLayout, frameLayout, view);
    }
}
