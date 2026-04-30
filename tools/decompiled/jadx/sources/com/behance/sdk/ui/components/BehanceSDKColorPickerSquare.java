package com.behance.sdk.ui.components;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.graphics.Color;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.behance.sdk.R;
import com.behance.sdk.listeners.IBehanceSDKColorCallback;
import com.behance.sdk.listeners.IBehanceSDKGetColorCallback;
import com.behance.sdk.ui.components.BehanceSDKGradientSeekBar;
import com.behance.sdk.ui.customviews.BehanceSDKColorSquareLayer;
import com.behance.sdk.ui.customviews.BehanceSDKColorSquarePickerLayer;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKColorPickerSquare extends FrameLayout implements IBehanceSDKGetColorCallback {
    private BehanceSDKGradientSeekBar bsdkColorPickerColorSeek;
    private RelativeLayout bsdkColorPickerContainer;
    private BehanceSDKColorSquarePickerLayer bsdkColorPickerPicker;
    private BehanceSDKColorSquareLayer bsdkColorPickerSquare;
    private IBehanceSDKColorCallback colorCallback;
    private ArgbEvaluator evaluator;
    private int lastColor;

    public BehanceSDKColorPickerSquare(Context context) {
        super(context);
        init();
    }

    public BehanceSDKColorPickerSquare(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BehanceSDKColorPickerSquare(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.bsdk_view_color_picker_square, (ViewGroup) this, false);
        initView(viewInflate);
        this.evaluator = new ArgbEvaluator();
        addView(viewInflate);
        this.bsdkColorPickerColorSeek.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.components.BehanceSDKColorPickerSquare.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKColorPickerSquare.this.bsdkColorPickerColorSeek.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKColorPickerSquare.this.bsdkColorPickerColorSeek.setGradient(new int[]{SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -16711936, -16711681, -16776961, -65281, SupportMenu.CATEGORY_MASK});
            }
        });
        this.bsdkColorPickerColorSeek.setSeekListener(new BehanceSDKGradientSeekBar.SeekListener() { // from class: com.behance.sdk.ui.components.BehanceSDKColorPickerSquare.2
            @Override // com.behance.sdk.ui.components.BehanceSDKGradientSeekBar.SeekListener
            public void onProgressChanged(int i) {
                BehanceSDKColorPickerSquare.this.bsdkColorPickerSquare.setColor(BehanceSDKColorPickerSquare.this.bsdkColorPickerColorSeek.getColor());
                BehanceSDKColorPickerSquare.this.bsdkColorPickerPicker.onGradientChange();
            }
        });
        this.bsdkColorPickerPicker.setColorCallback(this);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bsdk_color_picker_padding);
        this.bsdkColorPickerSquare.setPadding(dimensionPixelSize);
        this.bsdkColorPickerPicker.setPadding(dimensionPixelSize);
    }

    private void initView(View view) {
        this.bsdkColorPickerContainer = (RelativeLayout) view.findViewById(R.id.bsdk_color_picker_container);
        this.bsdkColorPickerSquare = (BehanceSDKColorSquareLayer) view.findViewById(R.id.bsdk_color_picker_square);
        this.bsdkColorPickerPicker = (BehanceSDKColorSquarePickerLayer) view.findViewById(R.id.bsdk_color_picker_picker);
        this.bsdkColorPickerColorSeek = (BehanceSDKGradientSeekBar) view.findViewById(R.id.bsdk_color_picker_color_seek);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKGetColorCallback
    public int getColorAt(int i, int i2) {
        if (this.bsdkColorPickerPicker == null) {
            return ViewCompat.MEASURED_SIZE_MASK;
        }
        this.lastColor = this.bsdkColorPickerSquare.getColorAtPixel(i, i2);
        if (this.colorCallback != null) {
            this.colorCallback.onColorSelected(this.lastColor);
        }
        return this.lastColor;
    }

    private int getColor(int i) {
        return ((Integer) this.evaluator.evaluate(i / 255.0f, Integer.valueOf(ViewCompat.MEASURED_STATE_MASK), Integer.valueOf(this.lastColor))).intValue();
    }

    public void setSelectedColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        this.bsdkColorPickerColorSeek.setProgress((long) ((fArr[0] * 255.0f) / 360.0f));
        this.bsdkColorPickerPicker.setColor(fArr[1], fArr[2]);
        this.bsdkColorPickerSquare.setHue(fArr[0]);
    }

    public int getSelectedColor() {
        return getColor(this.bsdkColorPickerPicker.getLastDrawnColor());
    }

    public void setColorCallback(IBehanceSDKColorCallback iBehanceSDKColorCallback) {
        this.colorCallback = iBehanceSDKColorCallback;
    }
}
