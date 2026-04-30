package com.behance.sdk.ui.components;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKGetColorCallback;
import com.behance.sdk.ui.components.BehanceSDKGradientSeekBar;
import com.behance.sdk.ui.customviews.BehanceSDKColorWheelLayer;
import com.behance.sdk.ui.customviews.BehanceSDKColorWheelPickerLayer;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerWheel extends FrameLayout implements IBehanceSDKGetColorCallback {
    private BehanceSDKGradientSeekBar bsdkColorPickerGradientSeek;
    private BehanceSDKColorWheelPickerLayer bsdkColorPickerPicker;
    private View bsdkColorPickerPreview;
    private BehanceSDKColorWheelLayer bsdkColorPickerWheel;
    private ArgbEvaluator evaluator;
    private int lastWheelColor;

    public BehanceSDKColorPickerWheel(Context context) {
        super(context);
        init(context, null, 0);
    }

    public BehanceSDKColorPickerWheel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0);
    }

    public BehanceSDKColorPickerWheel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bsdk_view_color_picker_wheel, (ViewGroup) this, false);
        initView(viewInflate);
        this.evaluator = new ArgbEvaluator();
        addView(viewInflate);
        this.bsdkColorPickerGradientSeek.setSeekListener(new BehanceSDKGradientSeekBar.SeekListener() { // from class: com.behance.sdk.ui.components.BehanceSDKColorPickerWheel.1
            @Override // com.behance.sdk.ui.components.BehanceSDKGradientSeekBar.SeekListener
            public void onProgressChanged(int i2) {
                BehanceSDKColorPickerWheel.this.bsdkColorPickerPreview.setBackgroundColor(BehanceSDKColorPickerWheel.this.getColor(i2));
            }
        });
        this.bsdkColorPickerPicker.setColorCallback(this);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BehanceSDKColorWheel, i, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BehanceSDKColorWheel_wheel_indicator_radius)) {
                this.bsdkColorPickerPicker.setRadius(typedArrayObtainStyledAttributes.getInt(R.styleable.BehanceSDKColorWheel_wheel_indicator_radius, 0));
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BehanceSDKColorWheel_seekbar_indicator_width)) {
                this.bsdkColorPickerGradientSeek.setIndicatorThickness(R.styleable.BehanceSDKColorWheel_seekbar_indicator_width);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BehanceSDKColorWheel_seekbar_padding_horizontal)) {
                this.bsdkColorPickerGradientSeek.setPadding(R.styleable.BehanceSDKColorWheel_seekbar_padding_horizontal);
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void initView(View view) {
        this.bsdkColorPickerGradientSeek = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_gradient_seek);
        this.bsdkColorPickerWheel = (BehanceSDKColorWheelLayer) view.findViewById(R.id.bsdk_color_picker_wheel);
        this.bsdkColorPickerPicker = (BehanceSDKColorWheelPickerLayer) view.findViewById(R.id.bsdk_color_picker_picker);
        this.bsdkColorPickerPreview = view.findViewById(R.id.bsdk_color_picker_preview);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGetColorCallback
    public int getColorAt(int i, int i2) {
        if (this.bsdkColorPickerWheel == null) {
            return ViewCompat.MEASURED_SIZE_MASK;
        }
        this.lastWheelColor = this.bsdkColorPickerWheel.getColorAtPixel(i, i2);
        this.bsdkColorPickerPreview.setBackgroundColor(getColor(this.bsdkColorPickerGradientSeek.getProgress()));
        this.bsdkColorPickerGradientSeek.setGradient(this.lastWheelColor);
        return this.lastWheelColor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColor(int i) {
        return ((Integer) this.evaluator.evaluate(i / 255.0f, Integer.valueOf(ViewCompat.MEASURED_STATE_MASK), Integer.valueOf(this.lastWheelColor))).intValue();
    }

    public void setSelectedColor(int i) {
        double d2;
        double d3;
        double d4;
        double dRed = Color.red(i);
        double dGreen = Color.green(i);
        double dBlue = Color.blue(i);
        double dMin = Math.min(Math.min(dRed, dGreen), dBlue);
        double dMax = Math.max(Math.max(dRed, dGreen), dBlue);
        if (dMin == dMax) {
            d4 = 0.0d;
            d2 = 0.0d;
            d3 = dMin;
        } else {
            double d5 = 60.0d * (((double) (dRed == dMin ? 3 : dBlue == dMin ? 1 : 5)) - ((dRed == dMin ? dGreen - dBlue : dBlue == dMin ? dRed - dGreen : dBlue - dRed) / (dMax - dMin)));
            d2 = (dMax - dMin) / dMax;
            d3 = dMax;
            d4 = d5;
        }
        this.bsdkColorPickerGradientSeek.setProgress(Math.round(d3));
        this.bsdkColorPickerPicker.setColor(6.283185307179586d - (((d4 / 360.0d) * 2.0d) * 3.141592653589793d), d2);
    }

    public int getSelectedColor() {
        return getColor(this.bsdkColorPickerGradientSeek.getProgress());
    }
}
