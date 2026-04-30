package com.adobe.premiereclip.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public class AutoResizeTextView extends TextView {
    private static final int NO_LINE_LIMIT = -1;
    private RectF mAvailableSpaceRect;
    private boolean mEnableSizeCache;
    private boolean mInitiallized;
    private int mMaxLines;
    private float mMaxTextSize;
    private float mMinTextSize;
    private TextPaint mPaint;
    private final SizeTester mSizeTester;
    private float mSpacingAdd;
    private float mSpacingMult;
    private SparseIntArray mTextCachedSizes;
    private RectF mTextRect;
    private int mWidthLimit;

    interface SizeTester {
        int onTestSize(int i, RectF rectF);
    }

    public AutoResizeTextView(Context context) {
        super(context);
        this.mTextRect = new RectF();
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mMinTextSize = 20.0f;
        this.mEnableSizeCache = true;
        this.mSizeTester = new SizeTester() { // from class: com.adobe.premiereclip.util.AutoResizeTextView.1
            @Override // com.adobe.premiereclip.util.AutoResizeTextView.SizeTester
            @TargetApi(16)
            public int onTestSize(int i, RectF rectF) {
                AutoResizeTextView.this.mPaint.setTextSize(i);
                String string = AutoResizeTextView.this.getText().toString();
                if (AutoResizeTextView.this.getMaxLines() == 1) {
                    AutoResizeTextView.this.mTextRect.bottom = AutoResizeTextView.this.mPaint.getFontSpacing();
                    AutoResizeTextView.this.mTextRect.right = AutoResizeTextView.this.mPaint.measureText(string);
                } else {
                    StaticLayout staticLayout = new StaticLayout(string, AutoResizeTextView.this.mPaint, AutoResizeTextView.this.mWidthLimit, Layout.Alignment.ALIGN_NORMAL, AutoResizeTextView.this.mSpacingMult, AutoResizeTextView.this.mSpacingAdd, true);
                    if (AutoResizeTextView.this.getMaxLines() != -1 && staticLayout.getLineCount() > AutoResizeTextView.this.getMaxLines()) {
                        return 1;
                    }
                    AutoResizeTextView.this.mTextRect.bottom = staticLayout.getHeight();
                    int lineWidth = -1;
                    for (int i2 = 0; i2 < staticLayout.getLineCount(); i2++) {
                        if (lineWidth < staticLayout.getLineWidth(i2)) {
                            lineWidth = (int) staticLayout.getLineWidth(i2);
                        }
                    }
                    AutoResizeTextView.this.mTextRect.right = lineWidth;
                }
                AutoResizeTextView.this.mTextRect.offsetTo(0.0f, 0.0f);
                return rectF.contains(AutoResizeTextView.this.mTextRect) ? -1 : 1;
            }
        };
        initialize();
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTextRect = new RectF();
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mMinTextSize = 20.0f;
        this.mEnableSizeCache = true;
        this.mSizeTester = new SizeTester() { // from class: com.adobe.premiereclip.util.AutoResizeTextView.1
            @Override // com.adobe.premiereclip.util.AutoResizeTextView.SizeTester
            @TargetApi(16)
            public int onTestSize(int i, RectF rectF) {
                AutoResizeTextView.this.mPaint.setTextSize(i);
                String string = AutoResizeTextView.this.getText().toString();
                if (AutoResizeTextView.this.getMaxLines() == 1) {
                    AutoResizeTextView.this.mTextRect.bottom = AutoResizeTextView.this.mPaint.getFontSpacing();
                    AutoResizeTextView.this.mTextRect.right = AutoResizeTextView.this.mPaint.measureText(string);
                } else {
                    StaticLayout staticLayout = new StaticLayout(string, AutoResizeTextView.this.mPaint, AutoResizeTextView.this.mWidthLimit, Layout.Alignment.ALIGN_NORMAL, AutoResizeTextView.this.mSpacingMult, AutoResizeTextView.this.mSpacingAdd, true);
                    if (AutoResizeTextView.this.getMaxLines() != -1 && staticLayout.getLineCount() > AutoResizeTextView.this.getMaxLines()) {
                        return 1;
                    }
                    AutoResizeTextView.this.mTextRect.bottom = staticLayout.getHeight();
                    int lineWidth = -1;
                    for (int i2 = 0; i2 < staticLayout.getLineCount(); i2++) {
                        if (lineWidth < staticLayout.getLineWidth(i2)) {
                            lineWidth = (int) staticLayout.getLineWidth(i2);
                        }
                    }
                    AutoResizeTextView.this.mTextRect.right = lineWidth;
                }
                AutoResizeTextView.this.mTextRect.offsetTo(0.0f, 0.0f);
                return rectF.contains(AutoResizeTextView.this.mTextRect) ? -1 : 1;
            }
        };
        initialize();
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTextRect = new RectF();
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mMinTextSize = 20.0f;
        this.mEnableSizeCache = true;
        this.mSizeTester = new SizeTester() { // from class: com.adobe.premiereclip.util.AutoResizeTextView.1
            @Override // com.adobe.premiereclip.util.AutoResizeTextView.SizeTester
            @TargetApi(16)
            public int onTestSize(int i2, RectF rectF) {
                AutoResizeTextView.this.mPaint.setTextSize(i2);
                String string = AutoResizeTextView.this.getText().toString();
                if (AutoResizeTextView.this.getMaxLines() == 1) {
                    AutoResizeTextView.this.mTextRect.bottom = AutoResizeTextView.this.mPaint.getFontSpacing();
                    AutoResizeTextView.this.mTextRect.right = AutoResizeTextView.this.mPaint.measureText(string);
                } else {
                    StaticLayout staticLayout = new StaticLayout(string, AutoResizeTextView.this.mPaint, AutoResizeTextView.this.mWidthLimit, Layout.Alignment.ALIGN_NORMAL, AutoResizeTextView.this.mSpacingMult, AutoResizeTextView.this.mSpacingAdd, true);
                    if (AutoResizeTextView.this.getMaxLines() != -1 && staticLayout.getLineCount() > AutoResizeTextView.this.getMaxLines()) {
                        return 1;
                    }
                    AutoResizeTextView.this.mTextRect.bottom = staticLayout.getHeight();
                    int lineWidth = -1;
                    for (int i22 = 0; i22 < staticLayout.getLineCount(); i22++) {
                        if (lineWidth < staticLayout.getLineWidth(i22)) {
                            lineWidth = (int) staticLayout.getLineWidth(i22);
                        }
                    }
                    AutoResizeTextView.this.mTextRect.right = lineWidth;
                }
                AutoResizeTextView.this.mTextRect.offsetTo(0.0f, 0.0f);
                return rectF.contains(AutoResizeTextView.this.mTextRect) ? -1 : 1;
            }
        };
        initialize();
    }

    private void initialize() {
        this.mPaint = new TextPaint(getPaint());
        this.mMaxTextSize = getTextSize();
        this.mAvailableSpaceRect = new RectF();
        this.mTextCachedSizes = new SparseIntArray();
        if (this.mMaxLines == 0) {
            this.mMaxLines = -1;
        }
        this.mInitiallized = true;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        adjustTextSize(charSequence.toString());
    }

    @Override // android.widget.TextView
    public void setTextSize(float f2) {
        this.mMaxTextSize = f2;
        this.mTextCachedSizes.clear();
        adjustTextSize(getText().toString());
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        super.setMaxLines(i);
        this.mMaxLines = i;
        reAdjust();
    }

    @Override // android.widget.TextView
    public int getMaxLines() {
        return this.mMaxLines;
    }

    @Override // android.widget.TextView
    public void setSingleLine() {
        super.setSingleLine();
        this.mMaxLines = 1;
        reAdjust();
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
        if (z) {
            this.mMaxLines = 1;
        } else {
            this.mMaxLines = -1;
        }
        reAdjust();
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        super.setLines(i);
        this.mMaxLines = i;
        reAdjust();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f2) {
        Resources resources;
        Context context = getContext();
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        this.mMaxTextSize = TypedValue.applyDimension(i, f2, resources.getDisplayMetrics());
        this.mTextCachedSizes.clear();
        adjustTextSize(getText().toString());
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f2, float f3) {
        super.setLineSpacing(f2, f3);
        this.mSpacingMult = f3;
        this.mSpacingAdd = f2;
    }

    public void setMinTextSize(float f2) {
        this.mMinTextSize = f2;
        reAdjust();
    }

    private void reAdjust() {
        adjustTextSize(getText().toString());
    }

    private void adjustTextSize(String str) {
        if (this.mInitiallized) {
            int i = (int) this.mMinTextSize;
            int measuredHeight = (getMeasuredHeight() - getCompoundPaddingBottom()) - getCompoundPaddingTop();
            this.mWidthLimit = (getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            this.mAvailableSpaceRect.right = this.mWidthLimit;
            this.mAvailableSpaceRect.bottom = measuredHeight;
            super.setTextSize(0, efficientTextSizeSearch(i, (int) this.mMaxTextSize, this.mSizeTester, this.mAvailableSpaceRect));
        }
    }

    public void enableSizeCache(boolean z) {
        this.mEnableSizeCache = z;
        this.mTextCachedSizes.clear();
        adjustTextSize(getText().toString());
    }

    private int efficientTextSizeSearch(int i, int i2, SizeTester sizeTester, RectF rectF) {
        if (!this.mEnableSizeCache) {
            return binarySearch(i, i2, sizeTester, rectF);
        }
        String string = getText().toString();
        int length = string == null ? 0 : string.length();
        int i3 = this.mTextCachedSizes.get(length);
        if (i3 != 0) {
            return i3;
        }
        int iBinarySearch = binarySearch(i, i2, sizeTester, rectF);
        this.mTextCachedSizes.put(length, iBinarySearch);
        return iBinarySearch;
    }

    private static int binarySearch(int i, int i2, SizeTester sizeTester, RectF rectF) {
        int i3;
        int i4 = i2 - 1;
        int i5 = i;
        int i6 = i;
        while (i5 <= i4) {
            int i7 = (i5 + i4) >>> 1;
            int iOnTestSize = sizeTester.onTestSize(i7, rectF);
            if (iOnTestSize < 0) {
                i3 = i7 + 1;
            } else {
                if (iOnTestSize <= 0) {
                    return i7;
                }
                i4 = i7 - 1;
                i3 = i5;
                i5 = i4;
            }
            int i8 = i3;
            i6 = i5;
            i5 = i8;
        }
        return i6;
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        reAdjust();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mTextCachedSizes.clear();
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3 || i2 != i4) {
            reAdjust();
        }
    }
}
