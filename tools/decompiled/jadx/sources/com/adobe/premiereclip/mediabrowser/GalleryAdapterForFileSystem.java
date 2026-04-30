package com.adobe.premiereclip.mediabrowser;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity;
import com.adobe.premiereclip.mediabrowser.source.DropboxSource;
import com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource;
import com.adobe.premiereclip.mediabrowser.source.GoogleDriveSource;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.a;
import com.h.a.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class GalleryAdapterForFileSystem extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Utilities.IClipScrollAdapter, Utilities.ThumbnailLoadListener {
    private static final float HEADER_THUMBNAIL_SCALE = 0.625f;
    private static final String TAG = "GALLERY_ADAPTER_DRIVE";
    private static final int VIEW_TYPE_CONTENT = 1;
    private static final int VIEW_TYPE_HEADER = 0;
    private ArrayList<Integer> enabledMediaTypes;
    private GalleryActivity mActivity;
    private ArrayList<ThumbnailData> mDataset;
    private Handler mHandler;
    private final GridLayoutManager mLayoutManager;
    private RecyclerView mRecyclerView;
    private FileSystemMediaSource mSource;
    private a mTfCollection;
    private int mTimelineThumbSize;
    private boolean singleSelection;
    private boolean mCanProcess = true;
    private Stack<ArrayList<ThumbnailData>> stack = new Stack<>();
    private Stack<String> stackOfTitle = new Stack<>();

    public GalleryAdapterForFileSystem(GalleryActivity galleryActivity, ArrayList<Integer> arrayList, ArrayList<ThumbnailData> arrayList2, FileSystemMediaSource fileSystemMediaSource, int i, a aVar, RecyclerView recyclerView, boolean z) {
        this.mDataset = arrayList2;
        this.mTimelineThumbSize = i;
        this.mActivity = galleryActivity;
        this.enabledMediaTypes = arrayList;
        this.singleSelection = z;
        this.mTfCollection = aVar;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        this.mLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.1
            @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                return 2;
            }
        });
        this.mHandler = new Handler();
        this.mSource = fileSystemMediaSource;
        if (this.mSource instanceof GoogleDriveSource) {
            this.stackOfTitle.add("Google Drive");
        } else if (this.mSource instanceof DropboxSource) {
            this.stackOfTitle.add(Metrics.REMOTE_SOURCE_DROPBOX);
        }
    }

    @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
    public boolean isProcessing() {
        return this.mCanProcess;
    }

    @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
    public void stopProcessing() {
        this.mCanProcess = false;
    }

    @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
    public void startProcessing() {
        this.mCanProcess = true;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.mDataset.get(i).getViewType() == 0 ? 0 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_gallery_header_drive, viewGroup, false), (int) (HEADER_THUMBNAIL_SCALE * this.mTimelineThumbSize), this.mTfCollection);
        }
        return new ThumbnailViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_gallery_media_drive, viewGroup, false), this.mTimelineThumbSize, this.mTfCollection, (int) this.mActivity.getResources().getDimension(R.dimen.frame_width), (int) this.mActivity.getResources().getDimension(R.dimen.frame_height));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
        viewHolder.itemView.setOnLongClickListener(null);
        if (viewHolder instanceof HeaderViewHolder) {
            HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
            headerViewHolder.mTextView.setText((CharSequence) null);
            headerViewHolder.mImageView.setBackgroundColor(this.mActivity.getResources().getColor(R.color.clip_thumb_view));
            headerViewHolder.mImageView.setImageDrawable(null);
            return;
        }
        ThumbnailViewHolder thumbnailViewHolder = (ThumbnailViewHolder) viewHolder;
        thumbnailViewHolder.getImageView().setImageDrawable(null);
        thumbnailViewHolder.mClipTime.setText((CharSequence) null);
        thumbnailViewHolder.setSelected(false);
    }

    private void onBindHeaderViewHolder(HeaderViewHolder headerViewHolder, int i, Bucket bucket) {
        String id = bucket.getId();
        headerViewHolder.id = id;
        if (id.equals("blank")) {
            headerViewHolder.itemView.setVisibility(4);
            headerViewHolder.itemView.setClickable(false);
            return;
        }
        headerViewHolder.itemView.setVisibility(0);
        headerViewHolder.itemView.setClickable(true);
        headerViewHolder.mImageView.setImageBitmap(BitmapFactory.decodeResource(this.mActivity.getResources(), R.drawable.soundtrack_folder));
        headerViewHolder.mImageView.setBackground(null);
        headerViewHolder.mTextView.setText(bucket.getName());
        headerViewHolder.itemView.setOnClickListener(new AnonymousClass2(bucket, this));
    }

    /* JADX INFO: renamed from: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem$2, reason: invalid class name */
    class AnonymousClass2 implements View.OnClickListener {
        final /* synthetic */ GalleryAdapterForFileSystem val$_this;
        final /* synthetic */ Bucket val$bucket;

        AnonymousClass2(Bucket bucket, GalleryAdapterForFileSystem galleryAdapterForFileSystem) {
            this.val$bucket = bucket;
            this.val$_this = galleryAdapterForFileSystem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GalleryAdapterForFileSystem.this.stackOfTitle.add(this.val$bucket.getName());
            GalleryAdapterForFileSystem.this.mActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.1
                @Override // java.lang.Runnable
                public void run() {
                    GalleryAdapterForFileSystem.this.mActivity.showSpinner();
                }
            });
            GalleryAdapterForFileSystem.this.mSource.getChildren(GalleryAdapterForFileSystem.this.mActivity, this.val$bucket, GalleryAdapterForFileSystem.this.mHandler, new FileSystemMediaSource.FolderLoadListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2
                @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.FolderLoadListener
                public void onFolderLoadSuccess(ArrayList<ThumbnailData> arrayList) {
                    GalleryAdapterForFileSystem.this.mActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GalleryAdapterForFileSystem.this.mActivity.dismissSpinner();
                        }
                    });
                    GalleryAdapterForFileSystem.this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            GalleryAdapterForFileSystem.this.mActivity.setTitle(AnonymousClass2.this.val$bucket.getName());
                        }
                    });
                    Log.d(GalleryAdapterForFileSystem.TAG, "Woho here; size = " + arrayList.size());
                    GalleryAdapterForFileSystem.this.stack.add(new ArrayList(GalleryAdapterForFileSystem.this.mDataset));
                    GalleryAdapterForFileSystem.this.mDataset.clear();
                    GalleryAdapterForFileSystem.this.mDataset.addAll(arrayList);
                    GalleryAdapterForFileSystem.this.stack.add(new ArrayList(arrayList));
                    Log.d(GalleryAdapterForFileSystem.TAG, "stack size = " + GalleryAdapterForFileSystem.this.stack.size());
                    AnonymousClass2.this.val$_this.notifyDataSetChanged();
                }

                @Override // com.adobe.premiereclip.mediabrowser.source.FileSystemMediaSource.FolderLoadListener
                public void onFolderLoadFailure(int i) {
                    GalleryAdapterForFileSystem.this.mActivity.runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            GalleryAdapterForFileSystem.this.mActivity.dismissSpinner();
                        }
                    });
                    GalleryAdapterForFileSystem.this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            GalleryAdapterForFileSystem.this.mActivity.setTitle(AnonymousClass2.this.val$bucket.getName());
                        }
                    });
                    GalleryAdapterForFileSystem.this.stack.add(new ArrayList(GalleryAdapterForFileSystem.this.mDataset));
                    if (i == 22) {
                        Log.d(GalleryAdapterForFileSystem.TAG, "IN GALLERY DATA ERROR - No Albums");
                        GalleryAdapterForFileSystem.this.mDataset.clear();
                        AnonymousClass2.this.val$_this.notifyDataSetChanged();
                        GalleryAdapterForFileSystem.this.stack.add(new ArrayList());
                        GalleryAdapterForFileSystem.this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.5
                            @Override // java.lang.Runnable
                            public void run() {
                                GalleryAdapterForFileSystem.this.mActivity.showDoneButton();
                                GalleryAdapterForFileSystem.this.mActivity.setTextView(GalleryAdapterForFileSystem.this.mActivity.getResources().getString(R.string.no_data));
                            }
                        });
                        return;
                    }
                    if (i == 33) {
                        Log.d(GalleryAdapterForFileSystem.TAG, "IN GALLERY DATA ERROR - No Internet");
                        GalleryAdapterForFileSystem.this.mHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.2.2.6
                            @Override // java.lang.Runnable
                            public void run() {
                                GalleryAdapterForFileSystem.this.mActivity.setTextView(GalleryAdapterForFileSystem.this.mActivity.getResources().getString(R.string.no_internet_connection));
                            }
                        });
                    }
                }
            });
        }
    }

    private boolean checkIfMediaAlreadySelected(MediaModel mediaModel) {
        ArrayList<MediaModel> selectedMediaList = this.mActivity.getSelectedMediaList();
        String id = mediaModel.getId();
        Iterator<MediaModel> it = selectedMediaList.iterator();
        while (it.hasNext()) {
            if (id.equals(it.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public void backPressed() {
        this.mActivity.textViewLayout.setVisibility(8);
        this.mActivity.showView();
        this.mActivity.dismissSpinner();
        this.mDataset.clear();
        if (!this.stack.isEmpty()) {
            this.stack.pop();
            this.stackOfTitle.pop();
            if (!this.stack.isEmpty()) {
                this.mDataset.addAll(this.stack.pop());
                notifyDataSetChanged();
                if (!this.stackOfTitle.isEmpty()) {
                    this.mActivity.setTitle(this.stackOfTitle.peek());
                }
            }
            Log.d(TAG, "stack size after pop = " + this.stack.size());
            if (this.stack.size() == 0) {
                if (this.mSource instanceof GoogleDriveSource) {
                    this.mActivity.setTitle("Google Drive");
                } else if (this.mSource instanceof DropboxSource) {
                    this.mActivity.setTitle(Metrics.REMOTE_SOURCE_DROPBOX);
                }
            }
        } else {
            this.mActivity.onBackPressed();
        }
        notifyDataSetChanged();
    }

    void clearDataset() {
        this.mDataset.clear();
        notifyDataSetChanged();
    }

    void clearStack() {
        if (this.stack != null) {
            this.stack.clear();
        }
    }

    public boolean isStackEmpty() {
        return this.stack.isEmpty();
    }

    public boolean isDatasetEmpty() {
        return this.mDataset.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMediaPosition(String str) {
        if (str == null) {
            return -1;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mDataset.size()) {
                return -1;
            }
            MediaModel mediaModel = this.mDataset.get(i2).getMediaModel();
            if (mediaModel == null || !str.equals(mediaModel.getId())) {
                i = i2 + 1;
            } else {
                return i2;
            }
        }
    }

    private void onBindThumbnailViewHolder(final ThumbnailViewHolder thumbnailViewHolder, int i, final MediaModel mediaModel) {
        thumbnailViewHolder.id = mediaModel.getId();
        thumbnailViewHolder.mImageView.setImageBitmap(null);
        thumbnailViewHolder.mMediaTitle.setText(((MediaModelForRemote) mediaModel).getTitle());
        thumbnailViewHolder.mClipTime.setVisibility(8);
        this.mSource.getThumbnail(mediaModel, thumbnailViewHolder.mImageView, this, this.mHandler);
        if (checkIfMediaAlreadySelected(mediaModel)) {
            mediaModel.setMediaSelected(true);
            thumbnailViewHolder.setSelected(true);
        } else {
            mediaModel.setMediaSelected(false);
            thumbnailViewHolder.setSelected(false);
        }
        if (mediaModel.getMediaType() == 3) {
            if (this.mSource instanceof GoogleDriveSource) {
                thumbnailViewHolder.mClipTime.setVisibility(0);
                thumbnailViewHolder.mClipTime.setText(Utilities.getTimeString(mediaModel.getDuration() * 1000, false));
                thumbnailViewHolder.itemView.setOnLongClickListener(null);
            } else {
                thumbnailViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.3
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view) {
                        Intent intent = new Intent(GalleryAdapterForFileSystem.this.mActivity, (Class<?>) VideoPlaybackActivity.class);
                        intent.putExtra("videoPlayUri", Uri.parse(((MediaModelForRemote) mediaModel).getUrl()));
                        intent.putExtra("playbackEndBehave", "restart");
                        GalleryAdapterForFileSystem.this.mActivity.startActivity(intent);
                        GalleryAdapterForFileSystem.this.mActivity.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                        return true;
                    }
                });
            }
        }
        if (this.enabledMediaTypes != null && this.enabledMediaTypes.indexOf(Integer.valueOf(mediaModel.getMediaType())) == -1) {
            thumbnailViewHolder.itemView.setEnabled(false);
            thumbnailViewHolder.itemView.setAlpha(0.25f);
        } else {
            thumbnailViewHolder.itemView.setEnabled(true);
            thumbnailViewHolder.itemView.setAlpha(1.0f);
            thumbnailViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapterForFileSystem.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!mediaModel.isMediaSelected()) {
                        int selectedMediaCount = GalleryAdapterForFileSystem.this.mActivity.getSelectedMediaCount();
                        if (GalleryAdapterForFileSystem.this.singleSelection && selectedMediaCount > 0) {
                            int mediaPosition = GalleryAdapterForFileSystem.this.getMediaPosition(GalleryAdapterForFileSystem.this.mActivity.clearCurrentSingleSelection());
                            if (mediaPosition >= 0) {
                                ((ThumbnailData) GalleryAdapterForFileSystem.this.mDataset.get(mediaPosition)).getMediaModel().setMediaSelected(false);
                            }
                            RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = GalleryAdapterForFileSystem.this.mRecyclerView.findViewHolderForLayoutPosition(mediaPosition);
                            if (viewHolderFindViewHolderForLayoutPosition instanceof ThumbnailViewHolder) {
                                ((ThumbnailViewHolder) viewHolderFindViewHolderForLayoutPosition).setSelected(false);
                            }
                        }
                        if (mediaModel.getSize() >= GalleryActivity.MAX_SIZE_LIMIT_IN_BYTES) {
                            Toast.makeText(GalleryAdapterForFileSystem.this.mActivity, GalleryAdapterForFileSystem.this.mActivity.getResources().getString(R.string.gallery_file_size_exceeded), 0).show();
                            return;
                        } else {
                            if (selectedMediaCount == 100) {
                                Toast.makeText(GalleryAdapterForFileSystem.this.mActivity, GalleryAdapterForFileSystem.this.mActivity.getResources().getString(R.string.gallery_max_limit) + " 100 " + GalleryAdapterForFileSystem.this.mActivity.getResources().getString(R.string.gallery_files), 0).show();
                                return;
                            }
                            mediaModel.setMediaSelected(!mediaModel.isMediaSelected());
                            GalleryAdapterForFileSystem.this.mActivity.onMediaItemSelection(mediaModel);
                            thumbnailViewHolder.setSelected(true);
                            return;
                        }
                    }
                    mediaModel.setMediaSelected(mediaModel.isMediaSelected() ? false : true);
                    GalleryAdapterForFileSystem.this.mActivity.onMediaItemSelection(mediaModel);
                    thumbnailViewHolder.setSelected(false);
                }
            });
        }
    }

    private void updateMediaView(MediaModel mediaModel) {
        int clipPosition = getClipPosition(mediaModel.getId());
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(clipPosition);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            onBindThumbnailViewHolder((ThumbnailViewHolder) viewHolderFindViewHolderForAdapterPosition, clipPosition, mediaModel);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ThumbnailData thumbnailData = this.mDataset.get(i);
        if (thumbnailData.getViewType() == 0) {
            onBindHeaderViewHolder((HeaderViewHolder) viewHolder, i, thumbnailData.getBucket());
        } else {
            onBindThumbnailViewHolder((ThumbnailViewHolder) viewHolder, i, thumbnailData.getMediaModel());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDataset.size();
    }

    @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
    public int getClipPosition(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mDataset.size()) {
                ThumbnailData thumbnailData = this.mDataset.get(i2);
                int viewType = thumbnailData.getViewType();
                if (viewType == 1) {
                    if (str.equals(thumbnailData.getMediaModel().getId())) {
                        return i2;
                    }
                } else if (viewType == 0) {
                    if (str.equals(thumbnailData.getBucket().getId())) {
                        return i2;
                    }
                } else if (str.equals(thumbnailData.getId())) {
                    return i2;
                }
                i = i2 + 1;
            } else {
                return -1;
            }
        }
    }

    @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
    public void onSuccessImageLoad(String str, Bitmap bitmap) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = this.mRecyclerView.findViewHolderForLayoutPosition(getClipPosition(str));
        if (viewHolderFindViewHolderForLayoutPosition instanceof HeaderViewHolder) {
            ImageView imageView = ((HeaderViewHolder) viewHolderFindViewHolderForLayoutPosition).mImageView;
            imageView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            imageView.setImageBitmap(bitmap);
        } else if (viewHolderFindViewHolderForLayoutPosition instanceof ThumbnailViewHolder) {
            ((ThumbnailViewHolder) viewHolderFindViewHolderForLayoutPosition).mImageView.setImageBitmap(bitmap);
        }
    }

    @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
    public void onFailureImageLoad(String str) {
        if (str.equals("33")) {
            this.mActivity.setTextView(this.mActivity.getResources().getString(R.string.no_internet_connection));
        } else if (str.equals("44")) {
            this.mActivity.showErrorToast();
        }
    }

    public class HeaderViewHolder extends RecyclerView.ViewHolder implements Utilities.ClipImageHolder {
        private static final String TAG = "GALLERY_HEADER_VIEW_HOLDER";
        public String id;
        public ImageView mImageView;
        private TextView mTextView;

        public HeaderViewHolder(View view, int i, a aVar) {
            super(view);
            this.mTextView = (TextView) view.findViewById(R.id.text);
            this.mImageView = (ImageView) view.findViewById(R.id.header_media_thumb);
            this.mImageView.getLayoutParams().height = i;
            this.mImageView.getLayoutParams().width = i;
            d.a(this.mTextView, aVar);
        }

        @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
        public ImageView getImageView() {
            return this.mImageView;
        }

        @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
        public String getKey() {
            return this.id;
        }
    }

    public class ThumbnailViewHolder extends RecyclerView.ViewHolder implements Utilities.ClipImageHolder {
        private static final String TAG = "GALLERY_THUMBNAIL_VIEW_HOLDER";
        public String id;
        public CheckedTextView mCheck;
        public ImageView mClipFrame;
        public TextView mClipTime;
        public RelativeLayout mImageLayout;
        public ImageView mImageView;
        public TextView mMediaTitle;

        public ThumbnailViewHolder(View view, int i, a aVar, int i2, int i3) {
            super(view);
            this.mImageView = (ImageView) view.findViewById(R.id.gallery_media_thumb);
            this.mClipFrame = (ImageView) view.findViewById(R.id.gallery_active_media_frame);
            this.mClipTime = (TextView) view.findViewById(R.id.gallery_media_time);
            d.a(this.mClipTime, aVar);
            this.mCheck = (CheckedTextView) view.findViewById(R.id.gallery_media_checkmark);
            this.mImageLayout = (RelativeLayout) view.findViewById(R.id.gallery_media_layout);
            this.mImageLayout.getLayoutParams().width = i * 2;
            this.mImageLayout.getLayoutParams().height = i * 2;
            this.mClipFrame.getLayoutParams().width = (i * 2) + i2;
            this.mClipFrame.getLayoutParams().height = (i * 2) + i3;
            this.mMediaTitle = (TextView) view.findViewById(R.id.media_title);
            d.a(this.mMediaTitle, aVar);
        }

        public void setSelected(boolean z) {
            if (z) {
                this.mClipFrame.setVisibility(0);
                this.mCheck.setVisibility(0);
            } else {
                this.mClipFrame.setVisibility(4);
                this.mCheck.setVisibility(4);
            }
        }

        @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
        public ImageView getImageView() {
            return this.mImageView;
        }

        @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
        public String getKey() {
            return this.id;
        }
    }
}
