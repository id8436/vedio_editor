package com.adobe.premiereclip.mediabrowser;

import android.content.Intent;
import android.graphics.Bitmap;
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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.clipPlayer.VideoPlaybackActivity;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.source.DeviceMediaSource;
import com.adobe.premiereclip.mediabrowser.source.GallerySource;
import com.adobe.premiereclip.mediabrowser.source.GooglePhotosSource;
import com.adobe.premiereclip.mediabrowser.source.RemoteMediaSource;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.h.a.a;
import com.h.a.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class GalleryAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Utilities.IClipScrollAdapter, Utilities.ThumbnailLoadListener {
    private static final float HEADER_THUMBNAIL_SCALE = 0.625f;
    public static final int NO_PHOTOS = 11;
    private static final String TAG = "GALLERY_ADAPTER";
    private static final int VIEW_TYPE_CONTENT = 1;
    private static final int VIEW_TYPE_HEADER = 0;
    private static final int VIEW_TYPE_NO_CONTENT = 2;
    private GalleryActivity mActivity;
    private boolean mCanProcess = true;
    private ArrayList<ThumbnailData> mDataset;
    private boolean mEnableMultiSelect;
    private Handler mHandler;
    private final GridLayoutManager mLayoutManager;
    private RecyclerView mRecyclerView;
    private GallerySource mSource;
    private a mTfCollection;
    private int mTimelineThumbSize;

    public GalleryAdapter(GalleryActivity galleryActivity, ArrayList<ThumbnailData> arrayList, GallerySource gallerySource, int i, a aVar, RecyclerView recyclerView, boolean z) {
        this.mDataset = arrayList;
        this.mTimelineThumbSize = i;
        this.mActivity = galleryActivity;
        this.mTfCollection = aVar;
        this.mRecyclerView = recyclerView;
        this.mEnableMultiSelect = z;
        this.mLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        this.mLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.1
            @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                if (((ThumbnailData) GalleryAdapter.this.mDataset.get(i2)).getViewType() == 1) {
                    return 1;
                }
                return GalleryAdapter.this.mLayoutManager.getSpanCount();
            }
        });
        this.mHandler = new Handler();
        this.mSource = gallerySource;
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
        int viewType = this.mDataset.get(i).getViewType();
        if (viewType == 0) {
            return 0;
        }
        return viewType == 1 ? 1 : 2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_gallery_header, viewGroup, false), (int) (HEADER_THUMBNAIL_SCALE * this.mTimelineThumbSize), this.mTfCollection);
        }
        if (i == 1) {
            return new ThumbnailViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_gallery_media, viewGroup, false), this.mTimelineThumbSize, this.mTfCollection);
        }
        Log.d(TAG, "OnCreateViewHolder for no Media");
        return new NoMediaViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_gallery_no_media, viewGroup, false), this.mTimelineThumbSize, this.mTfCollection);
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
            headerViewHolder.mArrowImageView.setImageDrawable(null);
            return;
        }
        if (viewHolder instanceof ThumbnailViewHolder) {
            ThumbnailViewHolder thumbnailViewHolder = (ThumbnailViewHolder) viewHolder;
            thumbnailViewHolder.getImageView().setBackgroundColor(this.mActivity.getResources().getColor(R.color.clip_thumb_view));
            thumbnailViewHolder.getImageView().setImageDrawable(null);
            thumbnailViewHolder.mClipTime.setText((CharSequence) null);
            thumbnailViewHolder.setSelected(false);
            return;
        }
        ((NoMediaViewHolder) viewHolder).mTextView.setText((CharSequence) null);
    }

    void clearDataset() {
        this.mDataset.clear();
    }

    boolean isDatasetEmpty() {
        return this.mDataset.isEmpty();
    }

    void setAllBucketDownloadCancel() {
        for (ThumbnailData thumbnailData : this.mDataset) {
            if (thumbnailData.getBucket() != null) {
                thumbnailData.getBucket().setCancel(true);
            }
        }
    }

    void setAllBucketDownloadRestart() {
        for (ThumbnailData thumbnailData : this.mDataset) {
            if (thumbnailData.getBucket() != null) {
                thumbnailData.getBucket().setCancel(false);
            }
        }
    }

    private void onBindNoMediaViewHolder(NoMediaViewHolder noMediaViewHolder, int i, String str) {
        Log.d(TAG, "NoMediaBindViewHolder");
        noMediaViewHolder.id = str;
        noMediaViewHolder.mTextView.setText(this.mActivity.getResources().getString(R.string.no_photos_in_album));
    }

    private void onBindHeaderViewHolder(final HeaderViewHolder headerViewHolder, final int i, final Bucket bucket) {
        headerViewHolder.id = bucket.getId();
        headerViewHolder.mTextView.setText(bucket.getName());
        showBucketStateUI(bucket, headerViewHolder);
        this.mActivity.setCancelThumbnailDownload(false);
        if (this.mSource instanceof RemoteMediaSource) {
            headerViewHolder.getImageView().setVisibility(4);
            ((RelativeLayout.LayoutParams) headerViewHolder.mTextView.getLayoutParams()).addRule(9);
        } else {
            MediaModel mediaModel = bucket.getItems().size() > 0 ? bucket.getItems().get(0) : null;
            if (mediaModel != null) {
                if (mediaModel.getMediaType() == 1) {
                    ThumbnailHelper.load(Clip.CLIP_TYPE.IMAGE_NON_TITLE, bucket.getId(), mediaModel.getPath(), -1L, headerViewHolder.getImageView(), (int) (this.mTimelineThumbSize * HEADER_THUMBNAIL_SCALE), (int) (this.mTimelineThumbSize * HEADER_THUMBNAIL_SCALE), this);
                } else {
                    int duration = 600;
                    if (mediaModel.getDuration() < 800) {
                        duration = (int) (mediaModel.getDuration() / 2);
                    }
                    ThumbnailHelper.load(Clip.CLIP_TYPE.VIDEO, bucket.getId(), mediaModel.getPath(), duration, headerViewHolder.getImageView(), (int) (this.mTimelineThumbSize * HEADER_THUMBNAIL_SCALE), (int) (this.mTimelineThumbSize * HEADER_THUMBNAIL_SCALE), this);
                }
            }
        }
        headerViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int size = bucket.getItems().size();
                if (bucket.getState() == Bucket.State.EXPANDED) {
                    if (size == 0) {
                        GalleryAdapter.this.mDataset.remove(i + 1);
                    } else {
                        for (int i2 = 0; i2 < size; i2++) {
                            GalleryAdapter.this.mDataset.remove(i + 1);
                        }
                    }
                    this.notifyDataSetChanged();
                    bucket.setCancel(true);
                    bucket.setState(Bucket.State.COLLAPSED);
                    GalleryAdapter.this.showBucketStateUI(bucket, headerViewHolder);
                    return;
                }
                if (bucket.getState() == Bucket.State.COLLAPSED) {
                    if (size > 0 || (GalleryAdapter.this.mSource instanceof RemoteMediaSource)) {
                        bucket.setCancel(false);
                        bucket.setState(Bucket.State.LOADING);
                        GalleryAdapter.this.showBucketStateUI(bucket, headerViewHolder);
                        GalleryAdapter.this.mSource.fetchAlbum(bucket, new GallerySource.BucketLoadListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.2.1
                            @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource.BucketLoadListener
                            public void onBucketLoadSuccess(Bucket bucket2) {
                                GalleryAdapter.this.setBucketItems(bucket2, headerViewHolder);
                            }

                            @Override // com.adobe.premiereclip.mediabrowser.source.GallerySource.BucketLoadListener
                            public void onBucketLoadError(Bucket bucket2, int i3) {
                                if (i3 == 11) {
                                    Log.d(GalleryAdapter.TAG, "Adding noMedia as thumbnail data to mDataset");
                                    GalleryAdapter.this.mDataset.add(GalleryAdapter.this.getClipPosition(bucket2.getId()) + 1, new ThumbnailData(bucket2.getId(), 2));
                                    this.notifyDataSetChanged();
                                    bucket2.setState(Bucket.State.EXPANDED);
                                    GalleryAdapter.this.showBucketStateUI(bucket2, headerViewHolder);
                                    return;
                                }
                                if (i3 == 33) {
                                    Log.d(GalleryAdapter.TAG, "No internet bucketload error");
                                    GalleryAdapter.this.mDataset.clear();
                                    GalleryAdapter.this.mActivity.textView.setText(GalleryAdapter.this.mActivity.getResources().getString(R.string.no_internet_connection));
                                    GalleryAdapter.this.mActivity.textViewLayout.setVisibility(0);
                                    GalleryAdapter.this.mActivity.signInButton.setVisibility(4);
                                    return;
                                }
                                bucket2.setState(Bucket.State.COLLAPSED);
                                GalleryAdapter.this.showBucketStateUI(bucket2, headerViewHolder);
                            }
                        }, GalleryAdapter.this.mHandler);
                        return;
                    }
                    return;
                }
                bucket.setState(Bucket.State.COLLAPSED);
                GalleryAdapter.this.showBucketStateUI(bucket, headerViewHolder);
            }
        });
        if (this.mEnableMultiSelect) {
            headerViewHolder.mCheckBox.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (bucket.isSelected()) {
                        GalleryAdapter.this.bucketSelectTask(bucket, false, headerViewHolder);
                        if (bucket.getState() == Bucket.State.EXPANDED) {
                            headerViewHolder.mCheckBox.setImageResource(R.drawable.btn_picker_check_2x_grey);
                            return;
                        } else {
                            headerViewHolder.mCheckBox.setVisibility(4);
                            return;
                        }
                    }
                    GalleryAdapter.this.bucketSelectTask(bucket, true, headerViewHolder);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setBucketItems(Bucket bucket, HeaderViewHolder headerViewHolder) {
        if (bucket.getState() == Bucket.State.LOADING) {
            int clipPosition = getClipPosition(bucket.getId());
            this.mDataset.addAll(clipPosition + 1, bucket.getThumbnailItems());
            notifyDataSetChanged();
            this.mRecyclerView.smoothScrollToPosition(clipPosition + 1);
            bucket.setState(Bucket.State.EXPANDED);
            showBucketStateUI(bucket, headerViewHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBucketStateUI(Bucket bucket, HeaderViewHolder headerViewHolder) {
        Bucket.State state = bucket.getState();
        if (this.mEnableMultiSelect) {
            if (bucket.isSelected()) {
                headerViewHolder.mCheckBox.setVisibility(0);
                headerViewHolder.mCheckBox.setImageResource(R.drawable.btn_picker_check_2x);
            } else if (bucket.getState() == Bucket.State.EXPANDED) {
                headerViewHolder.mCheckBox.setVisibility(0);
                headerViewHolder.mCheckBox.setImageResource(R.drawable.btn_picker_check_2x_grey);
            } else {
                headerViewHolder.mCheckBox.setVisibility(4);
            }
        } else {
            headerViewHolder.mCheckBox.setVisibility(4);
        }
        if (state == Bucket.State.COLLAPSED) {
            headerViewHolder.mSpinner.setVisibility(4);
            headerViewHolder.mArrowImageView.setVisibility(0);
            headerViewHolder.mArrowImageView.setImageResource(R.drawable.btn_caret_downbold_2x);
        } else if (state == Bucket.State.EXPANDED) {
            headerViewHolder.mSpinner.setVisibility(4);
            headerViewHolder.mArrowImageView.setVisibility(0);
            headerViewHolder.mArrowImageView.setImageResource(R.drawable.btn_caret_upbold_2x);
        } else {
            headerViewHolder.mArrowImageView.setVisibility(4);
            headerViewHolder.mSpinner.setVisibility(0);
        }
    }

    private void onBindThumbnailViewHolder(final ThumbnailViewHolder thumbnailViewHolder, int i, final MediaModel mediaModel) {
        thumbnailViewHolder.id = mediaModel.getId();
        thumbnailViewHolder.mImageView.setImageBitmap(null);
        if (mediaModel.getMediaType() == 1) {
            this.mSource.fetchThumbnail(Clip.CLIP_TYPE.IMAGE_NON_TITLE, mediaModel, -1L, thumbnailViewHolder.getImageView(), this.mTimelineThumbSize, this.mTimelineThumbSize, this, this.mHandler);
            if ((this.mSource instanceof GooglePhotosSource) && checkIfMediaAlreadySelected(mediaModel)) {
                mediaModel.setMediaSelected(true);
                thumbnailViewHolder.setSelected(true);
                updateParentBucketView(mediaModel);
            }
        } else if (mediaModel.getMediaType() == 3) {
            int duration = 600;
            if (mediaModel.getDuration() < 800) {
                duration = (int) (mediaModel.getDuration() / 2);
            }
            this.mSource.fetchThumbnail(Clip.CLIP_TYPE.VIDEO, mediaModel, duration, thumbnailViewHolder.getImageView(), this.mTimelineThumbSize, this.mTimelineThumbSize, this, this.mHandler);
            if (this.mSource instanceof GooglePhotosSource) {
                thumbnailViewHolder.mClipTime.setVisibility(4);
                if (checkIfMediaAlreadySelected(mediaModel)) {
                    mediaModel.setMediaSelected(true);
                    thumbnailViewHolder.setSelected(true);
                    updateParentBucketView(mediaModel);
                }
            }
            thumbnailViewHolder.mClipTime.setText(Utilities.getTimeString(mediaModel.getDuration() * 1000, false));
        } else {
            Log.e(TAG, "Unknown media type" + mediaModel.getPath());
        }
        thumbnailViewHolder.itemView.setTag(Integer.valueOf(i));
        if (mediaModel.isMediaSelected()) {
            thumbnailViewHolder.setSelected(true);
        } else {
            thumbnailViewHolder.setSelected(false);
        }
        if (mediaModel.getMediaType() == 3) {
            thumbnailViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.4
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Intent intent = new Intent(GalleryAdapter.this.mActivity, (Class<?>) VideoPlaybackActivity.class);
                    if (GalleryAdapter.this.mSource instanceof DeviceMediaSource) {
                        intent.putExtra("videoPlayUri", Uri.parse(mediaModel.getPath()));
                    } else {
                        intent.putExtra("videoPlayUri", Uri.parse(((MediaModelForRemote) mediaModel).getUrl()));
                    }
                    intent.putExtra("playbackEndBehave", "restart");
                    GalleryAdapter.this.mActivity.startActivity(intent);
                    GalleryAdapter.this.mActivity.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    return true;
                }
            });
        }
        thumbnailViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.mediabrowser.GalleryAdapter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!mediaModel.isMediaSelected()) {
                    int selectedMediaCount = GalleryAdapter.this.mActivity.getSelectedMediaCount();
                    if (mediaModel.getSize() >= GalleryActivity.MAX_SIZE_LIMIT_IN_BYTES) {
                        Toast.makeText(GalleryAdapter.this.mActivity, GalleryAdapter.this.mActivity.getResources().getString(R.string.gallery_file_size_exceeded), 0).show();
                        return;
                    }
                    if (selectedMediaCount == 100) {
                        Toast.makeText(GalleryAdapter.this.mActivity, GalleryAdapter.this.mActivity.getResources().getString(R.string.gallery_max_limit) + " 100 " + GalleryAdapter.this.mActivity.getResources().getString(R.string.gallery_files), 0).show();
                        return;
                    }
                    mediaModel.setMediaSelected(mediaModel.isMediaSelected() ? false : true);
                    GalleryAdapter.this.mActivity.onMediaItemSelection(mediaModel);
                    thumbnailViewHolder.setSelected(true);
                    GalleryAdapter.this.updateParentBucketView(mediaModel);
                    return;
                }
                mediaModel.setMediaSelected(mediaModel.isMediaSelected() ? false : true);
                GalleryAdapter.this.mActivity.onMediaItemSelection(mediaModel);
                thumbnailViewHolder.setSelected(false);
                GalleryAdapter.this.updateParentBucketView(mediaModel);
            }
        });
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateParentBucketView(MediaModel mediaModel) {
        Bucket parentBucket = mediaModel.getParentBucket();
        int clipPosition = getClipPosition(parentBucket.getId());
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(clipPosition);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            onBindHeaderViewHolder((HeaderViewHolder) viewHolderFindViewHolderForAdapterPosition, clipPosition, parentBucket);
        }
    }

    private void updateMediaView(MediaModel mediaModel) {
        int clipPosition = getClipPosition(mediaModel.getId());
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.mRecyclerView.findViewHolderForAdapterPosition(clipPosition);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            onBindThumbnailViewHolder((ThumbnailViewHolder) viewHolderFindViewHolderForAdapterPosition, clipPosition, mediaModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bucketSelectTask(Bucket bucket, boolean z, HeaderViewHolder headerViewHolder) {
        ArrayList<MediaModel> items = bucket.getItems();
        if (!z) {
            for (MediaModel mediaModel : items) {
                mediaModel.setMediaSelected(false);
                this.mActivity.onMediaItemSelection(mediaModel);
                updateMediaView(mediaModel);
            }
            return;
        }
        Iterator<MediaModel> it = items.iterator();
        int i = 0;
        int size = 0;
        while (it.hasNext()) {
            size = (int) (((long) size) + it.next().getSize());
            i++;
        }
        if (size >= GalleryActivity.MAX_SIZE_LIMIT_IN_BYTES) {
            Toast.makeText(this.mActivity, this.mActivity.getResources().getString(R.string.gallery_file_size_exceeded), 0).show();
            return;
        }
        if (this.mActivity.getSelectedMediaCount() + i > 100) {
            Toast.makeText(this.mActivity, this.mActivity.getResources().getString(R.string.gallery_max_limit) + " 100 " + this.mActivity.getResources().getString(R.string.gallery_files), 0).show();
            return;
        }
        headerViewHolder.mCheckBox.setImageResource(R.drawable.btn_picker_check_2x);
        for (MediaModel mediaModel2 : items) {
            if (!mediaModel2.isMediaSelected()) {
                mediaModel2.setMediaSelected(true);
                this.mActivity.onMediaItemSelection(mediaModel2);
                updateMediaView(mediaModel2);
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ThumbnailData thumbnailData = this.mDataset.get(i);
        int viewType = thumbnailData.getViewType();
        if (viewType == 0) {
            onBindHeaderViewHolder((HeaderViewHolder) viewHolder, i, thumbnailData.getBucket());
        } else if (viewType == 1) {
            onBindThumbnailViewHolder((ThumbnailViewHolder) viewHolder, i, thumbnailData.getMediaModel());
        } else {
            onBindNoMediaViewHolder((NoMediaViewHolder) viewHolder, i, UUID.randomUUID().toString());
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
            ImageView imageView2 = ((ThumbnailViewHolder) viewHolderFindViewHolderForLayoutPosition).mImageView;
            imageView2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            imageView2.setImageBitmap(bitmap);
        }
    }

    @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
    public void onFailureImageLoad(String str) {
        if (this.mSource instanceof RemoteMediaSource) {
            if (str.equals("33")) {
                this.mDataset.clear();
                this.mActivity.textView.setText(this.mActivity.getResources().getString(R.string.no_internet_connection));
                this.mActivity.textViewLayout.setVisibility(0);
                this.mActivity.signInButton.setVisibility(4);
                return;
            }
            this.mActivity.showErrorToast();
        }
    }

    public class HeaderViewHolder extends RecyclerView.ViewHolder implements Utilities.ClipImageHolder {
        private static final String TAG = "GALLERY_HEADER_VIEW_HOLDER";
        public String id;
        public ImageView mArrowImageView;
        public ImageView mCheckBox;
        public ImageView mImageView;
        public ProgressBar mSpinner;
        private TextView mTextView;

        public HeaderViewHolder(View view, int i, a aVar) {
            super(view);
            this.mTextView = (TextView) view.findViewById(R.id.text);
            this.mImageView = (ImageView) view.findViewById(R.id.header_media_thumb);
            this.mArrowImageView = (ImageView) view.findViewById(R.id.header_arrow);
            this.mSpinner = (ProgressBar) view.findViewById(R.id.loading_spinner);
            this.mCheckBox = (ImageView) view.findViewById(R.id.select_all);
            this.mImageView.getLayoutParams().height = i;
            this.mImageView.getLayoutParams().width = i;
            this.mSpinner.getLayoutParams().height = i;
            this.mSpinner.getLayoutParams().width = i;
            this.mCheckBox.getLayoutParams().height = i;
            this.mCheckBox.getLayoutParams().width = i;
            this.mCheckBox.setVisibility(4);
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

    public class NoMediaViewHolder extends RecyclerView.ViewHolder implements Utilities.ClipImageHolder {
        String id;
        TextView mTextView;

        public NoMediaViewHolder(View view, int i, a aVar) {
            super(view);
            this.mTextView = (TextView) view.findViewById(R.id.noPhotoView);
            d.a(this.mTextView, aVar);
            Log.d(GalleryAdapter.TAG, "constructor of noBindViewHolder class");
        }

        @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
        public ImageView getImageView() {
            return null;
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
        public ImageView mImageView;

        public ThumbnailViewHolder(View view, int i, a aVar) {
            super(view);
            this.mImageView = (ImageView) view.findViewById(R.id.gallery_media_thumb);
            this.mClipFrame = (ImageView) view.findViewById(R.id.gallery_active_media_frame);
            this.mClipTime = (TextView) view.findViewById(R.id.gallery_media_time);
            d.a(this.mClipTime, aVar);
            this.mCheck = (CheckedTextView) view.findViewById(R.id.gallery_media_checkmark);
            this.mImageView.getLayoutParams().width = i;
            this.mImageView.getLayoutParams().height = i;
            this.mClipFrame.getLayoutParams().width = i;
            this.mClipFrame.getLayoutParams().height = i;
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
