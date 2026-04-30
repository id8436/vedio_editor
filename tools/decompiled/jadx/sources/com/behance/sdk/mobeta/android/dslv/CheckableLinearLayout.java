package com.behance.sdk.mobeta.android.dslv;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes2.dex */
public class CheckableLinearLayout extends LinearLayout implements Checkable {
    private static final int CHECKABLE_CHILD_INDEX = 1;
    private Checkable child;

    public CheckableLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.child = (Checkable) getChildAt(1);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.child.isChecked();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.child.setChecked(z);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.child.toggle();
    }
}
