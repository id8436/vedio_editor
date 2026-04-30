package com.adobe.premiereclip.editor;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.metrics.Metrics;
import com.h.a.d;

/* JADX INFO: loaded from: classes2.dex */
public class VideoSettingActivity extends TopOfEditorActivity {
    private boolean crossFade;
    private boolean fadeIn;
    private boolean fadeOut;
    private boolean photoMotion;
    private String projKey;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_video_setting);
        d.a(this);
        Intent intent = getIntent();
        this.projKey = intent.getStringExtra("project_key");
        this.crossFade = intent.getBooleanExtra("cross_fade", false);
        this.fadeIn = intent.getBooleanExtra("fade_in", false);
        this.fadeOut = intent.getBooleanExtra("fade_out", false);
        this.photoMotion = intent.getBooleanExtra("photo_motion", true);
        setCrossFadeSwitch();
        setFadeInSwitch();
        setFadeOutSwitch();
        setPhotoMotionSwitch();
        setBumperSwitch();
        setWatermarkView();
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

    @Override // android.app.Activity
    public final void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("cross_fade", this.crossFade);
        intent.putExtra("fade_in", this.fadeIn);
        intent.putExtra("fade_out", this.fadeOut);
        intent.putExtra("photo_motion", this.photoMotion);
        setResult(-1, intent);
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    public final void setCrossFadeSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.crossfade_switch);
        switchCompat.setChecked(this.crossFade);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleFinishingTouchesCrossFade(Boolean.valueOf(z));
                VideoSettingActivity.this.crossFade = z;
            }
        });
    }

    public final void setFadeInSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.fadein_switch);
        switchCompat.setChecked(this.fadeIn);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleFinishingTouchesFadeIn(Boolean.valueOf(z));
                VideoSettingActivity.this.fadeIn = z;
            }
        });
    }

    public final void setFadeOutSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.fadeout_switch);
        switchCompat.setChecked(this.fadeOut);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleFinishingTouchesFadeOut(Boolean.valueOf(z));
                VideoSettingActivity.this.fadeOut = z;
            }
        });
    }

    public final void setPhotoMotionSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.photo_motion_switch);
        switchCompat.setChecked(this.photoMotion);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleFinishingTouchesMotion(Boolean.valueOf(z));
                VideoSettingActivity.this.photoMotion = z;
            }
        });
    }

    public final void setBumperSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.bumper_switch);
        boolean zIsBumperEnabled = DCXReader.isBumperEnabled(this.projKey);
        switchCompat.setChecked(zIsBumperEnabled);
        final TextView textView = (TextView) findViewById(R.id.bumper_text);
        if (zIsBumperEnabled) {
            textView.setText(DCXReader.getBumperName(this.projKey));
        }
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DCXWriter.setVideoBumperState(z, VideoSettingActivity.this.projKey);
                if (z) {
                    textView.setText(DCXReader.getBumperName(VideoSettingActivity.this.projKey));
                } else {
                    textView.setText("");
                }
            }
        });
    }

    public final void setWatermarkView() {
        final SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.watermark_switch);
        boolean z = DCXReader.getOverlayPath(this.projKey) != null;
        switchCompat.setChecked(z);
        if (!z) {
            switchCompat.setEnabled(DCXReader.getPreferenceOverlayPath(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID()) != null);
        }
        final TextView textView = (TextView) findViewById(R.id.watermark_text);
        if (z) {
            textView.setText(DCXReader.getOverlayName(this.projKey));
        }
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.VideoSettingActivity.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                DCXWriter.setGraphicOverlay(z2, VideoSettingActivity.this.projKey);
                if (z2) {
                    textView.setText(DCXReader.getOverlayName(VideoSettingActivity.this.projKey));
                    return;
                }
                textView.setText("");
                switchCompat.setEnabled(DCXReader.getPreferenceOverlayPath(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID()) != null);
            }
        });
    }
}
