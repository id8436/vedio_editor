package com.adobe.premiereclip.clipPlayer;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Point;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.util.ScreenUtils;
import com.google.android.exoplayer.ExoPlayer;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class VideoPlaybackActivity extends Activity implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, SurfaceHolder.Callback {
    private ImageView mBackButton;
    private CustomCountDownTimer mCountDownTimer;
    private TextView mCurrentDuration;
    private ImageView mFastForwardButton;
    private Handler mHandler;
    private SurfaceHolder mHolder;
    private ProgressBar mLoadingSpinner;
    private MediaPlayer mMediaPlayer;
    private ImageView mPlayPauseButton;
    private RelativeLayout mPlayerControls;
    private SurfaceView mPreview;
    private ImageView mRewindButton;
    private SeekBar mSeekBar;
    private TextView mTotalDuration;
    private int mVideoHeight;
    private int mVideoWidth;
    private int[] playerContainerLandscapeSize;
    private int[] playerContainerPortraitSize;
    private int offsetDuration = ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS;
    private Uri videoUri = null;
    private boolean mIsVideoSizeKnown = false;
    private boolean mIsVideoReadyToBePlayed = false;
    private int currentPosition = 0;
    private boolean pauseDoneOnce = false;
    private boolean pauseState = false;
    private boolean restart = false;
    private boolean playStarted = false;
    private Runnable mUpdateTimeTask = new Runnable() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (VideoPlaybackActivity.this.mMediaPlayer != null) {
                int duration = VideoPlaybackActivity.this.mMediaPlayer.getDuration();
                int currentPosition = VideoPlaybackActivity.this.mMediaPlayer.getCurrentPosition();
                VideoPlaybackActivity.this.mCurrentDuration.setText(VideoPlaybackActivity.this.getFormattedDuration(currentPosition));
                VideoPlaybackActivity.this.currentPosition = currentPosition;
                int iTimeToProgress = VideoPlaybackActivity.this.timeToProgress(currentPosition, duration);
                if (VideoPlaybackActivity.this.mSeekBar != null) {
                    VideoPlaybackActivity.this.mSeekBar.setProgress(iTimeToProgress);
                }
                if (iTimeToProgress < 100) {
                    VideoPlaybackActivity.this.mHandler.postDelayed(this, 100L);
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_video_playback);
        this.mPlayerControls = (RelativeLayout) findViewById(R.id.player_controls);
        this.mPreview = (SurfaceView) findViewById(R.id.player_surface);
        this.mSeekBar = (SeekBar) findViewById(R.id.seekbar);
        this.mPlayPauseButton = (ImageView) findViewById(R.id.playpause);
        this.mFastForwardButton = (ImageView) findViewById(R.id.fastforward);
        this.mRewindButton = (ImageView) findViewById(R.id.rewind);
        this.mLoadingSpinner = (ProgressBar) findViewById(R.id.player_loading);
        this.mCurrentDuration = (TextView) findViewById(R.id.current_duration);
        this.mTotalDuration = (TextView) findViewById(R.id.total_duration);
        this.mBackButton = (ImageView) findViewById(R.id.back_btn);
        addPlayerControlListeners();
        setSeekBarListener();
        addBackButtonListener();
        this.mHolder = this.mPreview.getHolder();
        this.mHolder.addCallback(this);
        this.mHandler = new Handler();
        this.mCountDownTimer = new CustomCountDownTimer(4000L, 50L);
        calculateDisplayDimensions();
        try {
            this.videoUri = (Uri) getIntent().getParcelableExtra("videoPlayUri");
            this.restart = getIntent().getStringExtra("playbackEndBehave").equals("restart");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.videoUri == null) {
            showVideoUnavailableDialog();
        }
        showSpinner();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        setFullScreenUI();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.pauseDoneOnce = true;
        this.pauseState = true;
        if (this.mMediaPlayer != null) {
            this.currentPosition = this.mMediaPlayer.getCurrentPosition();
            this.mHandler.removeCallbacks(this.mUpdateTimeTask);
            pauseMediaPlayer();
        }
        this.mCountDownTimer.cancelTimer();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.pauseState = false;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        releaseMediaPlayer();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        releaseMediaPlayer();
        this.mCountDownTimer = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setPlayerDimensions();
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        switch (i) {
            case 3:
                if (!this.mMediaPlayer.isPlaying()) {
                    resumeMediaPlayer();
                }
                break;
            case 701:
                pauseMediaPlayer();
                this.mCountDownTimer.cancelTimer();
                showSpinner();
                break;
            case 702:
                hideSpinner();
                if (!this.mMediaPlayer.isPlaying()) {
                    resumeMediaPlayer();
                }
                break;
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (!this.pauseState && this.mIsVideoReadyToBePlayed && this.mIsVideoSizeKnown) {
            if (this.restart) {
                playBackComplete();
            } else {
                onBackPressed();
            }
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (i == 0 || i2 == 0) {
            Log.e("VideoPlayback", "invalid video width(" + i + ") or height(" + i2 + ")");
            return;
        }
        this.mVideoHeight = i2;
        this.mVideoWidth = i;
        this.mIsVideoSizeKnown = true;
        if (this.mIsVideoReadyToBePlayed) {
            startVideoPlayback();
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.mIsVideoReadyToBePlayed = true;
        if (this.mIsVideoSizeKnown) {
            startVideoPlayback();
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        this.mCountDownTimer.cancelTimer();
        releaseMediaPlayer();
        finish();
        return false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        initMediaPlayer();
    }

    private void startVideoPlayback() {
        hideSpinner();
        showMediaControls();
        setPlayerDimensions();
        this.mCountDownTimer.cancelTimer();
        this.mCountDownTimer.start();
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.seekTo(this.currentPosition);
            this.mSeekBar.setProgress(timeToProgress(this.currentPosition, this.mMediaPlayer.getDuration()));
            this.mTotalDuration.setText(getFormattedDuration(this.mMediaPlayer.getDuration()));
        }
        if (this.pauseDoneOnce) {
            pauseMediaPlayer();
            this.pauseDoneOnce = false;
        } else if (!this.playStarted) {
            resumeMediaPlayer();
            this.playStarted = true;
        }
    }

    private void setPlayerDimensions() {
        if (getResources().getConfiguration().orientation == 2) {
            fitVideoInScreen(this.playerContainerLandscapeSize[0], this.playerContainerLandscapeSize[1]);
        } else {
            fitVideoInScreen(this.playerContainerPortraitSize[0], this.playerContainerLandscapeSize[0]);
        }
    }

    private void fitVideoInScreen(int i, int i2) {
        int i3 = this.mVideoWidth;
        int i4 = this.mVideoHeight;
        int i5 = (int) (((double) i) / (((double) this.mVideoWidth) / ((double) this.mVideoHeight)));
        if (i5 > i2) {
            i = (int) ((((double) this.mVideoWidth) / ((double) this.mVideoHeight)) * ((double) i2));
        } else {
            i2 = i5;
        }
        this.mHolder.setFixedSize(i, i2);
    }

    private void initMediaPlayer() {
        try {
            if (this.mMediaPlayer == null) {
                this.mMediaPlayer = new MediaPlayer();
                this.mMediaPlayer.setAudioStreamType(3);
                this.mMediaPlayer.setDataSource(this, this.videoUri);
                this.mMediaPlayer.setOnInfoListener(this);
                this.mMediaPlayer.setOnCompletionListener(this);
                this.mMediaPlayer.setOnPreparedListener(this);
                this.mMediaPlayer.setOnVideoSizeChangedListener(this);
                this.mMediaPlayer.prepareAsync();
            }
            this.mMediaPlayer.setDisplay(this.mHolder);
        } catch (Exception e2) {
            e2.printStackTrace();
            showVideoUnavailableDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeMediaPlayer() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.start();
            updateProgressBar();
            this.mPlayPauseButton.setImageResource(R.drawable.ic_media_pause);
            this.mCountDownTimer.cancelTimer();
            this.mCountDownTimer.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseMediaPlayer() {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.pause();
            this.mPlayPauseButton.setImageResource(R.drawable.ic_media_play);
            this.mCountDownTimer.cancelTimer();
            this.mCountDownTimer.start();
        }
    }

    private void releaseMediaPlayer() {
        if (this.mMediaPlayer != null) {
            if (this.mMediaPlayer.isPlaying()) {
                this.mMediaPlayer.stop();
            }
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgressBar() {
        this.mHandler.postDelayed(this.mUpdateTimeTask, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int progressToTimer(int i, int i2) {
        return (int) ((((double) i) / 100.0d) * ((double) i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int timeToProgress(int i, int i2) {
        return (int) ((((double) i) / ((double) i2)) * 100.0d);
    }

    private void playBackComplete() {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        if (this.mSeekBar != null) {
            this.mSeekBar.setProgress(0);
        }
        this.mCurrentDuration.setText(getFormattedDuration(0));
        this.currentPosition = 0;
        pauseMediaPlayer();
        this.mMediaPlayer.seekTo(0);
    }

    private void addPlayerControlListeners() {
        this.mPlayPauseButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoPlaybackActivity.this.mMediaPlayer == null || !VideoPlaybackActivity.this.mMediaPlayer.isPlaying()) {
                    VideoPlaybackActivity.this.resumeMediaPlayer();
                } else {
                    VideoPlaybackActivity.this.pauseMediaPlayer();
                }
            }
        });
        this.mFastForwardButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoPlaybackActivity.this.mMediaPlayer != null) {
                    int currentPosition = VideoPlaybackActivity.this.mMediaPlayer.getCurrentPosition();
                    int duration = VideoPlaybackActivity.this.mMediaPlayer.getDuration();
                    int i = currentPosition + VideoPlaybackActivity.this.offsetDuration;
                    if (i <= duration) {
                        duration = i;
                    }
                    VideoPlaybackActivity.this.seekMediaPlayer(duration);
                    VideoPlaybackActivity.this.mCountDownTimer.cancelTimer();
                    VideoPlaybackActivity.this.mCountDownTimer.start();
                }
            }
        });
        this.mRewindButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (VideoPlaybackActivity.this.mMediaPlayer != null) {
                    int currentPosition = VideoPlaybackActivity.this.mMediaPlayer.getCurrentPosition() - VideoPlaybackActivity.this.offsetDuration;
                    if (currentPosition < 0) {
                        currentPosition = 0;
                    }
                    VideoPlaybackActivity.this.seekMediaPlayer(currentPosition);
                    VideoPlaybackActivity.this.mCountDownTimer.cancelTimer();
                    VideoPlaybackActivity.this.mCountDownTimer.start();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekMediaPlayer(int i) {
        this.mMediaPlayer.seekTo(i);
        this.mSeekBar.setProgress(timeToProgress(i, this.mMediaPlayer.getDuration()));
    }

    private void setSeekBarListener() {
        this.mSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlaybackActivity.this.mHandler.removeCallbacks(VideoPlaybackActivity.this.mUpdateTimeTask);
                VideoPlaybackActivity.this.mCountDownTimer.cancelTimer();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlaybackActivity.this.mHandler.removeCallbacks(VideoPlaybackActivity.this.mUpdateTimeTask);
                if (VideoPlaybackActivity.this.mMediaPlayer != null) {
                    int iProgressToTimer = VideoPlaybackActivity.this.progressToTimer(seekBar.getProgress(), VideoPlaybackActivity.this.mMediaPlayer.getDuration());
                    Log.d("TrackActivity", "seek position " + iProgressToTimer);
                    VideoPlaybackActivity.this.seekMediaPlayer(iProgressToTimer);
                    VideoPlaybackActivity.this.updateProgressBar();
                    VideoPlaybackActivity.this.mCountDownTimer.start();
                }
            }
        });
    }

    private void addBackButtonListener() {
        this.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoPlaybackActivity.this.onBackPressed();
            }
        });
    }

    private void setFullScreenUI() {
        ScreenUtils.fullscreen(this);
        setRequestedOrientation(-1);
        getWindow().addFlags(1024);
        getWindow().clearFlags(2048);
    }

    private void calculateDisplayDimensions() {
        int i;
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        if (getResources().getConfiguration().orientation == 2) {
            i = point.y;
        } else {
            i = point.x;
        }
        this.playerContainerPortraitSize = new int[]{i, (i * 9) / 16};
        int i2 = point.x;
        this.playerContainerLandscapeSize = new int[]{(i2 * 16) / 9, i2};
        Log.d("VideoPlayback", "portrait " + this.playerContainerPortraitSize[0] + ", " + this.playerContainerPortraitSize[1] + "    landscape " + this.playerContainerLandscapeSize[0] + ", " + this.playerContainerLandscapeSize[1]);
    }

    private void showSpinner() {
        this.mLoadingSpinner.setVisibility(0);
    }

    private void hideSpinner() {
        this.mLoadingSpinner.setVisibility(4);
    }

    private void hideMediaControls() {
        this.mPlayerControls.setVisibility(4);
        this.mBackButton.setVisibility(4);
    }

    private void showMediaControls() {
        this.mPlayerControls.setVisibility(0);
        this.mBackButton.setVisibility(0);
    }

    private void showVideoUnavailableDialog() {
        this.mPlayerControls.setVisibility(4);
        MessageDialog messageDialog = new MessageDialog(this, getString(R.string.video_unavailable), getString(R.string.try_again_msg), false);
        messageDialog.setAcceptButtonListener(new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity.7
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                VideoPlaybackActivity.this.finish();
            }
        });
        messageDialog.show();
    }

    public void touchPlayer(View view) {
        if (this.mPlayerControls.getVisibility() == 0) {
            hideMediaControls();
            return;
        }
        showMediaControls();
        this.mCountDownTimer.cancelTimer();
        this.mCountDownTimer.start();
    }

    public void touchMediaControls(View view) {
        this.mPlayerControls.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFormattedDuration(int i) {
        if (i < 3600000) {
            return String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(i)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(i) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(i))));
        }
        return String.format("%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(i)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(i) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(i))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(i) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(i))));
    }

    class CustomCountDownTimer extends CountDownTimer {
        private boolean fadeOut;

        CustomCountDownTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (j <= 1000) {
                this.fadeOut = true;
                VideoPlaybackActivity.this.mPlayerControls.setAlpha(j / 1000);
                VideoPlaybackActivity.this.mBackButton.setAlpha(j / 1000);
                return;
            }
            this.fadeOut = false;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (VideoPlaybackActivity.this.mPlayerControls.getVisibility() == 0) {
                VideoPlaybackActivity.this.mPlayerControls.setVisibility(4);
            }
            VideoPlaybackActivity.this.mPlayerControls.setAlpha(1.0f);
            if (VideoPlaybackActivity.this.mBackButton.getVisibility() == 0) {
                VideoPlaybackActivity.this.mBackButton.setVisibility(4);
            }
            this.fadeOut = false;
        }

        public void cancelTimer() {
            cancel();
            VideoPlaybackActivity.this.mPlayerControls.setAlpha(1.0f);
            VideoPlaybackActivity.this.mBackButton.setAlpha(1.0f);
        }

        public boolean isFadeOut() {
            return this.fadeOut;
        }
    }
}
