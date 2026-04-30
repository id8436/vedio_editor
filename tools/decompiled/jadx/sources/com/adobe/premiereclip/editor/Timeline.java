package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.coachmarks.CoachMarks;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.editor.automatic.AutomaticTimeline;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.ProjectPosterTask;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.e.a.a.a.a.c;
import com.e.a.a.a.a.d;
import com.e.a.a.a.b.e;
import com.e.a.a.a.b.j;
import com.e.a.a.a.b.l;
import com.e.a.a.a.d.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Timeline {
    public static final int ANIMATION_DURATION = 1000;
    protected static final int COLUMN_COUNT = 4;
    public static final int FORCE_UPDATE_POSTER_INDEX = 0;
    private static final String TAG = "Timeline";
    private CoachMarks.CoachmarkParam CoachmarkAdjust = null;
    protected Activity activity;
    protected long bumperDuration;
    protected ClipDeleteListener clipDeleteListener;
    protected DraggableClipAdapter mAdapter;
    protected final c mAnimator;
    private CoachMarks mCoachmark;
    protected GridLayoutManager mLayoutManager;
    private ClipPreferences mPreferences;
    protected RecyclerView mRecyclerView;
    protected l mRecyclerViewDragDropManager;
    protected RecyclerView.Adapter mWrappedAdapter;
    private String pendingProjectPosterIdentifier;
    protected String projectID;
    private String projectPosterIdentifier;
    protected TimelineListener timelineListener;
    protected final int timelineThumbSize;

    public interface ClipDeleteListener {
        void onClipDelete(int i);
    }

    public interface TimelineListener {
        String onClipChanged(int i);

        void onClipMoved(int i, int i2);

        void onClipRemoved(int i);

        void onClipSelected(int i);

        void onProjectPosterUpdated();
    }

    public Timeline(Activity activity, String str, RelativeLayout relativeLayout) {
        this.activity = activity;
        this.projectID = str;
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.timelineThumbSize = (point.x - (((int) activity.getResources().getDimension(R.dimen.clip_thumb_margin)) * 5)) / 4;
        this.mRecyclerView = (RecyclerView) ((LayoutInflater) activity.getSystemService("layout_inflater")).inflate(R.layout.view_timeline, relativeLayout).findViewById(R.id.timeline_list);
        this.mRecyclerView.setHasFixedSize(true);
        this.mLayoutManager = new GridLayoutManager(this.activity, 4);
        this.mLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.adobe.premiereclip.editor.Timeline.1
            @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                return i == 0 ? 4 : 1;
            }
        });
        this.mRecyclerView.setLayoutManager(this.mLayoutManager);
        this.mRecyclerViewDragDropManager = new l();
        this.mRecyclerViewDragDropManager.a(true);
        this.mRecyclerViewDragDropManager.b(false);
        DraggableClipAdapter draggableClipAdapterCreateNewAdapter = createNewAdapter();
        this.mAdapter = draggableClipAdapterCreateNewAdapter;
        this.mWrappedAdapter = this.mRecyclerViewDragDropManager.a(draggableClipAdapterCreateNewAdapter);
        this.mAnimator = new d();
        this.mRecyclerView.setAdapter(this.mWrappedAdapter);
        this.mRecyclerView.setItemAnimator(this.mAnimator);
        this.mRecyclerViewDragDropManager.a(this.mRecyclerView);
        this.mRecyclerView.addOnScrollListener(new Utilities.AdapterImageLoaderOnScrollListener(this.mAdapter, activity));
        this.mCoachmark = new CoachMarks(activity, true);
        this.mPreferences = ClipPreferences.getInstance(activity);
    }

    protected DraggableClipAdapter createNewAdapter() {
        return new DraggableClipAdapter(this, new ArrayList());
    }

    public void setClips(ArrayList<Clip> arrayList, int i) {
        ArrayList<ClipAssetWrapper> arrayList2 = new ArrayList<>();
        if (arrayList != null && arrayList.size() > 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= arrayList.size()) {
                    break;
                }
                Clip clip = arrayList.get(i3);
                boolean z = false;
                if ((clip instanceof ImageClip) && ((ImageClip) clip).isStoryCard()) {
                    z = true;
                }
                arrayList2.add(new ClipAssetWrapper(clip.getAssetReference().getClipAsset(), clip.stableId, clip.getClipId(), clip.isAvailable(), clip.getStartTimeUs(), clip.getDurationUsWithSpeed(), z, clip.getClipType()));
                i2 = i3 + 1;
            }
            updateProjectPoster();
        } else {
            deleteProjectPoster();
        }
        this.mAdapter.updateData(arrayList2, i);
        updateTimelineView();
        Clip clipCreateBumperClip = Editor.createBumperClip(DCXReader.getBumperPath(this.projectID));
        this.bumperDuration = clipCreateBumperClip == null ? 0L : clipCreateBumperClip.getDurationUs();
    }

    public void addClip(Clip clip, int i) {
        boolean z = false;
        if ((clip instanceof ImageClip) && ((ImageClip) clip).isStoryCard()) {
            z = true;
        }
        this.mAdapter.addClip(new ClipAssetWrapper(clip.getAssetReference().getClipAsset(), clip.stableId, clip.getClipId(), clip.isAvailable(), clip.getStartTimeUs(), clip.getDurationUsWithSpeed(), z, clip.getClipType()), i);
        updateProjectPoster(this.timelineListener.onClipChanged(i));
        updateTimelineView();
    }

    public void resetClip(Clip clip, int i) {
        boolean z = false;
        if ((clip instanceof ImageClip) && ((ImageClip) clip).isStoryCard()) {
            z = true;
        }
        ClipAssetWrapper clipAssetWrapper = new ClipAssetWrapper(clip.getAssetReference().getClipAsset(), this.mAdapter.getItemId(i + 1), clip.getClipId(), clip.isAvailable(), clip.getStartTimeUs(), clip.getDurationUsWithSpeed(), z, clip.getClipType());
        if (clipAssetWrapper.getType() == Clip.CLIP_TYPE.IMAGE_TITLE) {
            String cacheKey = clipAssetWrapper.getCacheKey();
            BitmapCache.markBitmapDirty(cacheKey);
            ThumbnailHelper.resetKey(cacheKey);
        }
        if (this.mAdapter.replaceClip(clipAssetWrapper, i)) {
            updateProjectPoster(this.timelineListener.onClipChanged(i));
        }
    }

    public void setActiveClipIndex(int i, boolean z) {
        this.mAdapter.setActiveClipIndex(i, z);
    }

    public void resetClipThumb(int i) {
        ClipAssetWrapper clipAssetWrapper = (ClipAssetWrapper) this.mAdapter.clips.get(i);
        if (clipAssetWrapper.getType() == Clip.CLIP_TYPE.VIDEO) {
            String cacheKey = clipAssetWrapper.getCacheKey();
            BitmapCache.markBitmapDirty(cacheKey);
            ThumbnailHelper.resetKey(cacheKey);
        }
        this.mAdapter.notifyItemWithoutRecyclingViewHolder(i + 1);
        String strOnClipChanged = this.timelineListener.onClipChanged(i);
        if (!strOnClipChanged.equals("")) {
            this.projectPosterIdentifier = null;
            updateProjectPoster(strOnClipChanged);
        }
    }

    public void removeClip(int i) {
        this.mAdapter.removeClipFromView(i);
        this.timelineListener.onClipRemoved(i);
        Log.i("Project Poster", "index: " + i);
        updateProjectPoster(this.timelineListener.onClipChanged(0));
        updateTimelineView();
    }

    public void updateProjectPoster() {
        this.projectPosterIdentifier = null;
        updateProjectPoster(this.timelineListener.onClipChanged(0));
    }

    protected void deleteProjectPoster() {
        this.pendingProjectPosterIdentifier = null;
        triggerProjectPosterSave();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateProjectPoster(String str) {
        if (str == null) {
            if (this.projectPosterIdentifier != null) {
                deleteProjectPoster();
            }
        } else if (!str.equals("")) {
            this.pendingProjectPosterIdentifier = str;
            if (this.projectPosterIdentifier == null) {
                Log.d(TAG, "project poster identifier is null");
                triggerProjectPosterSave();
            } else if (!this.pendingProjectPosterIdentifier.equals(this.projectPosterIdentifier)) {
                triggerProjectPosterSave();
            }
        }
    }

    public void projectPosterSaved() {
        if (this.pendingProjectPosterIdentifier == null) {
            if (this.projectPosterIdentifier != null) {
                triggerProjectPosterSave();
            }
        } else if (!this.pendingProjectPosterIdentifier.equals(this.projectPosterIdentifier)) {
            triggerProjectPosterSave();
        }
    }

    protected void triggerProjectPosterSave() {
        if (!ProjectPosterTask.isRunning()) {
            this.projectPosterIdentifier = this.pendingProjectPosterIdentifier;
            this.timelineListener.onProjectPosterUpdated();
        }
    }

    protected void updateTimelineView() {
        int itemCount = this.mAdapter.getItemCount();
        if (itemCount != 0 && (itemCount - 1) % 4 == 0) {
            this.mRecyclerView.setPadding(0, 0, 0, this.timelineThumbSize);
        } else {
            this.mRecyclerView.setPadding(0, 0, 0, 0);
        }
        this.mAdapter.scrollToActiveClip();
    }

    public void updateDuration(long j) {
        this.mAdapter.updateDuration(j);
    }

    public class ClipAssetWrapper {
        private boolean available;
        private ClipAsset clipAsset;
        public final String clipId;
        private long durationUs;
        private long id;
        private boolean isStoryCard;
        private long startTimeUs;
        private Clip.CLIP_TYPE type;

        public ClipAssetWrapper(ClipAsset clipAsset, long j, String str, boolean z, long j2, long j3, boolean z2, Clip.CLIP_TYPE clip_type) {
            this.clipAsset = clipAsset;
            this.id = j;
            this.clipId = str;
            this.available = z;
            this.durationUs = j3;
            setStartTimeUs(j2);
            this.isStoryCard = z2;
            this.type = clip_type;
        }

        public ClipAsset getClipAsset() {
            return this.clipAsset;
        }

        public long getId() {
            return this.id;
        }

        public boolean isAvailable() {
            return this.available;
        }

        public long getStartTimeMs() {
            return this.startTimeUs / 1000;
        }

        public void setStartTimeUs(long j) {
            this.startTimeUs = getOptimizedStartTime(j);
        }

        public long getOptimizedStartTime(long j) {
            if (j >= 600000) {
                return j;
            }
            if (this.durationUs < 600000) {
                return this.durationUs / 2;
            }
            return 600000L;
        }

        public long getClipDurationUs() {
            return this.durationUs;
        }

        public void setClipDurationUs(long j) {
            this.durationUs = j;
        }

        public Clip.CLIP_TYPE getType() {
            return this.type;
        }

        public boolean isStoryCard() {
            return this.isStoryCard;
        }

        public String getCacheKey() {
            if (!isAvailable()) {
                return null;
            }
            String str = this.clipId + '_' + this.clipAsset.clipAssetID;
            if (getType() == Clip.CLIP_TYPE.VIDEO) {
                return str + '_' + this.startTimeUs;
            }
            return str;
        }
    }

    public class DraggableClipAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Utilities.IClipScrollAdapter, Utilities.ThumbnailLoadListener, e<RecyclerView.ViewHolder> {
        protected static final String TAG = "DraggableClipAdapter";
        protected int activeClipIndex;
        private ArrayList<ClipAssetWrapper> clips;
        private boolean mCanProcess;
        protected long totalDuration;

        public class DurationVH extends a {
            public TextView timeView;

            public DurationVH(View view) {
                super(view);
                this.timeView = (TextView) view.findViewById(R.id.time_view);
                com.h.a.d.a(this.timeView);
            }
        }

        public class ViewHolder extends a implements View.OnClickListener, Utilities.ClipImageHolder {
            public ImageView deleteBtn;
            public ImageView errorIcon;
            public String key;
            public ImageView mClipFrame;
            public ImageView mClipThumb;
            public TextView mClipTime;
            public ImageView mStorycardCam;
            public ImageView videoClipIcon;

            public ViewHolder(View view) {
                super(view);
                this.mClipThumb = (ImageView) view.findViewById(R.id.clip_thumb);
                this.mClipFrame = (ImageView) view.findViewById(R.id.active_clip_frame);
                this.deleteBtn = (ImageView) view.findViewById(R.id.delete_btn);
                this.mClipTime = (TextView) view.findViewById(R.id.clip_time);
                this.mStorycardCam = (ImageView) view.findViewById(R.id.storycard_cam);
                this.videoClipIcon = (ImageView) view.findViewById(R.id.clip_video);
                this.errorIcon = (ImageView) view.findViewById(R.id.error_icon);
                this.mClipThumb.getLayoutParams().width = Timeline.this.timelineThumbSize;
                this.mClipThumb.getLayoutParams().height = Timeline.this.timelineThumbSize;
                this.mClipFrame.getLayoutParams().width = Timeline.this.timelineThumbSize;
                this.mClipFrame.getLayoutParams().height = Timeline.this.timelineThumbSize;
                com.h.a.d.a(this.mClipTime);
                this.deleteBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter.ViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (Timeline.this.clipDeleteListener != null) {
                            Timeline.this.clipDeleteListener.onClipDelete(ViewHolder.this.getLayoutPosition());
                        }
                    }
                });
            }

            @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
            public ImageView getImageView() {
                return this.mClipThumb;
            }

            @Override // com.adobe.premiereclip.util.Utilities.ClipImageHolder
            public String getKey() {
                return this.key;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DraggableClipAdapter.this.onClickClip(getLayoutPosition());
            }
        }

        public DraggableClipAdapter(Timeline timeline, ArrayList<ClipAssetWrapper> arrayList) {
            this();
            this.totalDuration = 0L;
            updateData(arrayList, 0);
            setHasStableIds(true);
        }

        public DraggableClipAdapter() {
            this.mCanProcess = true;
        }

        @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
        public int getClipPosition(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.clips.size()) {
                    String cacheKey = this.clips.get(i2).getCacheKey();
                    if (cacheKey == null || str == null || !str.equals(cacheKey)) {
                        i = i2 + 1;
                    } else {
                        return i2 + 1;
                    }
                } else {
                    return -1;
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (i == 0) {
                return 0L;
            }
            return this.clips.get(i - 1).getId();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
            if (i == 0) {
                return new DurationVH(layoutInflaterFrom.inflate(R.layout.view_total_duration, viewGroup, false));
            }
            View viewInflate = layoutInflaterFrom.inflate(R.layout.view_clip, viewGroup, false);
            ViewHolder viewHolder = new ViewHolder(viewInflate);
            viewInflate.setOnClickListener(viewHolder);
            return viewHolder;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            Log.d("Thumbnail", "recycling holder position =" + viewHolder.getLayoutPosition());
            super.onViewRecycled(viewHolder);
            if (viewHolder instanceof ViewHolder) {
                ImageView imageView = ((ViewHolder) viewHolder).mClipThumb;
                imageView.setImageDrawable(null);
                imageView.setBackgroundColor(Timeline.this.activity.getResources().getColor(R.color.clip_thumb_view));
            }
        }

        @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
        public void onSuccessImageLoad(String str, Bitmap bitmap) {
            if (Timeline.this.mRecyclerView != null) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = Timeline.this.mRecyclerView.findViewHolderForLayoutPosition(getClipPosition(str));
                if (viewHolderFindViewHolderForLayoutPosition instanceof ViewHolder) {
                    ImageView imageView = ((ViewHolder) viewHolderFindViewHolderForLayoutPosition).mClipThumb;
                    imageView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                    imageView.setImageBitmap(bitmap);
                }
            }
        }

        @Override // com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
        public void onFailureImageLoad(String str) {
        }

        @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
        public boolean isProcessing() {
            return this.mCanProcess;
        }

        @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
        public void startProcessing() {
            this.mCanProcess = true;
        }

        @Override // com.adobe.premiereclip.util.Utilities.IClipScrollAdapter
        public void stopProcessing() {
            this.mCanProcess = false;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == 0 ? 0 : 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            Log.d(TAG, "on bind view " + i);
            if (i == 0) {
                long j = this.totalDuration;
                String str = "";
                if (DCXReader.isBumperEnabled(Timeline.this.projectID)) {
                    j += Timeline.this.bumperDuration;
                    str = "(" + Timeline.this.activity.getString(R.string.with_bumper) + ")";
                }
                ((DurationVH) viewHolder).timeView.setText(Timeline.this.activity.getString(R.string.total_duration_text, new Object[]{Utilities.getTimeString(j, true), str}));
                return;
            }
            updateClipView((ViewHolder) viewHolder, i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void notifyItemWithoutRecyclingViewHolder(int i) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = Timeline.this.mRecyclerView.findViewHolderForAdapterPosition(i);
            if (viewHolderFindViewHolderForAdapterPosition instanceof ViewHolder) {
                updateClipView((ViewHolder) viewHolderFindViewHolderForAdapterPosition, i);
            } else {
                notifyItemChanged(i);
            }
        }

        protected void updateClipView(ViewHolder viewHolder, int i) {
            if (i > 0 && i <= this.clips.size()) {
                ClipAssetWrapper clipAssetWrapper = this.clips.get(i - 1);
                String str = clipAssetWrapper.getClipAsset().filePath;
                viewHolder.key = clipAssetWrapper.clipId;
                if (clipAssetWrapper.isAvailable()) {
                    Utilities.resetViewIfBitmapRecycled(viewHolder.mClipThumb);
                    ThumbnailHelper.load(clipAssetWrapper.getType(), clipAssetWrapper.getCacheKey(), str, clipAssetWrapper.getStartTimeMs(), viewHolder.getImageView(), Timeline.this.timelineThumbSize, Timeline.this.timelineThumbSize, this);
                    viewHolder.errorIcon.setVisibility(8);
                    if (clipAssetWrapper.isStoryCard) {
                        viewHolder.mClipTime.setVisibility(8);
                        viewHolder.mStorycardCam.setVisibility(0);
                    } else {
                        setClipTime(viewHolder, Long.valueOf(clipAssetWrapper.getClipDurationUs()));
                        viewHolder.mClipTime.setVisibility(0);
                        viewHolder.mStorycardCam.setVisibility(8);
                        if (clipAssetWrapper.getType() == Clip.CLIP_TYPE.VIDEO) {
                            viewHolder.videoClipIcon.setVisibility(0);
                        } else {
                            viewHolder.videoClipIcon.setVisibility(8);
                        }
                    }
                } else {
                    viewHolder.mClipTime.setVisibility(8);
                    viewHolder.videoClipIcon.setVisibility(8);
                    viewHolder.mClipThumb.setImageDrawable(Timeline.this.activity.getResources().getDrawable(R.drawable.gra_dangerstripes_highlight));
                    viewHolder.errorIcon.setVisibility(0);
                    viewHolder.mStorycardCam.setVisibility(8);
                }
                if (i - 1 == this.activeClipIndex) {
                    viewHolder.mClipFrame.setVisibility(0);
                    viewHolder.deleteBtn.setVisibility(0);
                } else {
                    viewHolder.mClipFrame.setVisibility(4);
                    viewHolder.deleteBtn.setVisibility(4);
                }
                int dragStateFlags = viewHolder.getDragStateFlags();
                if ((Integer.MIN_VALUE & dragStateFlags) != 0 && (dragStateFlags & 2) != 0) {
                    viewHolder.deleteBtn.setVisibility(4);
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.clips.size() == 0) {
                return 0;
            }
            return this.clips.size() + 1;
        }

        @Override // com.e.a.a.a.b.e
        public void onMoveItem(int i, int i2) {
            Log.d(TAG, "drag onMoveItem(fromPosition = " + i + ", toPosition = " + i2 + ")");
            if (i != i2) {
                int i3 = i - 1;
                int i4 = i2 - 1;
                this.clips.add(i4, this.clips.remove(i3));
                Timeline.this.timelineListener.onClipMoved(i3, i4);
                String strOnClipChanged = Timeline.this.timelineListener.onClipChanged(i3);
                String strOnClipChanged2 = Timeline.this.timelineListener.onClipChanged(i4);
                Timeline.this.updateProjectPoster(strOnClipChanged);
                Timeline.this.updateProjectPoster(strOnClipChanged2);
                this.activeClipIndex = i4;
                notifyItemMoved(i3 + 1, i4 + 1);
            }
        }

        public void onClickClip(int i) {
            int i2 = this.activeClipIndex;
            this.activeClipIndex = i - 1;
            if (i2 != this.activeClipIndex) {
                Log.d(Timeline.TAG, "clicked " + this.activeClipIndex);
                Timeline.this.timelineListener.onClipSelected(this.activeClipIndex);
                notifyItemWithoutRecyclingViewHolder(this.activeClipIndex + 1);
                notifyItemWithoutRecyclingViewHolder(i2 + 1);
            }
            if (Timeline.this.mPreferences.getPreference(ClipPreferences.FREEFORM_ADJUST, true)) {
                Timeline.this.showCoachmark();
            }
        }

        @Override // com.e.a.a.a.b.e
        public boolean onCheckCanStartDrag(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3) {
            if (i == 0) {
                return false;
            }
            int i4 = i - 1;
            Log.d(TAG, "start dragging, aci=" + this.activeClipIndex);
            this.activeClipIndex = i4;
            Timeline.this.timelineListener.onClipSelected(i4);
            return true;
        }

        @Override // com.e.a.a.a.b.e
        public j onGetItemDraggableRange(RecyclerView.ViewHolder viewHolder, int i) {
            if (this.clips.size() == 0) {
                return null;
            }
            return new j(1, this.clips.size());
        }

        public void updateData(ArrayList<ClipAssetWrapper> arrayList, int i) {
            this.clips = arrayList;
            this.activeClipIndex = i;
            notifyDataSetChanged();
            scrollToActiveClip();
        }

        public void updateDuration(long j) {
            this.totalDuration = j;
            if (this.clips != null && this.clips.size() > 0) {
                notifyItemChanged(0);
            }
        }

        public void updateData(AutomaticTimeline.AssetGroup assetGroup, int i) {
        }

        public void addClip(ClipAssetWrapper clipAssetWrapper, int i) {
            this.clips.add(i, clipAssetWrapper);
            this.activeClipIndex = i;
            notifyItemInserted(i + 1);
            notifyItemWithoutRecyclingViewHolder(i);
        }

        public boolean replaceClip(ClipAssetWrapper clipAssetWrapper, int i) {
            if (!this.clips.get(i).isAvailable() && !clipAssetWrapper.isAvailable()) {
                return false;
            }
            this.clips.remove(i);
            this.clips.add(i, clipAssetWrapper);
            notifyItemWithoutRecyclingViewHolder(i + 1);
            return true;
        }

        public void removeClipFromView(int i) {
            if (this.clips.size() > i) {
                this.clips.remove(i);
                if (this.clips.size() == 0) {
                    notifyItemRangeRemoved(0, 2);
                } else {
                    notifyItemRemoved(i + 1);
                }
            }
        }

        public void setActiveClipIndex(int i, boolean z) {
            Log.d(TAG, "setting active clip index " + i);
            if (i < this.clips.size()) {
                if (z || i != this.activeClipIndex) {
                    int i2 = this.activeClipIndex;
                    this.activeClipIndex = i;
                    notifyItemWithoutRecyclingViewHolder(i2 + 1);
                    scrollToActiveClip();
                }
            }
        }

        public void setClipTime(ViewHolder viewHolder, Long l) {
            viewHolder.mClipTime.setText(Utilities.getTimeString(l.longValue(), false));
        }

        public void scrollToActiveClip() {
            Timeline.this.mRecyclerView.post(new Runnable() { // from class: com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Timeline.this.mRecyclerView != null && DraggableClipAdapter.this.activeClipIndex >= 0 && DraggableClipAdapter.this.activeClipIndex < DraggableClipAdapter.this.clips.size()) {
                        Timeline.this.mRecyclerView.smoothScrollToPosition(DraggableClipAdapter.this.activeClipIndex + 1);
                        DraggableClipAdapter.this.notifyItemWithoutRecyclingViewHolder(DraggableClipAdapter.this.activeClipIndex + 1);
                    }
                }
            });
        }
    }

    public void setClipDeleteListener(ClipDeleteListener clipDeleteListener) {
        this.clipDeleteListener = clipDeleteListener;
    }

    public void refreshClipsTime(ArrayList<Clip> arrayList) {
        if (arrayList.size() == this.mAdapter.clips.size()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdapter.clips.size()) {
                    ((ClipAssetWrapper) this.mAdapter.clips.get(i2)).setClipDurationUs(arrayList.get(i2).getDurationUsWithSpeed());
                    this.mAdapter.notifyItemWithoutRecyclingViewHolder(i2);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void updateTimeOfClipAt(int i, long j, long j2) {
        if (i < this.mAdapter.clips.size()) {
            ClipAssetWrapper clipAssetWrapper = (ClipAssetWrapper) this.mAdapter.clips.get(i);
            long optimizedStartTime = clipAssetWrapper.getOptimizedStartTime(j);
            Log.d(TAG, "clip thumb before: " + (optimizedStartTime / 1000) + " " + ((ClipAssetWrapper) this.mAdapter.clips.get(i)).getStartTimeMs());
            boolean z = optimizedStartTime / 1000 != ((ClipAssetWrapper) this.mAdapter.clips.get(i)).getStartTimeMs();
            boolean z2 = Math.round(((double) j2) / 1000000.0d) != Math.round(((double) ((ClipAssetWrapper) this.mAdapter.clips.get(i)).getClipDurationUs()) / 1000000.0d);
            if (z || z2) {
                clipAssetWrapper.setClipDurationUs(j2);
                clipAssetWrapper.setStartTimeUs(optimizedStartTime);
                if (z) {
                    Log.d(TAG, "resetting clip thumb: " + (optimizedStartTime / 1000) + " " + ((ClipAssetWrapper) this.mAdapter.clips.get(i)).getStartTimeMs());
                    resetClipThumb(i);
                } else {
                    Log.d(TAG, "not resetting clip thumb");
                    this.mAdapter.notifyItemWithoutRecyclingViewHolder(i + 1);
                }
            }
        }
    }

    public void setTimelineListener(TimelineListener timelineListener) {
        this.timelineListener = timelineListener;
    }

    public void onPause() {
        this.mRecyclerViewDragDropManager.d();
    }

    public void onDestroy() {
        if (this.mRecyclerViewDragDropManager != null) {
            this.mRecyclerViewDragDropManager.b();
            this.mRecyclerViewDragDropManager = null;
        }
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setItemAnimator(null);
            this.mRecyclerView.setAdapter(null);
            this.mRecyclerView = null;
        }
        if (this.mWrappedAdapter != null) {
            com.e.a.a.a.d.e.a(this.mWrappedAdapter);
            this.mWrappedAdapter = null;
        }
        this.mAdapter = null;
        this.mLayoutManager = null;
    }

    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    public void setCoachmarkParam(CoachMarks.CoachmarkParam coachmarkParam) {
        this.CoachmarkAdjust = coachmarkParam;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCoachmark() {
        if (this.CoachmarkAdjust != null && this.mPreferences.getPreference(ClipPreferences.FREEFORM_ADJUST, true)) {
            this.mCoachmark.showCoachMarkWithOk(this.CoachmarkAdjust);
        }
    }

    public CoachMarks getCoachmarkObject() {
        return this.mCoachmark;
    }
}
