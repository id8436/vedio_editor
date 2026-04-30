package com.behance.sdk.ui.components;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.Button;
import com.behance.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKFollowUnFollowButton extends Button {
    private Context context;
    private boolean usesFollowAll;

    public BehanceSDKFollowUnFollowButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.usesFollowAll = false;
        initialize(context, attributeSet);
        this.context = context;
        layout();
    }

    public BehanceSDKFollowUnFollowButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.usesFollowAll = false;
        initialize(context, attributeSet);
        this.context = context;
        layout();
    }

    private void initialize(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKFollowButton);
        this.usesFollowAll = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BehanceSDKFollowButton_bsdk_uses_follow_all, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void layout() {
        Resources resources = this.context.getResources();
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(getTextSize());
        if (Build.VERSION.SDK_INT >= 21) {
            paint.setTypeface(Typeface.create("sans-serif", 0));
        }
        String string = resources.getString(R.string.bsdk_follow);
        paint.getTextBounds(string, 0, string.length(), rect);
        int iMeasureText = (int) paint.measureText(string);
        String string2 = resources.getString(R.string.bsdk_unfollow);
        paint.getTextBounds(string2, 0, string2.length(), rect);
        int iMax = Math.max(iMeasureText, (int) paint.measureText(string2));
        if (this.usesFollowAll) {
            String string3 = resources.getString(R.string.bsdk_follow_all);
            paint.getTextBounds(string2, 0, string2.length(), rect);
            iMax = Math.max(iMax, (int) paint.measureText(string3));
        }
        setWidth(iMax + (resources.getDimensionPixelSize(R.dimen.bsdk_follow_button_horizontal_padding) * 2));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }
}
