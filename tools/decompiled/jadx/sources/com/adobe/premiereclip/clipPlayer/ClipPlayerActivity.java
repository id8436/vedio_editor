package com.adobe.premiereclip.clipPlayer;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.clipPlayer.CustomVideoView;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.google.android.exoplayer.ExoPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class ClipPlayerActivity extends Activity implements CustomVideoView.PlayPauseListener {
    private CustomCountDownTimer countDownTimer;
    private ImageView loadingSpinner;
    private ImageView mBackBtn;
    private AsyncTask<Void, Void, Void> mScrubSetterTask;
    private LinearLayout mTopBar;
    private CustomVideoView mVideoView;
    private CustomMediaController mediaControls;
    private int position = 0;
    private int controlsAutoHideTimeout = ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS;
    private boolean replaying = false;
    private boolean initialPlayCall = true;
    private boolean mScrubbing = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri uri = null;
        MessageDialog messageDialog = new MessageDialog(this, getString(R.string.video_unavailable), getString(R.string.try_again_msg), false);
        messageDialog.setAcceptButtonListener(new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.1
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                ClipPlayerActivity.this.finish();
            }
        });
        try {
            uri = (Uri) getIntent().getParcelableExtra("videoPlayUri");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (uri == null) {
            messageDialog.show();
        }
        setContentView(R.layout.activity_clip_player);
        if (this.mediaControls == null) {
            this.mediaControls = new CustomMediaController(this);
        }
        this.mTopBar = (LinearLayout) findViewById(R.id.clip_player_top_bar);
        this.mVideoView = (CustomVideoView) findViewById(R.id.video_view);
        this.mVideoView.setPlayPauseListener(this);
        try {
            this.mVideoView.setMediaController(this.mediaControls);
            this.mVideoView.setVideoURI(uri);
        } catch (Exception e3) {
            Log.e(AdobeNotification.Error, e3.getMessage());
            e3.printStackTrace();
            messageDialog.show();
        }
        this.mVideoView.requestFocus();
        this.loadingSpinner = new ImageView(this);
        this.loadingSpinner.setImageDrawable(getResources().getDrawable(R.drawable.btn_spinner));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(convertToPx(26), convertToPx(26));
        layoutParams.addRule(13, -1);
        this.loadingSpinner.setLayoutParams(layoutParams);
        ((RelativeLayout) findViewById(R.id.video_view_wrapper)).addView(this.loadingSpinner);
        this.mVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.2
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                ClipPlayerActivity.this.mVideoView.seekTo(ClipPlayerActivity.this.position);
                if (ClipPlayerActivity.this.position != 0) {
                    ClipPlayerActivity.this.replaying = true;
                }
                ClipPlayerActivity.this.mVideoView.start();
            }
        });
        this.mVideoView.setOnInfoListener(new MediaPlayer.OnInfoListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.3
            @Override // android.media.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                switch (i) {
                    case 3:
                        ClipPlayerActivity.this.hideSpinner();
                        if (!ClipPlayerActivity.this.replaying) {
                            return true;
                        }
                        ClipPlayerActivity.this.mVideoView.pause();
                        ClipPlayerActivity.this.countDownTimer.cancel();
                        ClipPlayerActivity.this.showMediaControls();
                        ClipPlayerActivity.this.replaying = false;
                        return true;
                    case 701:
                        ClipPlayerActivity.this.showSpinner();
                        return true;
                    case 702:
                        ClipPlayerActivity.this.hideSpinner();
                        return true;
                    default:
                        return false;
                }
            }
        });
        this.mVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.4
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                ClipPlayerActivity.this.finish();
                return false;
            }
        });
        this.countDownTimer = new CustomCountDownTimer(this.controlsAutoHideTimeout, this.controlsAutoHideTimeout);
        String stringExtra = "finish";
        try {
            stringExtra = getIntent().getStringExtra("playbackEndBehave");
        } catch (Exception e4) {
            Log.e("ClipPlayer", "Playback end behavior not specified, taking default");
        }
        if (stringExtra.equals("restart")) {
            this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.5
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    ClipPlayerActivity.this.replaying = true;
                    ClipPlayerActivity.this.position = 0;
                    ClipPlayerActivity.this.mVideoView.resume();
                }
            });
        } else {
            this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.6
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    ClipPlayerActivity.this.finish();
                }
            });
        }
        this.mBackBtn = (ImageView) findViewById(R.id.clip_player_back_btn);
        this.mBackBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ClipPlayerActivity.this.onBackPressed();
            }
        });
        getWindow().addFlags(1024);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mVideoView = null;
        this.loadingSpinner = null;
        this.mediaControls.hideImmediate();
        this.mediaControls = null;
        this.mBackBtn = null;
        this.mTopBar = null;
        this.countDownTimer = null;
        this.mScrubSetterTask = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("Position", this.mVideoView.getCurrentPosition());
        this.mVideoView.pause();
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.position = bundle.getInt("Position");
        this.mVideoView.seekTo(this.position);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.mVideoView != null) {
            this.position = this.mVideoView.getCurrentPosition();
        }
        Config.pauseCollectingLifecycleData();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.mVideoView != null) {
            this.mVideoView.seekTo(this.position);
        }
        showSpinner();
        hideMediaControls();
        Config.collectLifecycleData(this);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mVideoView.requestLayout();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.mVideoView != null) {
            this.mVideoView.stopPlayback();
        }
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    public void touchPlayer(View view) {
        if (mediaControlsShown()) {
            hideMediaControls();
        } else {
            showMediaControls();
            this.countDownTimer.restart();
        }
    }

    @Override // com.adobe.premiereclip.clipPlayer.CustomVideoView.PlayPauseListener
    public void onPlayClip() {
        if (this.initialPlayCall || mediaControlsShown()) {
            showMediaControls();
            this.countDownTimer.restart();
        } else {
            hideMediaControls();
        }
        this.initialPlayCall = false;
    }

    @Override // com.adobe.premiereclip.clipPlayer.CustomVideoView.PlayPauseListener
    public void onPauseClip() {
        this.countDownTimer.restart();
    }

    private boolean mediaControlsShown() {
        return this.mTopBar.getVisibility() == 0;
    }

    @Override // com.adobe.premiereclip.clipPlayer.CustomVideoView.PlayPauseListener
    public void onSeek() {
        this.countDownTimer.restart();
        if (this.mScrubSetterTask != null) {
            this.mScrubSetterTask.cancel(true);
        }
        this.mScrubbing = true;
        this.mScrubSetterTask = new AsyncTask<Void, Void, Void>() { // from class: com.adobe.premiereclip.clipPlayer.ClipPlayerActivity.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(1000L);
                    return null;
                } catch (InterruptedException e2) {
                    Log.e("ScrubSetterTaskError", "Exception caught in waiting time");
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r3) {
                ClipPlayerActivity.this.mScrubbing = false;
            }
        };
        this.mScrubSetterTask.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSpinner() {
        this.loadingSpinner.setVisibility(0);
        this.loadingSpinner.bringToFront();
        this.loadingSpinner.startAnimation(AnimationUtils.loadAnimation(this, R.anim.rotate_player_spinner));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSpinner() {
        this.loadingSpinner.setVisibility(8);
        this.loadingSpinner.clearAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideMediaControls() {
        this.mTopBar.setVisibility(4);
        this.mediaControls.hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMediaControls() {
        this.mTopBar.setVisibility(0);
        this.mTopBar.bringToFront();
        this.mediaControls.showIndefinite();
    }

    private int convertToPx(int i) {
        return (int) ((getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    class CustomCountDownTimer extends CountDownTimer {
        CustomCountDownTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }

        public void restart() {
            cancel();
            start();
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (ClipPlayerActivity.this.mediaControls != null) {
                ClipPlayerActivity.this.hideMediaControls();
            }
        }
    }

    class CustomMediaController extends MediaController {
        public CustomMediaController(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public CustomMediaController(Context context) {
            super(context, true);
        }

        @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
            if (keyEvent.getKeyCode() == 4) {
                ((ClipPlayerActivity) getContext()).onBackPressed();
            }
            return zDispatchKeyEvent;
        }

        @Override // android.widget.MediaController
        public void show() {
        }

        @Override // android.widget.MediaController
        public void show(int i) {
        }

        @Override // android.widget.MediaController
        public void hide() {
            if (!ClipPlayerActivity.this.mScrubbing) {
                super.hide();
            }
        }

        public void showIndefinite() {
            super.show(0);
        }

        public void hideImmediate() {
            super.hide();
        }
    }
}
