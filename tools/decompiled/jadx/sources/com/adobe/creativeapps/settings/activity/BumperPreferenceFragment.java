package com.adobe.creativeapps.settings.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.VideoView;
import com.adobe.creativeapps.settings.R;
import com.h.a.d;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class BumperPreferenceFragment extends BasePreferenceFragment {
    VideoView bumperPreview;
    ImageView clipCheck;
    ImageView customCheck;
    boolean isBumperPremiereClip;
    ProgressBar loadingSpinner;
    ImageView playButton;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View viewInflate = layoutInflater.inflate(R.layout.fragment_bumper_preference, viewGroup, false);
        d.a(viewInflate);
        this.clipCheck = (ImageView) viewInflate.findViewById(R.id.clip_type_check);
        this.customCheck = (ImageView) viewInflate.findViewById(R.id.custom_type_check);
        setUX(viewInflate);
        return viewInflate;
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setUX(View view) {
        setSwitchUX(view);
        setDefaultBumperUX(view);
        setCustomBumperUX(view);
        setPreviewUX(view);
        setCheckedUX(view);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setPreviewUX(View view) {
        this.isBumperPremiereClip = this.ccAppSettingsPreference.isBumperPremiereClip();
        this.assetName = this.ccAppSettingsPreference.getBumperName();
        this.assetPath = this.ccAppSettingsPreference.getBumperPath();
        this.bumperPreview = (VideoView) view.findViewById(R.id.bumperPreview);
        this.loadingSpinner = (ProgressBar) view.findViewById(R.id.asset_load);
        this.playButton = (ImageView) view.findViewById(R.id.play_button);
        if (this.assetPath == null) {
            this.loadingSpinner.setVisibility(0);
            this.bumperPreview.setOnClickListener(null);
            return;
        }
        this.loadingSpinner.setVisibility(4);
        this.bumperPreview.getLayoutParams().height = this.height;
        this.bumperPreview.requestFocus();
        this.playButton.setVisibility(0);
        this.bumperPreview.setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.creativeapps.settings.activity.BumperPreferenceFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (BumperPreferenceFragment.this.bumperPreview.isPlaying()) {
                    BumperPreferenceFragment.this.pausePreview();
                } else {
                    BumperPreferenceFragment.this.playButton.setVisibility(4);
                    BumperPreferenceFragment.this.bumperPreview.seekTo(0);
                    BumperPreferenceFragment.this.bumperPreview.start();
                }
                return false;
            }
        });
        this.bumperPreview.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.adobe.creativeapps.settings.activity.BumperPreferenceFragment.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                BumperPreferenceFragment.this.pausePreview();
            }
        });
        this.bumperPreview.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.adobe.creativeapps.settings.activity.BumperPreferenceFragment.3
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                Log.d("BumperPref", "video view error what=" + i + " extra=" + i2);
                BumperPreferenceFragment.this.handlePlaybackError();
                return true;
            }
        });
        this.bumperPreview.setBackground(null);
        this.bumperPreview.setVideoURI(Uri.fromFile(new File(this.assetPath)));
        if (!this.bumperPreview.isPlaying()) {
            this.bumperPreview.seekTo(50);
        }
        TextView textView = (TextView) view.findViewById(R.id.bumper_file_name);
        if (this.isBumperPremiereClip) {
            textView.setText("");
        } else {
            textView.setText(this.assetName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePlaybackError() {
        this.bumperPreview.setOnClickListener(null);
        this.playButton.setVisibility(4);
        this.ccAppSettingsPreference.generateBumperPreview(this.assetPath, this.width, this.height);
        this.loadingSpinner.setVisibility(0);
    }

    public void postBumperPreview(Bitmap bitmap) {
        this.loadingSpinner.setVisibility(4);
        if (bitmap != null) {
            this.bumperPreview.setBackground(new BitmapDrawable(getResources(), bitmap));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pausePreview() {
        this.bumperPreview.pause();
        this.playButton.setVisibility(0);
        this.bumperPreview.seekTo(0);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment
    protected void setPreferenceState(boolean z) {
        this.ccAppSettingsPreference.setBumperState(z);
    }

    @Override // com.adobe.creativeapps.settings.activity.BasePreferenceFragment, android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.isBumperPremiereClip = this.ccAppSettingsPreference.isBumperPremiereClip();
        this.assetState = this.ccAppSettingsPreference.getBumperState();
        this.assetPath = this.ccAppSettingsPreference.getBumperPath();
        this.assetName = this.ccAppSettingsPreference.getBumperName();
    }

    private void setCustomBumperUX(View view) {
        view.findViewById(R.id.bumper_type_custom).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.BumperPreferenceFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BumperPreferenceFragment.this.ccAppSettingsPreference.onRequestMedia();
            }
        });
    }

    private void setDefaultBumperUX(final View view) {
        view.findViewById(R.id.bumper_type_clip).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativeapps.settings.activity.BumperPreferenceFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BumperPreferenceFragment.this.ccAppSettingsPreference.defaultBumper();
                BumperPreferenceFragment.this.setUX(view);
            }
        });
    }

    private void setCheckedUX(View view) {
        this.isBumperPremiereClip = this.ccAppSettingsPreference.isBumperPremiereClip();
        if (this.isBumperPremiereClip) {
            this.customCheck.setVisibility(4);
            this.clipCheck.setVisibility(0);
        } else {
            this.customCheck.setVisibility(0);
            this.clipCheck.setVisibility(4);
        }
    }
}
