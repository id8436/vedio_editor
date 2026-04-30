package com.adobe.premiereclip.music;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class TrackActivity extends TopOfEditorActivity implements MediaPlayer.OnCompletionListener {
    private TrackAdapter mAdapter;
    private Button mAddButton;
    private Handler mHandler;
    private RecyclerView.LayoutManager mLayoutManager;
    private String mLocation;
    private String mProjKey;
    private RecyclerView mRecyclerView;
    private TextView mTitle;
    private Runnable mUpdateTimeTask = new Runnable() { // from class: com.adobe.premiereclip.music.TrackActivity.1
        @Override // java.lang.Runnable
        public void run() {
            int progressPercentage = TrackActivity.this.getProgressPercentage(TrackActivity.this.musicPlayer.getCurrentPosition(), TrackActivity.this.musicPlayer.getDuration());
            SeekBar currentSeekBar = TrackActivity.this.mAdapter.getCurrentSeekBar();
            if (currentSeekBar != null) {
                currentSeekBar.setProgress(progressPercentage);
            }
            if (progressPercentage >= 100) {
                TrackActivity.this.songCompletionTask();
            } else {
                TrackActivity.this.mHandler.postDelayed(this, 100L);
            }
        }
    };
    private MediaPlayer musicPlayer;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_songs);
        d.a(this);
        this.mRecyclerView = (RecyclerView) findViewById(R.id.songs_view);
        this.mLayoutManager = new LinearLayoutManager(this);
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mHandler = new Handler();
        this.musicPlayer = new MediaPlayer();
        this.musicPlayer.setAudioStreamType(3);
        this.musicPlayer.setLooping(false);
        this.mTitle = (TextView) findViewById(R.id.songs_title);
        this.mAddButton = (Button) findViewById(R.id.music_add);
        this.mAddButton.setVisibility(4);
        String stringExtra = getIntent().getStringExtra("category");
        String stringExtra2 = getIntent().getStringExtra("id");
        String stringExtra3 = getIntent().getStringExtra("name");
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        this.mLocation = "Hammersmith";
        if (stringExtra.equals(getResources().getString(R.string.albums_category))) {
            arrayList = SoundTrackManager.getSongsinMediaStoreforAlbum(this, stringExtra2);
        } else if (stringExtra.equals(getResources().getString(R.string.artists_category))) {
            arrayList = SoundTrackManager.getSongsinMediaStoreforArtist(this, stringExtra2);
        } else if (stringExtra.equals(getResources().getString(R.string.songs_category))) {
            arrayList = SoundTrackManager.getAllSongsinMediaStore(this);
        } else if (stringExtra.equals(getResources().getString(R.string.default_tracks_category))) {
            this.mLocation = "Premiere Clip Themes";
            arrayList = SoundTrackManager.getClipSoundTracks(this);
        } else if (stringExtra.equals(getResources().getString(R.string.playlists_category))) {
            arrayList = SoundTrackManager.getSongsinMediaStoreforPlaylist(this, stringExtra2);
        }
        this.mAdapter = new TrackAdapter(arrayList);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mTitle.setText(stringExtra3);
        this.mProjKey = getIntent().getStringExtra("project_key");
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
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        this.mAdapter.setCurrentProgress();
        this.mAdapter.setPause();
        pauseMusicPlayer();
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        SeekBar currentSeekBar = this.mAdapter.getCurrentSeekBar();
        if (currentSeekBar != null) {
            currentSeekBar.setOnSeekBarChangeListener(null);
        }
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        if (this.musicPlayer != null) {
            if (this.musicPlayer.isPlaying()) {
                this.musicPlayer.stop();
            }
            this.musicPlayer.release();
            this.musicPlayer = null;
        }
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    public void prepareMusicPlayer(Uri uri) {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        try {
            this.musicPlayer.stop();
            this.musicPlayer.reset();
            this.musicPlayer.setDataSource(this, uri);
            this.musicPlayer.prepare();
            SeekBar currentSeekBar = this.mAdapter.getCurrentSeekBar();
            if (currentSeekBar != null) {
                currentSeekBar.setProgress(0);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (IllegalStateException e4) {
            e4.printStackTrace();
        }
    }

    private void startMusicPlayer() {
        if (this.musicPlayer != null) {
            this.musicPlayer.start();
            updateProgressBar();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseMusicPlayer() {
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        if (this.musicPlayer != null && this.musicPlayer.isPlaying()) {
            this.musicPlayer.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeMusicPlayer() {
        if (this.musicPlayer != null) {
            this.musicPlayer.start();
        }
        updateProgressBar();
    }

    public void updateProgressBar() {
        this.mHandler.postDelayed(this.mUpdateTimeTask, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getProgressPercentage(long j, long j2) {
        Double.valueOf(0.0d);
        return Double.valueOf((((double) ((int) (j / 1000))) / ((double) ((int) (j2 / 1000)))) * 100.0d).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int progressToTimer(int i, int i2) {
        return ((int) (((double) (i2 / 1000)) * (((double) i) / 100.0d))) * 1000;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void songCompletionTask() {
        Log.d("Tracks", "finished playing song");
        this.mHandler.removeCallbacks(this.mUpdateTimeTask);
        SeekBar currentSeekBar = this.mAdapter.getCurrentSeekBar();
        if (currentSeekBar != null) {
            currentSeekBar.setProgress(0);
        }
        this.mAdapter.setPause();
    }

    public void addTrack(View view) {
        AudioClip currentTrack = this.mAdapter.getCurrentTrack();
        if (currentTrack != null) {
            Log.d("Tracks", "add pressed");
            ProjectManager.getInstance().getProjectWithKey(this.mProjKey).getSequence().getAudioTrackGroup().getAudioTrack().replaceAudioClip(currentTrack);
            DCXWriter.addAudioTrack(ProjectManager.getInstance().getProjectWithKey(this.mProjKey).getSequence());
            Intent intent = new Intent();
            intent.putExtra("track_location", this.mLocation + " : " + currentTrack.songName);
            intent.putExtra("track_selected", true);
            setResult(-1, intent);
            onBackPressed();
        }
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    public class TrackAdapter extends RecyclerView.Adapter<ViewHolder> {
        private int currentProgress;
        private ArrayList<AudioClip> songList;
        private int currentTrackIndex = -1;
        private SeekBar currentSeekBar = null;
        private boolean isSongPlaying = false;

        public TrackAdapter(ArrayList<AudioClip> arrayList) {
            this.songList = arrayList;
        }

        public SeekBar getCurrentSeekBar() {
            return this.currentSeekBar;
        }

        public void setCurrentProgress() {
            if (this.currentSeekBar != null) {
                this.currentProgress = this.currentSeekBar.getProgress();
            }
        }

        public void setCurrentSeekBar(SeekBar seekBar) {
            this.currentSeekBar = seekBar;
            this.currentSeekBar.setVisibility(0);
            Utilities.setSeekBarTheme(TrackActivity.this, this.currentSeekBar);
            this.currentSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.music.TrackActivity.TrackAdapter.1
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar2) {
                    TrackActivity.this.mHandler.removeCallbacks(TrackActivity.this.mUpdateTimeTask);
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar2) {
                    TrackActivity.this.mHandler.removeCallbacks(TrackActivity.this.mUpdateTimeTask);
                    int iProgressToTimer = TrackActivity.this.progressToTimer(seekBar2.getProgress(), TrackActivity.this.musicPlayer.getDuration());
                    Log.d("TrackActivity", "seek position " + iProgressToTimer);
                    TrackActivity.this.musicPlayer.seekTo(iProgressToTimer);
                    TrackActivity.this.updateProgressBar();
                }
            });
        }

        public void disableSeekBar(SeekBar seekBar) {
            seekBar.setOnSeekBarChangeListener(null);
            seekBar.setVisibility(4);
        }

        public void setPause() {
            Log.d("TrackVV", "setpause called in adapter");
            this.isSongPlaying = false;
            notifyItemChanged(this.currentTrackIndex);
        }

        public AudioClip getCurrentTrack() {
            if (this.currentTrackIndex > -1) {
                return this.songList.get(this.currentTrackIndex);
            }
            return null;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.songList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ViewHolder viewHolder = new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_song, viewGroup, false));
            d.a(viewHolder.mSongDuration);
            d.a(viewHolder.mSongName);
            return viewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            viewHolder.mSongName.setText(this.songList.get(i).songName);
            long durationUs = this.songList.get(i).getDurationUs() / 1000;
            viewHolder.mSongDuration.setText(String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(durationUs)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(durationUs) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(durationUs)))));
            Log.d("TrackVV", "currentIndex and position " + this.currentTrackIndex + "  " + i);
            if (this.currentTrackIndex == i) {
                if (this.isSongPlaying) {
                    viewHolder.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_pause));
                } else {
                    viewHolder.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_play));
                }
                viewHolder.mSongView.setBackgroundColor(TrackActivity.this.getResources().getColor(R.color.selected_track_color));
                setCurrentSeekBar(viewHolder.mSeekBar);
                viewHolder.mSeekBar.setProgress(this.currentProgress);
                this.currentProgress = 0;
            } else {
                Log.d("TrackView", "set play at onbind");
                disableSeekBar(viewHolder.mSeekBar);
                viewHolder.mSongView.setBackgroundColor(TrackActivity.this.getResources().getColor(R.color.unselected_track_color));
                viewHolder.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_play));
            }
            if (this.songList.get(i).isInvalid) {
                disableSongView(viewHolder);
            } else {
                enableSongView(viewHolder);
            }
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public ImageView mPlayButton;
            public SeekBar mSeekBar;
            public TextView mSongDuration;
            public TextView mSongName;
            public RelativeLayout mSongView;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.mSongView = (RelativeLayout) view;
                this.mPlayButton = (ImageView) view.findViewById(R.id.song_play);
                this.mSongName = (TextView) view.findViewById(R.id.song_name);
                this.mSongDuration = (TextView) view.findViewById(R.id.song_duration);
                this.mSeekBar = (SeekBar) view.findViewById(R.id.song_seekbar);
                view.setOnClickListener(this);
                Log.d("TrackViewHolder", "viewholder constructor : setting seekbar invisible");
                this.mSeekBar.setVisibility(4);
                this.mSeekBar.setOnSeekBarChangeListener(null);
                this.mPlayButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.music.TrackActivity.TrackAdapter.ViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        Log.d("TrackViewHolder", "playonclick : currentindex and layoutposition: " + TrackAdapter.this.currentTrackIndex + "   " + ViewHolder.this.getLayoutPosition());
                        if (!((AudioClip) TrackAdapter.this.songList.get(ViewHolder.this.getLayoutPosition())).isInvalid) {
                            if (TrackAdapter.this.currentTrackIndex == ViewHolder.this.getLayoutPosition()) {
                                if (TrackActivity.this.musicPlayer.isPlaying()) {
                                    TrackActivity.this.pauseMusicPlayer();
                                    TrackAdapter.this.isSongPlaying = false;
                                    Log.d("Tracks", "play on click");
                                    ViewHolder.this.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_play));
                                    return;
                                }
                                TrackActivity.this.resumeMusicPlayer();
                                TrackAdapter.this.isSongPlaying = true;
                                ViewHolder.this.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_pause));
                                return;
                            }
                            TrackAdapter.this.setCurrentSeekBar(ViewHolder.this.mSeekBar);
                            TrackAdapter.this.isSongPlaying = true;
                            ViewHolder.this.setCurrentSong(ViewHolder.this.getLayoutPosition());
                            TrackActivity.this.resumeMusicPlayer();
                            ViewHolder.this.mPlayButton.setImageDrawable(TrackActivity.this.getResources().getDrawable(R.drawable.soundtrack_pause));
                        }
                    }
                });
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Log.d("TrackViewHolder", "viewonclick : currentindex and layoutposition: " + TrackAdapter.this.currentTrackIndex + "   " + getLayoutPosition());
                if (TrackAdapter.this.currentTrackIndex != getLayoutPosition()) {
                    TrackAdapter.this.isSongPlaying = false;
                    TrackAdapter.this.setCurrentSeekBar(this.mSeekBar);
                    setCurrentSong(getLayoutPosition());
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setCurrentSong(int i) {
                if (TrackActivity.this.mAddButton.getVisibility() == 4) {
                    TrackActivity.this.mAddButton.setVisibility(0);
                    TrackActivity.this.findViewById(R.id.add_left_bar).setVisibility(0);
                }
                int i2 = TrackAdapter.this.currentTrackIndex;
                TrackAdapter.this.currentTrackIndex = i;
                Log.d("TrackViewHolder", "old and new position " + i2 + " " + TrackAdapter.this.currentTrackIndex);
                if (i2 != TrackAdapter.this.currentTrackIndex) {
                    if (i2 >= 0) {
                        TrackAdapter.this.notifyItemChanged(i2);
                    }
                    TrackAdapter.this.notifyItemChanged(TrackAdapter.this.currentTrackIndex);
                    TrackActivity.this.prepareMusicPlayer(((AudioClip) TrackAdapter.this.songList.get(TrackAdapter.this.currentTrackIndex)).getAssetReference().getAssetUri());
                }
            }
        }

        private void disableSongView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(false);
            viewHolder.itemView.setClickable(false);
            viewHolder.mSongView.setAlpha(0.3f);
        }

        private void enableSongView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(true);
            viewHolder.itemView.setClickable(true);
            viewHolder.mSongView.setAlpha(1.0f);
        }
    }
}
