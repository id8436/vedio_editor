package com.adobe.premiereclip.project.sequence;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Track {
    protected ArrayList<Clip> clips;
    protected ArrayList<ArrayList<Clip>> groups;
    private boolean isGroupBuilt;

    public abstract long clipTimeFromTrackTime(int i, long j);

    public abstract ArrayList<Playable> getClipsAtTrackTimeUs(long j);

    public abstract long getTrackDurationUS();

    public abstract long trackStartTimeOfClip(int i);

    public abstract long trackTimeFromClipTime(int i, long j);

    public Track() {
        this.isGroupBuilt = false;
        this.clips = new ArrayList<>();
    }

    public Track(ArrayList<Clip> arrayList) {
        this.isGroupBuilt = false;
        this.clips = arrayList;
    }

    public ArrayList<Clip> getClips() {
        return this.clips;
    }

    public void buildGroups() {
        if (!this.isGroupBuilt) {
            this.groups = new ArrayList<>();
            String clipGroupId = null;
            int i = -1;
            for (Clip clip : this.clips) {
                if (clip.getClipGroupId() == null || !clip.getClipGroupId().equals(clipGroupId)) {
                    this.groups.add(new ArrayList<>());
                    clipGroupId = clip.getClipGroupId();
                    i++;
                }
                this.groups.get(i).add(clip);
            }
            this.isGroupBuilt = true;
        }
    }

    public ArrayList<ArrayList<Clip>> getGroups() {
        if (!this.isGroupBuilt) {
            buildGroups();
        }
        return this.groups;
    }

    public void invalidateGroups() {
        this.isGroupBuilt = false;
    }

    private int getGroupStart(int i) {
        if (!this.isGroupBuilt) {
            buildGroups();
        }
        int size = 0;
        for (int i2 = 0; i2 < i; i2++) {
            size += this.groups.get(i2).size();
        }
        return size;
    }

    public int getFirstClipIndexInGroup(int i) {
        return getGroupStart(i);
    }

    public int getLastClipIndexInGroup(int i) {
        if (i == -1 || this.groups == null || this.groups.size() <= i) {
            return -1;
        }
        return (this.groups.get(i).size() + getGroupStart(i)) - 1;
    }

    public void reInitClipsFromGroups() {
        ArrayList<Clip> arrayList = new ArrayList<>();
        Iterator<ArrayList<Clip>> it = this.groups.iterator();
        while (it.hasNext()) {
            Iterator<Clip> it2 = it.next().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
        this.clips = arrayList;
    }

    public void setClips(ArrayList<Clip> arrayList) {
        this.clips = arrayList;
    }

    public Clip getClipAtIndex(int i) {
        return this.clips.get(i);
    }

    public int getLastAvailClipIndex() {
        for (int size = this.clips.size() - 1; size >= 0; size--) {
            if (this.clips.get(size).isAvailable()) {
                return size;
            }
        }
        return -1;
    }

    public void addClip(Clip clip) {
        this.clips.add(clip);
    }

    public void addClipAtIndex(Clip clip, int i) {
        this.clips.add(i, clip);
    }

    public Clip removeClipAtIndex(int i) {
        if (i < 0 || i >= this.clips.size()) {
            return null;
        }
        return this.clips.remove(i);
    }

    public void removeAllClips() {
        this.clips.clear();
    }

    public int getNumClips() {
        return this.clips.size();
    }
}
