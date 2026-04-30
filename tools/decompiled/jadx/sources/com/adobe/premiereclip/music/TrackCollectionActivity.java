package com.adobe.premiereclip.music;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.h.a.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TrackCollectionActivity extends TopOfEditorActivity {
    private int TRACKS_REQUEST = 100232;
    private TrackCollectionAdapter mAdapter;
    private String mCategory;
    private RecyclerView.LayoutManager mLayoutManager;
    private String mProjKey;
    private RecyclerView mRecyclerView;
    private TextView mTitle;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_song_collection);
        d.a(this);
        this.mRecyclerView = (RecyclerView) findViewById(R.id.song_collection_view);
        this.mLayoutManager = new LinearLayoutManager(this);
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mTitle = (TextView) findViewById(R.id.song_collection_title);
        this.mCategory = getIntent().getStringExtra("category");
        ArrayList<SongCollection> arrayList = new ArrayList<>();
        if (this.mCategory.equals(getResources().getString(R.string.albums_category))) {
            arrayList = SoundTrackManager.getAllAlbumsinMediaStore(this);
        } else if (this.mCategory.equals(getResources().getString(R.string.artists_category))) {
            arrayList = SoundTrackManager.getAllArtistsinMediaStore(this);
        } else if (this.mCategory.equals(getResources().getString(R.string.playlists_category))) {
            arrayList = SoundTrackManager.getAllPlaylistsinMediaStore(this);
        }
        this.mAdapter = new TrackCollectionAdapter(arrayList);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mTitle.setText(this.mCategory);
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

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && intent.getBooleanExtra("track_selected", false)) {
            setResult(-1, new Intent(intent));
            onBackPressed();
        }
    }

    public void openTrackActivity(String str, String str2) {
        Intent intent = new Intent(this, (Class<?>) TrackActivity.class);
        intent.putExtra("project_key", this.mProjKey);
        intent.putExtra("category", this.mCategory);
        intent.putExtra("id", str);
        intent.putExtra("name", str2);
        startActivityForResult(intent, this.TRACKS_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public class TrackCollectionAdapter extends RecyclerView.Adapter<ViewHolder> {
        private ArrayList<SongCollection> collectionList;

        public TrackCollectionAdapter(ArrayList<SongCollection> arrayList) {
            this.collectionList = arrayList;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.collectionList.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ViewHolder viewHolder = new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_song_collection, viewGroup, false));
            d.a(viewHolder.mCollectionName);
            return viewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            SongCollection songCollection = this.collectionList.get(i);
            viewHolder.mCollectionName.setText(songCollection.getCollectionName());
            if (songCollection.getSongCount().equals("0")) {
                disableCollectionView(viewHolder);
            } else {
                enableCollectionView(viewHolder);
            }
        }

        private void enableCollectionView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(true);
            viewHolder.itemView.setClickable(true);
            viewHolder.mCollectionLayout.setAlpha(1.0f);
        }

        private void disableCollectionView(ViewHolder viewHolder) {
            viewHolder.itemView.setEnabled(false);
            viewHolder.itemView.setClickable(false);
            viewHolder.mCollectionLayout.setAlpha(0.3f);
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public RelativeLayout mCollectionLayout;
            public TextView mCollectionName;
            public View mCollectionView;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.mCollectionView = view;
                this.mCollectionLayout = (RelativeLayout) view.findViewById(R.id.song_collection_layout);
                this.mCollectionName = (TextView) view.findViewById(R.id.song_collection_name);
                view.setOnClickListener(this);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TrackCollectionActivity.this.openTrackActivity(((SongCollection) TrackCollectionAdapter.this.collectionList.get(getPosition())).getCollectionId(), ((SongCollection) TrackCollectionAdapter.this.collectionList.get(getPosition())).getCollectionName());
            }
        }
    }
}
