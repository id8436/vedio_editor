package com.adobe.premiereclip.editor.automatic;

import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.RelativeLayout;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.Timeline;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.e.a.a.a.b.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AutomaticTimeline extends Timeline {
    public static final String UPDATE_PROJECT_POSTER = "UPDATE_PROJECT_POSTER";
    private int currentClipIndex;
    private boolean firstClipDirty;

    public AutomaticTimeline(Activity activity, String str, RelativeLayout relativeLayout) {
        super(activity, str, relativeLayout);
    }

    public class GroupAssetWrapper {
        private String groupId;
        private ArrayList<Timeline.ClipAssetWrapper> mGroup = new ArrayList<>();

        public GroupAssetWrapper() {
        }

        public void setGroupId(String str) {
            this.groupId = str;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public void addClipAsset(Timeline.ClipAssetWrapper clipAssetWrapper) {
            this.mGroup.add(clipAssetWrapper);
        }

        public ArrayList<Timeline.ClipAssetWrapper> getClipAssets() {
            return this.mGroup;
        }

        public ArrayList<Integer> getClipsId() {
            ArrayList<Integer> arrayList = new ArrayList<>();
            Iterator<Timeline.ClipAssetWrapper> it = this.mGroup.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf((int) it.next().getId()));
            }
            return arrayList;
        }

        public long getGroupDurationUs() {
            long clipDurationUs = 0;
            Iterator<Timeline.ClipAssetWrapper> it = this.mGroup.iterator();
            while (true) {
                long j = clipDurationUs;
                if (it.hasNext()) {
                    clipDurationUs = it.next().getClipDurationUs() + j;
                } else {
                    return j;
                }
            }
        }
    }

    public class AssetGroup extends ArrayList<GroupAssetWrapper> {
        public AssetGroup() {
        }
    }

    @Override // com.adobe.premiereclip.editor.Timeline
    public void setClips(ArrayList<Clip> arrayList, int i) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = 0;
        if (arrayList != null && arrayList.size() > 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                int i5 = i2;
                if (i4 >= arrayList.size()) {
                    break;
                }
                Clip clip = arrayList.get(i4);
                boolean z = false;
                if ((clip instanceof ImageClip) && ((ImageClip) clip).isStoryCard()) {
                    z = true;
                }
                Timeline.ClipAssetWrapper clipAssetWrapper = new Timeline.ClipAssetWrapper(clip.getAssetReference().getClipAsset(), clip.stableId, clip.getClipId(), clip.isAvailable(), clip.getStartTimeUs(), clip.getDurationUsWithSpeed(), z, clip.getClipType());
                if (clip.getClipGroupId() != null) {
                    if (!linkedHashMap.containsKey(clip.getClipGroupId())) {
                        GroupAssetWrapper groupAssetWrapper = new GroupAssetWrapper();
                        groupAssetWrapper.setGroupId(clip.getClipGroupId());
                        linkedHashMap.put(clip.getClipGroupId(), groupAssetWrapper);
                    }
                    ((GroupAssetWrapper) linkedHashMap.get(clip.getClipGroupId())).addClipAsset(clipAssetWrapper);
                    i2 = i5;
                } else {
                    GroupAssetWrapper groupAssetWrapper2 = new GroupAssetWrapper();
                    groupAssetWrapper2.addClipAsset(clipAssetWrapper);
                    groupAssetWrapper2.setGroupId("No_GroupID_Set" + i5);
                    linkedHashMap.put("No_GroupID_Set" + i5, groupAssetWrapper2);
                    i2 = i5 + 1;
                }
                i3 = i4 + 1;
            }
            updateProjectPoster();
        } else {
            deleteProjectPoster();
        }
        AssetGroup assetGroup = new AssetGroup();
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            assetGroup.add(((Map.Entry) it.next()).getValue());
        }
        this.mAdapter.updateData(assetGroup, i);
        this.mAdapter.notifyDataSetChanged();
        updateTimelineView();
        Clip clipCreateBumperClip = Editor.createBumperClip(DCXReader.getBumperPath(this.projectID));
        this.bumperDuration = clipCreateBumperClip == null ? 0L : clipCreateBumperClip.getDurationUs();
    }

    @Override // com.adobe.premiereclip.editor.Timeline
    protected void triggerProjectPosterSave() {
        super.triggerProjectPosterSave();
        this.firstClipDirty = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adobe.premiereclip.editor.Timeline
    public DraggableClipAdapter createNewAdapter() {
        return new DraggableClipAdapter(new AssetGroup());
    }

    public class DraggableClipAdapter extends Timeline.DraggableClipAdapter {
        protected AssetGroup groups;

        public DraggableClipAdapter(AssetGroup assetGroup) {
            super();
            updateData(assetGroup, 0);
            setHasStableIds(true);
        }

        private Timeline.ClipAssetWrapper getFirstClip(int i) {
            return this.groups.get(i).getClipAssets().get(0);
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void updateData(AssetGroup assetGroup, int i) {
            this.groups = assetGroup;
            this.activeClipIndex = i;
            scrollToActiveClip();
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void updateDuration(long j) {
            this.totalDuration = j;
            if (this.groups != null && this.groups.size() > 0) {
                notifyItemChanged(0);
            }
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, com.adobe.premiereclip.util.Utilities.ThumbnailLoadListener
        public int getClipPosition(String str) {
            for (int i = 0; i < this.groups.size(); i++) {
                ArrayList<Timeline.ClipAssetWrapper> clipAssets = this.groups.get(i).getClipAssets();
                for (int i2 = 0; i2 < clipAssets.size(); i2++) {
                    String cacheKey = clipAssets.get(i2).getCacheKey();
                    if (str != null && cacheKey != null && str.equals(cacheKey)) {
                        return i + 1;
                    }
                }
            }
            return -1;
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, android.support.v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (i == 0) {
                return 0L;
            }
            return this.groups.get(i - 1).getClipAssets().get(0).getId();
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        protected void updateClipView(Timeline.DraggableClipAdapter.ViewHolder viewHolder, int i) {
            if (i > 0 && i <= this.groups.size()) {
                Timeline.ClipAssetWrapper firstClip = getFirstClip(i - 1);
                String str = firstClip.getClipAsset().filePath;
                viewHolder.key = firstClip.clipId;
                if (firstClip.isAvailable()) {
                    Utilities.resetViewIfBitmapRecycled(viewHolder.mClipThumb);
                    ThumbnailHelper.load(firstClip.getType(), firstClip.getCacheKey(), str, 600L, viewHolder.getImageView(), AutomaticTimeline.this.timelineThumbSize, AutomaticTimeline.this.timelineThumbSize, this);
                    viewHolder.errorIcon.setVisibility(8);
                    if (firstClip.isStoryCard()) {
                        viewHolder.mClipTime.setVisibility(8);
                        viewHolder.mStorycardCam.setVisibility(0);
                    } else {
                        viewHolder.mClipTime.setVisibility(0);
                        viewHolder.mStorycardCam.setVisibility(8);
                        if (firstClip.getType() == Clip.CLIP_TYPE.VIDEO) {
                            viewHolder.videoClipIcon.setVisibility(0);
                        } else {
                            viewHolder.videoClipIcon.setVisibility(8);
                        }
                    }
                } else {
                    viewHolder.mClipTime.setVisibility(8);
                    viewHolder.videoClipIcon.setVisibility(8);
                    viewHolder.mClipThumb.setImageDrawable(AutomaticTimeline.this.activity.getResources().getDrawable(R.drawable.gra_dangerstripes_highlight));
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

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.groups.size() == 0) {
                return 0;
            }
            return this.groups.size() + 1;
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void onClickClip(int i) {
            int i2 = this.activeClipIndex;
            this.activeClipIndex = i - 1;
            if (i2 != this.activeClipIndex) {
                Log.d("Timeline", "clicked " + this.activeClipIndex);
                AutomaticTimeline.this.timelineListener.onClipSelected(this.activeClipIndex);
                notifyItemWithoutRecyclingViewHolder(this.activeClipIndex + 1);
                notifyItemWithoutRecyclingViewHolder(i2 + 1);
            }
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, com.e.a.a.a.b.e
        public boolean onCheckCanStartDrag(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3) {
            if (i == 0) {
                return false;
            }
            int i4 = i - 1;
            if (this.activeClipIndex != i4) {
                this.activeClipIndex = i4;
                AutomaticTimeline.this.timelineListener.onClipSelected(i4);
            }
            return true;
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, com.e.a.a.a.b.e
        public j onGetItemDraggableRange(RecyclerView.ViewHolder viewHolder, int i) {
            if (this.groups.size() == 0) {
                return null;
            }
            return new j(1, this.groups.size());
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter, com.e.a.a.a.b.e
        public void onMoveItem(int i, int i2) {
            Log.d("DraggableClipAdapter", "drag onMoveItem(fromPosition = " + i + ", toPosition = " + i2 + ")");
            if (i != i2) {
                int i3 = i - 1;
                int i4 = i2 - 1;
                this.groups.add(i4, this.groups.remove(i3));
                AutomaticTimeline.this.timelineListener.onClipMoved(i3, i4);
                String strOnClipChanged = AutomaticTimeline.this.timelineListener.onClipChanged(i3);
                String strOnClipChanged2 = AutomaticTimeline.this.timelineListener.onClipChanged(i4);
                AutomaticTimeline.this.updateProjectPoster(strOnClipChanged);
                AutomaticTimeline.this.updateProjectPoster(strOnClipChanged2);
                this.activeClipIndex = i4;
                notifyItemMoved(i3 + 1, i4 + 1);
            }
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void addClip(Timeline.ClipAssetWrapper clipAssetWrapper, int i) {
            GroupAssetWrapper groupAssetWrapper = AutomaticTimeline.this.new GroupAssetWrapper();
            groupAssetWrapper.addClipAsset(clipAssetWrapper);
            this.groups.add(i, groupAssetWrapper);
            this.activeClipIndex = i;
            notifyItemInserted(i + 1);
            notifyItemWithoutRecyclingViewHolder(i);
            scrollToActiveClip();
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public boolean replaceClip(Timeline.ClipAssetWrapper clipAssetWrapper, int i) {
            if (!getFirstClip(i).isAvailable() && !clipAssetWrapper.isAvailable()) {
                return false;
            }
            GroupAssetWrapper groupAssetWrapper = AutomaticTimeline.this.new GroupAssetWrapper();
            groupAssetWrapper.addClipAsset(clipAssetWrapper);
            this.groups.remove(i);
            this.groups.add(i, groupAssetWrapper);
            notifyItemWithoutRecyclingViewHolder(i + 1);
            return true;
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void removeClipFromView(int i) {
            if (this.groups.size() > i) {
                this.groups.remove(i);
                if (this.groups.size() == 0) {
                    notifyItemRangeRemoved(0, 2);
                } else {
                    notifyItemRemoved(i + 1);
                }
            }
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void setActiveClipIndex(int i, boolean z) {
            Log.d("DraggableClipAdapter", "setting active clip index " + i);
            if (i < this.groups.size()) {
                if (z || i != this.activeClipIndex) {
                    int i2 = this.activeClipIndex;
                    this.activeClipIndex = i;
                    notifyItemWithoutRecyclingViewHolder(i2 + 1);
                    scrollToActiveClip();
                }
            }
        }

        @Override // com.adobe.premiereclip.editor.Timeline.DraggableClipAdapter
        public void scrollToActiveClip() {
            AutomaticTimeline.this.mRecyclerView.post(new Runnable() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticTimeline.DraggableClipAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AutomaticTimeline.this.mRecyclerView != null && DraggableClipAdapter.this.activeClipIndex >= 0 && DraggableClipAdapter.this.activeClipIndex < DraggableClipAdapter.this.groups.size()) {
                        AutomaticTimeline.this.mRecyclerView.smoothScrollToPosition(DraggableClipAdapter.this.activeClipIndex + 1);
                        DraggableClipAdapter.this.notifyItemWithoutRecyclingViewHolder(DraggableClipAdapter.this.activeClipIndex + 1);
                    }
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.editor.Timeline
    public void refreshClipsTime(ArrayList<Clip> arrayList) {
    }

    public boolean isFirstClipDirty() {
        return this.firstClipDirty;
    }

    public void initTimeline(ArrayList<Clip> arrayList) {
        this.currentClipIndex = arrayList.size() == 0 ? -1 : 0;
        setClips(arrayList, this.currentClipIndex);
        refreshClipsTime(arrayList);
    }

    public int getCurrentClipIndex() {
        return this.currentClipIndex;
    }

    public void saveCurrentClipIndex(int i) {
        this.currentClipIndex = i;
    }
}
