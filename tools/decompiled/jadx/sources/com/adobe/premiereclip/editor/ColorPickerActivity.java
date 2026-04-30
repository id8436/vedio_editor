package com.adobe.premiereclip.editor;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.media.TitleImage;
import com.adobe.premiereclip.view.ColorPickerView;
import com.adobe.premiereclip.view.HueBarView;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPickerActivity extends TopOfEditorActivity implements ColorPickerView.OnColorChangedListener, HueBarView.OnHueChangedListener {
    private RelativeLayout colorPickerContainer;
    private ColorPickerView colorPickerView;
    private View currentColorBox;
    private RelativeLayout hueBarContainer;
    private HueBarView hueBarView;
    private int previousColor;
    private View previousColorBox;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_color_picker);
        this.previousColor = getIntent().getIntExtra("color", 0);
        this.previousColorBox = findViewById(R.id.previous_color_box);
        this.currentColorBox = findViewById(R.id.current_color_box);
        this.colorPickerContainer = (RelativeLayout) findViewById(R.id.color_picker_box_container);
        Log.d("ColorPicker", "color box w = " + this.colorPickerContainer.getWidth() + ", h = " + this.colorPickerContainer.getHeight());
        this.hueBarContainer = (RelativeLayout) findViewById(R.id.hue_bar_container);
        Log.d("ColorPicker", "hue bar w = " + this.hueBarContainer.getWidth() + ", h = " + this.hueBarContainer.getHeight());
        this.previousColorBox.setBackgroundColor(this.previousColor);
        this.colorPickerView = new ColorPickerView(this);
        this.colorPickerContainer.addView(this.colorPickerView);
        this.colorPickerView.setColorChangeListener(this);
        this.hueBarView = new HueBarView(this);
        this.hueBarContainer.addView(this.hueBarView);
        this.hueBarView.setHueChangeListener(this);
        getWindow().setBackgroundDrawable(null);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int dimension = (int) getResources().getDimension(R.dimen.color_picker_min_margin);
        int dimension2 = (int) getResources().getDimension(R.dimen.color_box_border_size);
        int dimension3 = (int) getResources().getDimension(R.dimen.picker_radius_outer);
        int iFloor = (point.x - ((int) (((Math.floor((point.x - (dimension * 2)) / 255) * 255.0d) + ((double) dimension2)) + 0.5d))) / 2;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 0.0f);
        layoutParams.setMargins(iFloor, dimension, iFloor, 0);
        findViewById(R.id.color_picker_preset).setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        layoutParams2.setMargins(iFloor - dimension3, 0, iFloor - dimension3, 0);
        this.colorPickerContainer.setLayoutParams(layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, (int) getResources().getDimension(R.dimen.hue_bar_height), 0.0f);
        layoutParams3.setMargins(iFloor - dimension3, 0, iFloor - dimension3, dimension);
        this.hueBarContainer.setLayoutParams(layoutParams3);
        this.colorPickerContainer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.premiereclip.editor.ColorPickerActivity.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ColorPickerActivity.this.colorPickerContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int measuredWidth = ColorPickerActivity.this.colorPickerContainer.getMeasuredWidth();
                Log.d("colorpi", "color_box w = " + measuredWidth + ", h = " + ColorPickerActivity.this.colorPickerContainer.getMeasuredHeight());
                ColorPickerActivity.this.colorPickerView.setSize(measuredWidth);
                ColorPickerActivity.this.colorPickerView.setCurrentColor(ColorPickerActivity.this.previousColor);
            }
        });
        this.hueBarContainer.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.adobe.premiereclip.editor.ColorPickerActivity.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ColorPickerActivity.this.hueBarContainer.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int measuredWidth = ColorPickerActivity.this.hueBarContainer.getMeasuredWidth();
                int measuredHeight = ColorPickerActivity.this.hueBarContainer.getMeasuredHeight();
                Log.d("colorpi", "hue_bar w = " + measuredWidth + ", h = " + measuredHeight);
                ColorPickerActivity.this.hueBarView.setDimensions(measuredWidth, measuredHeight);
                ColorPickerActivity.this.setHueFromColor(ColorPickerActivity.this.previousColor);
            }
        });
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Config.collectLifecycleData(this);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Config.pauseCollectingLifecycleData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHueFromColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        this.hueBarView.setCurrentHue(fArr[0]);
    }

    public void onClickPresetWhite(View view) {
        this.colorPickerView.setCurrentColor(Color.parseColor(TitleImage.DEFAULT_TEXT_COLOR));
    }

    public void onClickPresetBlack(View view) {
        this.colorPickerView.setCurrentColor(Color.parseColor(TitleImage.DEFAULT_BACKGROUND_COLOR));
    }

    public void onClickPreviousColor(View view) {
        this.colorPickerView.setCurrentColor(this.previousColor);
        setHueFromColor(this.previousColor);
    }

    public void closeAndGoBack(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("color", String.format("#%06X", Integer.valueOf(16777215 & this.colorPickerView.getCurrentColor())));
        setResult(-1, intent);
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    @Override // com.adobe.premiereclip.view.ColorPickerView.OnColorChangedListener
    public void colorChanged(int i) {
        this.currentColorBox.setBackgroundColor(i);
    }

    @Override // com.adobe.premiereclip.view.HueBarView.OnHueChangedListener
    public void hueChanged(float f2) {
        this.colorPickerView.setCurrentHue(f2);
    }
}
