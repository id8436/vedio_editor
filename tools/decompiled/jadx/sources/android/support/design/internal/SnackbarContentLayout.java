package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.widget.BaseTransientBottomBar;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements BaseTransientBottomBar.ContentViewCallback {
    private Button mActionView;
    private int mMaxInlineActionWidth;
    private int mMaxWidth;
    private TextView mMessageView;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.mMaxInlineActionWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMessageView = (TextView) findViewById(R.id.snackbar_text);
        this.mActionView = (Button) findViewById(R.id.snackbar_action);
    }

    public TextView getMessageView() {
        return this.mMessageView;
    }

    public Button getActionView() {
        return this.mActionView;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            r3 = 0
            r2 = 1
            super.onMeasure(r8, r9)
            int r0 = r7.mMaxWidth
            if (r0 <= 0) goto L1c
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.mMaxWidth
            if (r0 <= r1) goto L1c
            int r0 = r7.mMaxWidth
            r1 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            super.onMeasure(r8, r9)
        L1c:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = android.support.design.R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r4 = android.support.design.R.dimen.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r4)
            android.widget.TextView r4 = r7.mMessageView
            android.text.Layout r4 = r4.getLayout()
            int r4 = r4.getLineCount()
            if (r4 <= r2) goto L5c
            r4 = r2
        L3d:
            if (r4 == 0) goto L5e
            int r5 = r7.mMaxInlineActionWidth
            if (r5 <= 0) goto L5e
            android.widget.Button r5 = r7.mActionView
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.mMaxInlineActionWidth
            if (r5 <= r6) goto L5e
            int r1 = r0 - r1
            boolean r0 = r7.updateViewsWithinLayout(r2, r0, r1)
            if (r0 == 0) goto L6a
            r0 = r2
        L56:
            if (r0 == 0) goto L5b
            super.onMeasure(r8, r9)
        L5b:
            return
        L5c:
            r4 = r3
            goto L3d
        L5e:
            if (r4 == 0) goto L68
        L60:
            boolean r0 = r7.updateViewsWithinLayout(r3, r0, r0)
            if (r0 == 0) goto L6a
            r0 = r2
            goto L56
        L68:
            r0 = r1
            goto L60
        L6a:
            r0 = r3
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.internal.SnackbarContentLayout.onMeasure(int, int):void");
    }

    private boolean updateViewsWithinLayout(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.mMessageView.getPaddingTop() != i2 || this.mMessageView.getPaddingBottom() != i3) {
            updateTopBottomPadding(this.mMessageView, i2, i3);
            return true;
        }
        return z;
    }

    private static void updateTopBottomPadding(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // android.support.design.widget.BaseTransientBottomBar.ContentViewCallback
    public void animateContentIn(int i, int i2) {
        this.mMessageView.setAlpha(0.0f);
        this.mMessageView.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        if (this.mActionView.getVisibility() == 0) {
            this.mActionView.setAlpha(0.0f);
            this.mActionView.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        }
    }

    @Override // android.support.design.widget.BaseTransientBottomBar.ContentViewCallback
    public void animateContentOut(int i, int i2) {
        this.mMessageView.setAlpha(1.0f);
        this.mMessageView.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        if (this.mActionView.getVisibility() == 0) {
            this.mActionView.setAlpha(1.0f);
            this.mActionView.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        }
    }
}
