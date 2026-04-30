package com.adobe.premiereclip.editor.waveform;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v7.widget.SwitchCompat;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.waveform.AudioPeakGenerator;
import com.adobe.premiereclip.editor.waveform.SoundWaveView;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.AudioTrack;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class BackgroundMusicView {
    private Activity activity;
    private boolean audioDuck;
    private boolean audioFadeIn;
    private boolean audioFadeOut;
    private Animation closeAnimationBottom;
    private Animation closeAnimationTop;
    private Listener listener;
    private RelativeLayout musicTopBar;
    private ScrollView musicView;
    private boolean open;
    private Animation openAnimationBottom;
    private Animation openAnimationTop;
    private AudioPeakGenerator peakGenerator;
    private Project project;
    private boolean snapToBeat;
    private SoundWaveView soundWaveView;
    private boolean toBeOpened;
    private RelativeLayout trackNameUi;
    private TextView volumeText;
    private RelativeLayout waveContainer;
    private ImageView waveSpinner;

    public interface Listener {
        void audioSettingsUpdated(Editor.SequenceAudioOptions sequenceAudioOptions, float f2);
    }

    public BackgroundMusicView(Activity activity, String str, AudioPeakGenerator audioPeakGenerator, Listener listener) {
        this.activity = activity;
        this.listener = listener;
        this.peakGenerator = audioPeakGenerator;
        this.project = ProjectManager.getInstance().getProjectWithKey(str);
        this.musicView = (ScrollView) activity.findViewById(R.id.music_view);
        this.musicTopBar = (RelativeLayout) activity.findViewById(R.id.music_top);
        this.waveContainer = (RelativeLayout) activity.findViewById(R.id.wave_bar);
        this.waveSpinner = (ImageView) activity.findViewById(R.id.wave_spinner);
        this.trackNameUi = (RelativeLayout) activity.findViewById(R.id.track_name_ui);
        this.musicView.setVisibility(4);
        this.musicTopBar.setVisibility(4);
        this.trackNameUi.setVisibility(4);
        this.open = false;
        this.toBeOpened = false;
    }

    public boolean isOpen() {
        return this.open;
    }

    public boolean toBeOpened() {
        return this.toBeOpened;
    }

    public void setToBeOpened() {
        this.toBeOpened = true;
    }

    public void showView() {
        TextView textView = (TextView) this.activity.findViewById(R.id.current_track_name);
        if (this.project.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
            textView.setText(((AudioClip) this.project.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0)).songName);
        }
        setMusicStartTimeText();
        this.audioFadeIn = this.project.getSequence().getAudioFadeInApplied();
        this.audioFadeOut = this.project.getSequence().getAudioFadeOutApplied();
        this.snapToBeat = this.project.getSequence().getSnapToBeatApplied();
        this.audioDuck = this.project.getSequence().getAudioDuckApplied();
        float volume = this.project.getSequence().getVolume();
        SeekBar seekBar = (SeekBar) this.activity.findViewById(R.id.volume_seekbar);
        seekBar.setProgress(((int) (volume * 100.0f)) / 2);
        Utilities.setSeekBarTheme(this.activity, seekBar);
        seekBar.setOnSeekBarChangeListener(getVolumeBarListener());
        this.volumeText = (TextView) this.activity.findViewById(R.id.volume_percentage);
        this.volumeText.setText(String.valueOf((int) (volume * 100.0f)) + "%");
        setSnapToBeatSwitch();
        setAudioDuckSwitch();
        setAudioFadeInSwitch();
        setAudioFadeOutSwitch();
        setMusicDeleteButton();
        this.waveSpinner.setVisibility(0);
        this.waveSpinner.startAnimation(AnimationUtils.loadAnimation(this.activity, R.anim.rotate_indefinitely));
        this.musicView.setVisibility(0);
        this.musicTopBar.setVisibility(0);
        this.trackNameUi.setVisibility(0);
        if (!isAnimationInitialized()) {
            initializeAnimations();
        }
        this.closeAnimationTop.cancel();
        this.closeAnimationBottom.cancel();
        this.musicView.startAnimation(this.openAnimationBottom);
        this.musicTopBar.startAnimation(this.openAnimationTop);
        initWaveForm();
        this.musicView.scrollTo(0, 0);
        this.open = true;
        this.toBeOpened = false;
    }

    public void hideView() {
        this.activity.findViewById(R.id.touch_guard).setVisibility(0);
        this.peakGenerator.cancelOngoingTask();
        if (this.soundWaveView != null) {
            this.soundWaveView.resetView();
            this.soundWaveView.setVisibility(4);
        }
        this.waveContainer.removeAllViews();
        if (!isAnimationInitialized()) {
            initializeAnimations();
        }
        this.musicView.startAnimation(this.closeAnimationBottom);
        this.musicTopBar.startAnimation(this.closeAnimationTop);
        this.musicView.setVisibility(4);
        this.musicTopBar.setVisibility(4);
        this.trackNameUi.setVisibility(4);
        this.activity.findViewById(R.id.top_bar).setVisibility(0);
        this.activity.findViewById(R.id.add_clip_btn).setVisibility(0);
        this.open = false;
    }

    private void initializeAnimations() {
        this.openAnimationTop = new TranslateAnimation(this.musicView.getWidth(), 0.0f, 0.0f, 0.0f);
        this.openAnimationTop.setDuration(200);
        this.closeAnimationTop = new TranslateAnimation(0.0f, this.musicView.getWidth(), 0.0f, 0.0f);
        this.closeAnimationTop.setDuration(200);
        this.openAnimationBottom = new TranslateAnimation(this.musicView.getWidth(), 0.0f, 0.0f, 0.0f);
        this.openAnimationBottom.setDuration(200);
        this.openAnimationBottom.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (!BackgroundMusicView.this.project.getSequence().getClips().isEmpty()) {
                    BackgroundMusicView.this.activity.findViewById(R.id.clip_options).setVisibility(4);
                    BackgroundMusicView.this.activity.findViewById(R.id.sequence_controls).setVisibility(4);
                }
                BackgroundMusicView.this.activity.findViewById(R.id.top_bar).setVisibility(4);
                BackgroundMusicView.this.activity.findViewById(R.id.add_clip_btn).setVisibility(4);
                BackgroundMusicView.this.activity.findViewById(R.id.touch_guard).setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.closeAnimationBottom = new TranslateAnimation(0.0f, this.musicView.getWidth(), 0.0f, 0.0f);
        this.closeAnimationBottom.setDuration(200);
        this.closeAnimationBottom.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                BackgroundMusicView.this.activity.findViewById(R.id.touch_guard).setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    private boolean isAnimationInitialized() {
        return (this.openAnimationBottom == null || this.openAnimationTop == null || this.closeAnimationBottom == null || this.closeAnimationTop == null) ? false : true;
    }

    private void initWaveForm() {
        WaveDisplayParam waveDisplayParam = new WaveDisplayParam(0.0f, 0.0f, 200.0f, this.activity.getResources().getDimension(R.dimen.soundwave_height));
        WaveDisplayParam waveDisplayParam2 = new WaveDisplayParam(0.0f, 0.0f, WaveUtils.getTotalWaveFormLength(this.project), this.activity.getResources().getDimension(R.dimen.soundwave_height));
        if (this.project.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
            this.peakGenerator.initPeakGenerator(this.project.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0), waveDisplayParam, waveDisplayParam2, new Handler(), getFullPeakListener(), false);
        }
    }

    private AudioPeakGenerator.Listener getFullPeakListener() {
        return new AudioPeakGenerator.Listener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.3
            @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
            public void onWaveformDraw(ArrayList<Bitmap> arrayList, Clip clip) {
                BackgroundMusicView.this.waveSpinner.clearAnimation();
                BackgroundMusicView.this.waveSpinner.setVisibility(4);
                BackgroundMusicView.this.waveContainer.removeAllViews();
                if (BackgroundMusicView.this.project.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
                    int waveFormLength = WaveUtils.getWaveFormLength(BackgroundMusicView.this.project, BackgroundMusicView.this.project.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0).getStartTimeUs());
                    BackgroundMusicView.this.soundWaveView = new SoundWaveView(BackgroundMusicView.this.activity, BackgroundMusicView.this.activity, BackgroundMusicView.this.getWaveScrollListener(), WaveUtils.getTotalWaveFormLength(BackgroundMusicView.this.project), waveFormLength, WaveUtils.getWaveFormLength(BackgroundMusicView.this.project, WaveUtils.END_DURATION_BLOCKED));
                    BackgroundMusicView.this.soundWaveView.addBitmaps(arrayList);
                    BackgroundMusicView.this.waveContainer.addView(BackgroundMusicView.this.soundWaveView);
                }
                BackgroundMusicView.this.setMusicStartTimeText();
            }

            @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
            public void onWaveformClear() {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SoundWaveView.WaveScrollListener getWaveScrollListener() {
        return new SoundWaveView.WaveScrollListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.4
            @Override // com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollListener
            public void onScrolled(float f2) {
                int iRound = Math.round(f2);
                Log.d("WaveScroll", "pixels scrolled : " + iRound);
                long durationOfWave = WaveUtils.getDurationOfWave(BackgroundMusicView.this.project, iRound);
                AudioTrack audioTrack = BackgroundMusicView.this.project.getSequence().getAudioTrackGroup().getAudioTrack();
                if (audioTrack.getNumClips() > 0) {
                    Clip clipAtIndex = audioTrack.getClipAtIndex(0);
                    if (clipAtIndex.getStartTimeUs() != durationOfWave) {
                        clipAtIndex.setStartTimeUs(durationOfWave);
                        Metrics.sharedInstance().didChangeSoundtrackInPoint(durationOfWave / 1000000.0f);
                        BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_START_CHANGE, 1.0f);
                        BackgroundMusicView.this.setMusicStartTimeText();
                    }
                }
            }

            @Override // com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollListener
            public void onScrolling(float f2) {
                int iRound = Math.round(f2);
                Log.d("WaveScroll", "pixels scrolled : " + iRound);
                BackgroundMusicView.this.setMusicStartTimeText(WaveUtils.getDurationOfWave(BackgroundMusicView.this.project, iRound) / 1000);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMusicStartTimeText() {
        AudioTrack audioTrack = this.project.getSequence().getAudioTrackGroup().getAudioTrack();
        if (audioTrack.getNumClips() > 0) {
            setMusicStartTimeText(audioTrack.getClipAtIndex(0).getStartTimeUs() / 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMusicStartTimeText(long j) {
        ((TextView) this.activity.findViewById(R.id.current_track_duration)).setText(this.activity.getResources().getString(R.string.song_start_text) + " " + String.format("%d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j)))));
    }

    private void setMusicDeleteButton() {
        ((Button) this.activity.findViewById(R.id.music_delete)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Metrics.sharedInstance().didTapDeleteSoundtrack();
                BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_DELETE, 1.0f);
            }
        });
    }

    private final void setAudioFadeInSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) this.activity.findViewById(R.id.audiofadein_switch);
        switchCompat.setChecked(this.audioFadeIn);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleSoundtrackFadeIn(Boolean.valueOf(z));
                BackgroundMusicView.this.audioFadeIn = z;
                if (BackgroundMusicView.this.audioFadeIn) {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_FADE_IN, 1.0f);
                } else {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_FADE_IN, 0.0f);
                }
            }
        });
    }

    private final void setAudioFadeOutSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) this.activity.findViewById(R.id.audiofadeout_switch);
        switchCompat.setChecked(this.audioFadeOut);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleSoundtrackFadeOut(Boolean.valueOf(z));
                BackgroundMusicView.this.audioFadeOut = z;
                if (BackgroundMusicView.this.audioFadeOut) {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_FADE_OUT, 1.0f);
                } else {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_FADE_OUT, 0.0f);
                }
            }
        });
    }

    private final void setSnapToBeatSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) this.activity.findViewById(R.id.snap_to_beat_switch);
        switchCompat.setChecked(this.snapToBeat);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleSoundtrackSnapToBeat(Boolean.valueOf(z));
                BackgroundMusicView.this.snapToBeat = z;
                if (BackgroundMusicView.this.snapToBeat) {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_SNAP_TO_BEAT, 1.0f);
                } else {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_SNAP_TO_BEAT, 0.0f);
                }
            }
        });
    }

    private final void setAudioDuckSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) this.activity.findViewById(R.id.audioduck_switch);
        switchCompat.setChecked(this.audioDuck);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.9
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleSoundtrackAutoMix(Boolean.valueOf(z));
                BackgroundMusicView.this.audioDuck = z;
                if (BackgroundMusicView.this.audioDuck) {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_MIX, 1.0f);
                } else {
                    BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_MIX, 0.0f);
                }
            }
        });
    }

    private SeekBar.OnSeekBarChangeListener getVolumeBarListener() {
        return new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.waveform.BackgroundMusicView.10
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                int i2 = i * 2;
                BackgroundMusicView.this.volumeText.setText(String.valueOf(i2) + "%");
                Metrics.sharedInstance().didChangeSoundtrackVolumeSlider(i2 / 100.0f);
                BackgroundMusicView.this.listener.audioSettingsUpdated(Editor.SequenceAudioOptions.AUDIO_VOLUME, i2 / 100.0f);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
            }
        };
    }
}
