package com.adobe.premiereclip.mediabrowser;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Bucket {
    private boolean cancel;
    private String mId;
    private ArrayList<MediaModel> mItems;
    private String mName;
    private long mStartTime;
    private State mState;
    private ArrayList<ThumbnailData> mThumbnailItems;

    public enum State {
        EXPANDED,
        COLLAPSED,
        LOADING
    }

    public Bucket(String str, String str2) {
        this.mId = str;
        this.mName = str2 == null ? "" : str2;
        this.mItems = new ArrayList<>();
        this.mThumbnailItems = new ArrayList<>();
        this.mState = State.COLLAPSED;
        this.mStartTime = -1L;
        this.cancel = false;
    }

    public State getState() {
        return this.mState;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public long getStartTime() {
        return this.mStartTime;
    }

    public void setStartTime(long j) {
        this.mStartTime = j;
    }

    public ArrayList<MediaModel> getItems() {
        return this.mItems;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void addItem(MediaModel mediaModel) {
        this.mItems.add(mediaModel);
        this.mThumbnailItems.add(new ThumbnailData(mediaModel));
    }

    public String getId() {
        return this.mId;
    }

    public ArrayList<ThumbnailData> getThumbnailItems() {
        return this.mThumbnailItems;
    }

    public void setState(State state) {
        this.mState = state;
    }

    public boolean isSelected() {
        Iterator<MediaModel> it = getItems().iterator();
        while (it.hasNext()) {
            if (!it.next().isMediaSelected()) {
                return false;
            }
        }
        return true;
    }

    public boolean isCancel() {
        return this.cancel;
    }

    public void setCancel(boolean z) {
        this.cancel = z;
    }

    public int hashCode() {
        return getId().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Bucket) {
            return getId().equals(((Bucket) obj).getId());
        }
        return false;
    }
}
