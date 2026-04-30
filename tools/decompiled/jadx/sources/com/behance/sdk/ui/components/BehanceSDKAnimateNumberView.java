package com.behance.sdk.ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.behance.sdk.R;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKFontUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKAnimateNumberView extends View {
    private static final int ANIMATION_FRAME_RATE = 16;
    private static final int UPDATE_LENGTH_MS = 250;
    private boolean decrementing;
    private boolean incrementing;
    private int minWidth;
    private String numFull;
    private String numPartOne;
    private String numPartTwoNew;
    private String numPartTwoOld;
    private int number;
    private long startTimestamp;
    private final Rect textBounds;
    private TextPaint textPaint;
    private Runnable updateRunnable;

    static /* synthetic */ int access$308(BehanceSDKAnimateNumberView behanceSDKAnimateNumberView) {
        int i = behanceSDKAnimateNumberView.number;
        behanceSDKAnimateNumberView.number = i + 1;
        return i;
    }

    static /* synthetic */ int access$310(BehanceSDKAnimateNumberView behanceSDKAnimateNumberView) {
        int i = behanceSDKAnimateNumberView.number;
        behanceSDKAnimateNumberView.number = i - 1;
        return i;
    }

    public BehanceSDKAnimateNumberView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.startTimestamp = -1L;
        this.incrementing = false;
        this.decrementing = false;
        this.textBounds = new Rect();
        this.number = 0;
        init(context, attributeSet);
    }

    public BehanceSDKAnimateNumberView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.startTimestamp = -1L;
        this.incrementing = false;
        this.decrementing = false;
        this.textBounds = new Rect();
        this.number = 0;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKAnimateNumberView);
        this.textPaint = new TextPaint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.BehanceSDKAnimateNumberView_text_color, ContextCompat.getColor(context, R.color.bsdk_project_editor_primary_color)));
        this.textPaint.setTextSize(typedArrayObtainStyledAttributes.getColor(R.styleable.BehanceSDKAnimateNumberView_text_color, ContextCompat.getColor(context, R.color.bsdk_project_editor_primary_color)));
        this.textPaint.setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKAnimateNumberView_text_size, getResources().getDimensionPixelSize(R.dimen.bsdk_card_title_text_size)));
        BehanceSDKFontUtils.setAdobeCleanFont(context, this.textPaint, (String) null);
        this.minWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BehanceSDKAnimateNumberView_min_width, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.incrementing) {
            double dMin = Math.min(1.0d, (1.0d * (System.currentTimeMillis() - this.startTimestamp)) / 250.0d);
            double dInterpolate = interpolate(dMin);
            this.textPaint.getTextBounds(this.numFull, 0, this.numFull.length(), this.textBounds);
            this.textPaint.setAlpha(255);
            canvas.drawText(this.numPartOne, (getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f, (getHeight() / 2) - this.textBounds.exactCenterY(), this.textPaint);
            this.textPaint.setAlpha((int) (255.0d * dMin));
            canvas.drawText(this.numPartTwoNew, ((getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f) + this.textPaint.measureText(this.numPartOne), (float) (((double) ((getHeight() / 2) - this.textBounds.exactCenterY())) - ((1.0d - dInterpolate) * ((double) this.textPaint.getTextSize()))), this.textPaint);
            this.textPaint.setAlpha((int) ((1.0d - dMin) * 255.0d));
            canvas.drawText(this.numPartTwoOld, ((getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f) + this.textPaint.measureText(this.numPartOne), (float) ((dInterpolate * ((double) this.textPaint.getTextSize())) + ((double) ((getHeight() / 2) - this.textBounds.exactCenterY()))), this.textPaint);
            return;
        }
        if (this.decrementing) {
            double dMin2 = Math.min(1.0d, (1.0d * (System.currentTimeMillis() - this.startTimestamp)) / 250.0d);
            double dInterpolate2 = interpolate(dMin2);
            this.textPaint.getTextBounds(this.numFull, 0, this.numFull.length(), this.textBounds);
            this.textPaint.setAlpha(255);
            canvas.drawText(this.numPartOne, (getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f, (getHeight() / 2) - this.textBounds.exactCenterY(), this.textPaint);
            this.textPaint.setAlpha((int) (255.0d * (1.0d - dMin2)));
            canvas.drawText(this.numPartTwoOld, ((getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f) + this.textPaint.measureText(this.numPartOne), (float) (((double) ((getHeight() / 2) - this.textBounds.exactCenterY())) - (((double) this.textPaint.getTextSize()) * dInterpolate2)), this.textPaint);
            this.textPaint.setAlpha((int) (dMin2 * 255.0d));
            canvas.drawText(this.numPartTwoNew, ((getWidth() - this.textPaint.measureText(this.numFull)) / 2.0f) + this.textPaint.measureText(this.numPartOne), (float) (((1.0d - dInterpolate2) * ((double) this.textPaint.getTextSize())) + ((double) ((getHeight() / 2) - this.textBounds.exactCenterY()))), this.textPaint);
            return;
        }
        String str = format(String.valueOf(this.number));
        this.textPaint.setAlpha(255);
        this.textPaint.getTextBounds(str, 0, str.length(), this.textBounds);
        canvas.drawText(str, (getWidth() - this.textPaint.measureText(str)) / 2.0f, (getHeight() / 2) - this.textBounds.exactCenterY(), this.textPaint);
    }

    private double interpolate(double d2) {
        return (Math.cos((1.0d + d2) * 3.141592653589793d) / 2.0d) + 0.5d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNums() {
        this.numFull = String.valueOf(this.number);
        int length = this.numFull.length() - 1;
        this.numPartOne = this.numFull.substring(0, length);
        this.numPartTwoOld = this.numFull.substring(length);
        this.numPartTwoNew = String.valueOf((this.incrementing ? 1 : -1) + Integer.valueOf(this.numPartTwoOld).intValue());
        if (this.incrementing) {
            int i = length;
            while (this.numPartTwoOld.startsWith("9")) {
                if (i == 0) {
                    this.numFull = "0" + this.numFull;
                } else {
                    i--;
                }
                this.numPartOne = this.numFull.substring(0, i);
                this.numPartTwoOld = this.numFull.substring(i);
                this.numPartTwoNew = String.valueOf(Integer.valueOf(this.numPartTwoOld).intValue() + 1);
            }
        } else if (this.decrementing) {
            while (this.numPartTwoOld.startsWith("0")) {
                if (length == 0) {
                    this.numFull = "0" + this.numFull;
                } else {
                    length--;
                }
                this.numPartOne = this.numFull.substring(0, length);
                this.numPartTwoOld = this.numFull.substring(length);
                this.numPartTwoNew = String.valueOf(Integer.valueOf(this.numPartTwoOld).intValue() - 1);
            }
        }
        this.numFull = format(this.numFull);
        this.numPartOne = format(this.numPartOne, this.numPartTwoNew.length());
        this.numPartTwoNew = format(this.numPartTwoNew);
        this.numPartTwoOld = format(this.numPartTwoOld);
    }

    @NonNull
    private String format(String str) {
        return format(str, 0, false);
    }

    @NonNull
    private String format(String str, int i) {
        return format(str, i, true);
    }

    @NonNull
    private String format(String str, int i, boolean z) {
        if (str == null || str.length() == 0) {
            return "";
        }
        String str2 = "";
        int length = str.length();
        while (length > 0) {
            int i2 = i + 1;
            if (i % 3 == 0 && (length < str.length() || z)) {
                str2 = str2 + BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR;
            }
            String str3 = str2 + str.charAt(length - 1);
            length--;
            i = i2;
            str2 = str3;
        }
        return new StringBuilder(str2).reverse().toString();
    }

    public boolean increment() {
        return increment(0);
    }

    public boolean increment(int i) {
        if (this.incrementing || this.decrementing) {
            return false;
        }
        this.incrementing = true;
        this.updateRunnable = new Runnable() { // from class: com.behance.sdk.ui.components.BehanceSDKAnimateNumberView.1
            @Override // java.lang.Runnable
            public void run() {
                if (((System.currentTimeMillis() - BehanceSDKAnimateNumberView.this.startTimestamp) * 1.0d) / 250.0d >= 1.0d) {
                    BehanceSDKAnimateNumberView.this.incrementing = false;
                    BehanceSDKAnimateNumberView.this.removeCallbacks(BehanceSDKAnimateNumberView.this.updateRunnable);
                    BehanceSDKAnimateNumberView.this.startTimestamp = -1L;
                    BehanceSDKAnimateNumberView.access$308(BehanceSDKAnimateNumberView.this);
                } else {
                    BehanceSDKAnimateNumberView.this.postDelayed(BehanceSDKAnimateNumberView.this.updateRunnable, 16L);
                    BehanceSDKAnimateNumberView.this.setNums();
                }
                BehanceSDKAnimateNumberView.this.invalidate();
            }
        };
        this.startTimestamp = System.currentTimeMillis() + ((long) i);
        postDelayed(this.updateRunnable, i);
        return true;
    }

    public boolean decrement() {
        return decrement(0);
    }

    public boolean decrement(int i) {
        if (this.incrementing || this.decrementing) {
            return false;
        }
        this.decrementing = true;
        this.updateRunnable = new Runnable() { // from class: com.behance.sdk.ui.components.BehanceSDKAnimateNumberView.2
            @Override // java.lang.Runnable
            public void run() {
                if (((System.currentTimeMillis() - BehanceSDKAnimateNumberView.this.startTimestamp) * 1.0d) / 250.0d >= 1.0d) {
                    BehanceSDKAnimateNumberView.this.decrementing = false;
                    BehanceSDKAnimateNumberView.this.removeCallbacks(BehanceSDKAnimateNumberView.this.updateRunnable);
                    BehanceSDKAnimateNumberView.this.startTimestamp = -1L;
                    BehanceSDKAnimateNumberView.access$310(BehanceSDKAnimateNumberView.this);
                } else {
                    BehanceSDKAnimateNumberView.this.postDelayed(BehanceSDKAnimateNumberView.this.updateRunnable, 16L);
                    BehanceSDKAnimateNumberView.this.setNums();
                }
                BehanceSDKAnimateNumberView.this.invalidate();
            }
        };
        this.startTimestamp = System.currentTimeMillis() + ((long) i);
        postDelayed(this.updateRunnable, i);
        return true;
    }

    public void setNumber(int i) {
        this.number = i;
        invalidate();
    }

    public int getNumber() {
        return this.number;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(Math.max(this.minWidth, ((int) this.textPaint.measureText(format(String.valueOf(this.number)))) + getPaddingLeft() + getPaddingRight()), i2);
    }
}
