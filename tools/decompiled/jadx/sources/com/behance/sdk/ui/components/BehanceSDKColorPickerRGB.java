package com.behance.sdk.ui.components;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.behance.sdk.R;
import com.behance.sdk.ui.components.BehanceSDKGradientSeekBar;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerRGB extends FrameLayout implements BehanceSDKGradientSeekBar.SeekListener {
    private View bsdkColorPickerRgbPreview;
    private BehanceSDKGradientSeekBar bsdkColorPickerRgbSeekB;
    private BehanceSDKGradientSeekBar bsdkColorPickerRgbSeekG;
    private BehanceSDKGradientSeekBar bsdkColorPickerRgbSeekR;

    public BehanceSDKColorPickerRGB(Context context) {
        super(context);
        init(context);
    }

    public BehanceSDKColorPickerRGB(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public BehanceSDKColorPickerRGB(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    private void init(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bsdk_view_color_picker_rgb, (ViewGroup) this, false);
        initView(viewInflate);
        addView(viewInflate);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.components.BehanceSDKColorPickerRGB.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKColorPickerRGB.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKColorPickerRGB.this.bsdkColorPickerRgbSeekR.setGradient(SupportMenu.CATEGORY_MASK);
                BehanceSDKColorPickerRGB.this.bsdkColorPickerRgbSeekG.setGradient(-16711936);
                BehanceSDKColorPickerRGB.this.bsdkColorPickerRgbSeekB.setGradient(-16776961);
            }
        });
        this.bsdkColorPickerRgbSeekR.setSeekListener(this);
        this.bsdkColorPickerRgbSeekG.setSeekListener(this);
        this.bsdkColorPickerRgbSeekB.setSeekListener(this);
    }

    private void initView(View view) {
        this.bsdkColorPickerRgbSeekR = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_rgb_seek_r);
        this.bsdkColorPickerRgbSeekG = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_rgb_seek_g);
        this.bsdkColorPickerRgbSeekB = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_rgb_seek_b);
        this.bsdkColorPickerRgbPreview = view.findViewById(R.id.bsdk_color_picker_rgb_preview);
    }

    @Override // com.behance.sdk.ui.components.BehanceSDKGradientSeekBar.SeekListener
    public void onProgressChanged(int i) {
        updateSampleColor();
        updateGradients();
    }

    private void updateSampleColor() {
        this.bsdkColorPickerRgbPreview.setBackgroundColor(getSelectedColor());
    }

    private void updateGradients() {
        this.bsdkColorPickerRgbSeekR.setGradient(Color.argb(255, 0, this.bsdkColorPickerRgbSeekG.getProgress(), this.bsdkColorPickerRgbSeekB.getProgress()), Color.argb(255, 255, this.bsdkColorPickerRgbSeekG.getProgress(), this.bsdkColorPickerRgbSeekB.getProgress()));
        this.bsdkColorPickerRgbSeekG.setGradient(Color.argb(255, this.bsdkColorPickerRgbSeekR.getProgress(), 0, this.bsdkColorPickerRgbSeekB.getProgress()), Color.argb(255, this.bsdkColorPickerRgbSeekR.getProgress(), 255, this.bsdkColorPickerRgbSeekB.getProgress()));
        this.bsdkColorPickerRgbSeekB.setGradient(Color.argb(255, this.bsdkColorPickerRgbSeekR.getProgress(), this.bsdkColorPickerRgbSeekG.getProgress(), 0), Color.argb(255, this.bsdkColorPickerRgbSeekR.getProgress(), this.bsdkColorPickerRgbSeekG.getProgress(), 255));
    }

    public void setSelectedColor(int i) {
        int iRed = Color.red(i);
        int iGreen = Color.green(i);
        int iBlue = Color.blue(i);
        this.bsdkColorPickerRgbSeekR.setProgress(iRed);
        this.bsdkColorPickerRgbSeekG.setProgress(iGreen);
        this.bsdkColorPickerRgbSeekB.setProgress(iBlue);
        updateGradients();
        updateSampleColor();
    }

    public int getSelectedColor() {
        return Color.argb(255, this.bsdkColorPickerRgbSeekR.getProgress(), this.bsdkColorPickerRgbSeekG.getProgress(), this.bsdkColorPickerRgbSeekB.getProgress());
    }
}
