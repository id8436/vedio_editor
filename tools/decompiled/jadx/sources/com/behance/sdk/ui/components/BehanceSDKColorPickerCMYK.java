package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.components.BehanceSDKGradientSeekBar;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerCMYK extends FrameLayout implements BehanceSDKGradientSeekBar.SeekListener {
    private View bsdkColorPickerCmykPreview;
    private BehanceSDKGradientSeekBar bsdkColorPickerCmykSeekC;
    private BehanceSDKGradientSeekBar bsdkColorPickerCmykSeekK;
    private BehanceSDKGradientSeekBar bsdkColorPickerCmykSeekM;
    private BehanceSDKGradientSeekBar bsdkColorPickerCmykSeekY;

    public BehanceSDKColorPickerCMYK(Context context) {
        super(context);
        init(context);
    }

    public BehanceSDKColorPickerCMYK(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public BehanceSDKColorPickerCMYK(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bsdk_view_color_picker_cmyk, (ViewGroup) this, false);
        initView(viewInflate);
        addView(viewInflate);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.components.BehanceSDKColorPickerCMYK.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKColorPickerCMYK.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKColorPickerCMYK.this.bsdkColorPickerCmykSeekC.setGradient(-1, -16711681);
                BehanceSDKColorPickerCMYK.this.bsdkColorPickerCmykSeekM.setGradient(-1, -65281);
                BehanceSDKColorPickerCMYK.this.bsdkColorPickerCmykSeekY.setGradient(-1, InputDeviceCompat.SOURCE_ANY);
                BehanceSDKColorPickerCMYK.this.bsdkColorPickerCmykSeekK.setGradient(-1, ViewCompat.MEASURED_STATE_MASK);
            }
        });
        this.bsdkColorPickerCmykSeekC.setSeekListener(this);
        this.bsdkColorPickerCmykSeekM.setSeekListener(this);
        this.bsdkColorPickerCmykSeekY.setSeekListener(this);
        this.bsdkColorPickerCmykSeekK.setSeekListener(this);
    }

    private void initView(View view) {
        this.bsdkColorPickerCmykSeekC = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_cmyk_seek_c);
        this.bsdkColorPickerCmykSeekM = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_cmyk_seek_m);
        this.bsdkColorPickerCmykSeekY = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_cmyk_seek_y);
        this.bsdkColorPickerCmykSeekK = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_cmyk_seek_k);
        this.bsdkColorPickerCmykPreview = view.findViewById(R.id.bsdk_color_picker_cmyk_preview);
    }

    @Override // com.behance.sdk.ui.components.BehanceSDKGradientSeekBar.SeekListener
    public void onProgressChanged(int i) {
        updateSampleColor();
        updateGradients();
    }

    private void updateSampleColor() {
        this.bsdkColorPickerCmykPreview.setBackgroundColor(getSelectedColor());
    }

    private void updateGradients() {
        double progress = ((double) this.bsdkColorPickerCmykSeekC.getProgress()) / 255.0d;
        double progress2 = ((double) this.bsdkColorPickerCmykSeekM.getProgress()) / 255.0d;
        double progress3 = ((double) this.bsdkColorPickerCmykSeekY.getProgress()) / 255.0d;
        double progress4 = 1.0d - (((double) this.bsdkColorPickerCmykSeekK.getProgress()) / 255.0d);
        this.bsdkColorPickerCmykSeekC.setGradient(getColor(0.0d, progress2, progress3, progress4), getColor(1.0d, progress2, progress3, progress4));
        this.bsdkColorPickerCmykSeekM.setGradient(getColor(progress, 0.0d, progress3, progress4), getColor(progress, 1.0d, progress3, progress4));
        this.bsdkColorPickerCmykSeekY.setGradient(getColor(progress, progress2, 0.0d, progress4), getColor(progress, progress2, 1.0d, progress4));
        this.bsdkColorPickerCmykSeekK.setGradient(getColor(progress, progress2, progress3, 1.0d), getColor(progress, progress2, progress3, 0.0d));
    }

    public void setSelectedColor(int i) {
        double dRed = ((double) Color.red(i)) / 255.0d;
        double dGreen = ((double) Color.green(i)) / 255.0d;
        double dBlue = ((double) Color.blue(i)) / 255.0d;
        double dMax = 1.0d - Math.max(Math.max(dRed, dGreen), dBlue);
        this.bsdkColorPickerCmykSeekC.setProgress(Math.round((((1.0d - dRed) - dMax) * 255.0d) / (1.0d - dMax)));
        this.bsdkColorPickerCmykSeekM.setProgress(Math.round((((1.0d - dGreen) - dMax) * 255.0d) / (1.0d - dMax)));
        this.bsdkColorPickerCmykSeekY.setProgress(Math.round((255.0d * ((1.0d - dBlue) - dMax)) / (1.0d - dMax)));
        this.bsdkColorPickerCmykSeekK.setProgress(Math.round(255.0d * dMax));
        updateSampleColor();
        updateGradients();
    }

    public int getSelectedColor() {
        double progress = 1.0d - (((double) this.bsdkColorPickerCmykSeekK.getProgress()) / 255.0d);
        return Color.argb(255, (int) Math.round((1.0d - (((double) this.bsdkColorPickerCmykSeekC.getProgress()) / 255.0d)) * 255.0d * progress), (int) Math.round((1.0d - (((double) this.bsdkColorPickerCmykSeekM.getProgress()) / 255.0d)) * 255.0d * progress), (int) Math.round(progress * (1.0d - (((double) this.bsdkColorPickerCmykSeekY.getProgress()) / 255.0d)) * 255.0d));
    }

    private int getColor(double d2, double d3, double d4, double d5) {
        return Color.argb(255, (int) Math.round(255.0d * (1.0d - d2) * d5), (int) Math.round(255.0d * (1.0d - d3) * d5), (int) Math.round(255.0d * (1.0d - d4) * d5));
    }
}
