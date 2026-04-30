package com.adobe.premiereclip.dcx;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXCompositeSyncTable;
import com.adobe.premiereclip.editor.TopOfEditorActivity;
import com.adobe.premiereclip.util.ProjectPosterView;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.d;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DCXSyncStatusActivity extends TopOfEditorActivity {
    private DCXSyncStatusAdapter dcxSyncStatusAdapter;
    private RecyclerView dcxSyncStatusRecyclerView;
    private RecyclerView.LayoutManager mLayoutManager;
    private String restrictedCompositeId = null;
    private DCXCompositeSyncTable syncTable;

    @Override // com.adobe.premiereclip.editor.TopOfEditorActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dcxsync_status);
        d.a(this);
        if (getIntent().getStringExtra("restrictedCompositeId") != null) {
            this.restrictedCompositeId = getIntent().getStringExtra("restrictedCompositeId");
        }
        this.syncTable = new DCXCompositeSyncTable(getCompositeSyncTableListener(), this.restrictedCompositeId);
        this.mLayoutManager = new LinearLayoutManager(this);
        this.dcxSyncStatusRecyclerView = (RecyclerView) findViewById(R.id.dcx_sync_status_project_list);
        this.dcxSyncStatusRecyclerView.setHasFixedSize(true);
        this.dcxSyncStatusRecyclerView.setLayoutManager(this.mLayoutManager);
        this.dcxSyncStatusAdapter = new DCXSyncStatusAdapter(this.syncTable.getTableItems());
        this.dcxSyncStatusRecyclerView.setAdapter(this.dcxSyncStatusAdapter);
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

    public final void closeAndGoBack(View view) {
        this.syncTable.stopTimer();
        onBackPressed();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.syncTable.unSetProjectsSyncStatusListener();
    }

    public class DCXSyncStatusAdapter extends RecyclerView.Adapter<ViewHolder> {
        private List<DCXCompositeSyncTableItem> syncTableItems;

        public DCXSyncStatusAdapter(List<DCXCompositeSyncTableItem> list) {
            this.syncTableItems = list;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.syncTableItems.size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.dcx_sync_status_table_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(final ViewHolder viewHolder, int i) {
            boolean z;
            final DCXCompositeSyncTableItem dCXCompositeSyncTableItem = this.syncTableItems.get(i);
            viewHolder.projectName.setText(dCXCompositeSyncTableItem.getProjectName());
            if (dCXCompositeSyncTableItem.getUploadStatusText() == null) {
                viewHolder.uploadText.setVisibility(8);
                z = false;
            } else {
                viewHolder.uploadText.setVisibility(0);
                viewHolder.syncedText.setVisibility(8);
                viewHolder.uploadText.setText(dCXCompositeSyncTableItem.getUploadStatusText());
                z = true;
            }
            if (dCXCompositeSyncTableItem.getDownloadStatusText() == null) {
                viewHolder.downloadText.setVisibility(8);
            } else {
                viewHolder.downloadText.setVisibility(0);
                viewHolder.syncedText.setVisibility(8);
                viewHolder.downloadText.setText(dCXCompositeSyncTableItem.getDownloadStatusText());
                z = true;
            }
            if (dCXCompositeSyncTableItem.getCcAssetDownloadText() == null) {
                viewHolder.ccAssetDownloadText.setVisibility(8);
            } else {
                viewHolder.ccAssetDownloadText.setVisibility(0);
                viewHolder.syncedText.setVisibility(8);
                viewHolder.ccAssetDownloadText.setText(dCXCompositeSyncTableItem.getCcAssetDownloadText());
                z = true;
            }
            if (!z) {
                if (dCXCompositeSyncTableItem.getSyncedStatusText() == null) {
                    viewHolder.syncedText.setVisibility(8);
                } else {
                    viewHolder.syncedText.setVisibility(0);
                    viewHolder.syncedText.setText(dCXCompositeSyncTableItem.getSyncedStatusText());
                }
            }
            Utilities.resetViewIfBitmapRecycled(viewHolder.posterImage);
            ProjectPosterView.load(dCXCompositeSyncTableItem.getCompositeId() + "/sync", dCXCompositeSyncTableItem.getProjectPosterPath(), viewHolder.posterImage, 120, 70, true, new ProjectPosterView.PosterViewListener() { // from class: com.adobe.premiereclip.dcx.DCXSyncStatusActivity.DCXSyncStatusAdapter.1
                @Override // com.adobe.premiereclip.util.ProjectPosterView.PosterViewListener
                public void onSuccessImageLoad(String str, Bitmap bitmap) {
                    if (str.equals(dCXCompositeSyncTableItem.getCompositeId() + "/sync")) {
                        viewHolder.posterImage.setImageBitmap(bitmap);
                    }
                }
            });
        }

        public class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
            public TextView ccAssetDownloadText;
            public TextView downloadText;
            public ImageView posterImage;
            public TextView projectName;
            public TextView syncedText;
            public TextView uploadText;

            public ViewHolder(View view) {
                super(view);
                d.a(view);
                this.posterImage = (ImageView) view.findViewById(R.id.dcx_sync_project_poster);
                this.projectName = (TextView) view.findViewById(R.id.dcx_sync_project_name);
                this.uploadText = (TextView) view.findViewById(R.id.dcx_sync_upload_media_status);
                this.downloadText = (TextView) view.findViewById(R.id.dcx_sync_download_media_status);
                this.syncedText = (TextView) view.findViewById(R.id.dcx_sync_project_sync_completed);
                this.ccAssetDownloadText = (TextView) view.findViewById(R.id.cc_asset_download_media_status);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }
    }

    private DCXCompositeSyncTable.Listener getCompositeSyncTableListener() {
        return new DCXCompositeSyncTable.Listener() { // from class: com.adobe.premiereclip.dcx.DCXSyncStatusActivity.1
            @Override // com.adobe.premiereclip.dcx.DCXCompositeSyncTable.Listener
            public void updateProjectsStatus() {
                DCXSyncStatusActivity.this.dcxSyncStatusAdapter.notifyDataSetChanged();
            }

            @Override // com.adobe.premiereclip.dcx.DCXCompositeSyncTable.Listener
            public void projectAdded(int i) {
                DCXSyncStatusActivity.this.dcxSyncStatusAdapter.notifyItemInserted(i);
            }

            @Override // com.adobe.premiereclip.dcx.DCXCompositeSyncTable.Listener
            public void projectStatusChanged(int i) {
                DCXSyncStatusActivity.this.dcxSyncStatusAdapter.notifyItemChanged(i);
            }
        };
    }
}
