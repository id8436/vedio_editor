package com.adobe.premiereclip.music;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.h.a.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TrackCategoryActivity extends TopOfEditorActivity {
    private int TRACKCOLLECTION_REQUEST = 100989;
    private TrackCategoryAdapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    private String mProjKey;
    private RecyclerView mRecyclerView;
    private boolean noPlaylists;
    private boolean noSongs;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_song_category);
        d.a(this);
        this.mRecyclerView = (RecyclerView) findViewById(R.id.song_category_view);
        this.mLayoutManager = new LinearLayoutManager(this);
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        ArrayList arrayList = new ArrayList();
        arrayList.add(getResources().getString(R.string.default_tracks_category));
        arrayList.add(getResources().getString(R.string.playlists_category));
        arrayList.add(getResources().getString(R.string.albums_category));
        arrayList.add(getResources().getString(R.string.artists_category));
        arrayList.add(getResources().getString(R.string.songs_category));
        this.noPlaylists = SoundTrackManager.getAllPlaylistsinMediaStore(this).size() == 0;
        this.noSongs = SoundTrackManager.getAllSongsinMediaStore(this).size() == 0;
        this.mAdapter = new TrackCategoryAdapter(arrayList);
        this.mRecyclerView.setAdapter(this.mAdapter);
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
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    public final void openTrackCollectionActivity(String str) {
        Intent intent = new Intent(this, (Class<?>) TrackCollectionActivity.class);
        intent.putExtra("project_key", this.mProjKey);
        intent.putExtra("category", str);
        startActivityForResult(intent, this.TRACKCOLLECTION_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void openTrackActivity(String str, String str2) {
        Intent intent = new Intent(this, (Class<?>) TrackActivity.class);
        intent.putExtra("project_key", this.mProjKey);
        intent.putExtra("category", str);
        intent.putExtra("id", "all");
        intent.putExtra("name", str2);
        startActivityForResult(intent, this.TRACKCOLLECTION_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && intent.getBooleanExtra("track_selected", false)) {
            setResult(-1, new Intent(intent));
            onBackPressed();
        }
    }

    public class TrackCategoryAdapter extends RecyclerView.Adapter<ViewHolder> {
        private ArrayList<String> categoryList;

        public TrackCategoryAdapter(ArrayList<String> arrayList) {
            this.categoryList = arrayList;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.categoryList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ViewHolder viewHolder = new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_song_category, viewGroup, false));
            d.a(viewHolder.mCategoryName);
            return viewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            viewHolder.mCategoryName.setText(this.categoryList.get(i));
            String str = this.categoryList.get(i);
            if (!TrackCategoryActivity.this.noPlaylists || !str.equals(TrackCategoryActivity.this.getResources().getString(R.string.playlists_category))) {
                if (TrackCategoryActivity.this.noSongs) {
                    if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.albums_category)) || str.equals(TrackCategoryActivity.this.getResources().getString(R.string.artists_category)) || str.equals(TrackCategoryActivity.this.getResources().getString(R.string.songs_category))) {
                        disableCategoryView(viewHolder);
                        return;
                    }
                    return;
                }
                enableCategoryView(viewHolder);
                return;
            }
            disableCategoryView(viewHolder);
        }

        private void enableCategoryView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(true);
            viewHolder.itemView.setClickable(true);
            viewHolder.mCategoryView.setAlpha(1.0f);
        }

        private void disableCategoryView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(false);
            viewHolder.itemView.setClickable(false);
            viewHolder.mCategoryView.setAlpha(0.3f);
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public TextView mCategoryName;
            public LinearLayout mCategoryView;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.mCategoryView = (LinearLayout) view.findViewById(R.id.song_category_layout);
                this.mCategoryName = (TextView) view.findViewById(R.id.song_category_name);
                view.setOnClickListener(this);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = (String) TrackCategoryAdapter.this.categoryList.get(getPosition());
                if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.default_tracks_category))) {
                    TrackCategoryActivity.this.openTrackActivity(TrackCategoryActivity.this.getResources().getString(R.string.default_tracks_category), TrackCategoryActivity.this.getResources().getString(R.string.default_tracks_category));
                    return;
                }
                if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.playlists_category))) {
                    TrackCategoryActivity.this.openTrackCollectionActivity(TrackCategoryActivity.this.getResources().getString(R.string.playlists_category));
                    return;
                }
                if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.albums_category))) {
                    TrackCategoryActivity.this.openTrackCollectionActivity(str);
                } else if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.artists_category))) {
                    TrackCategoryActivity.this.openTrackCollectionActivity(str);
                } else if (str.equals(TrackCategoryActivity.this.getResources().getString(R.string.songs_category))) {
                    TrackCategoryActivity.this.openTrackActivity(TrackCategoryActivity.this.getResources().getString(R.string.songs_category), TrackCategoryActivity.this.getResources().getString(R.string.songs_category));
                }
            }
        }
    }
}
