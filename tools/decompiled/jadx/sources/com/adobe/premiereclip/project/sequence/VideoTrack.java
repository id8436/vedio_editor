package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.project.sequence.Clip;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class VideoTrack extends Track {
    private int height;
    private BaseLook look;
    private int width;
    private float xOffset;
    private float yOffset;
    private boolean isOverlay = false;
    private boolean transitionApplied = false;
    private boolean fadeInApplied = false;
    private boolean fadeOutApplied = false;

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    protected void setWidth(int i) {
        this.width = i;
        Iterator<Clip> it = this.clips.iterator();
        while (it.hasNext()) {
            it.next().setMaxWidth(i);
        }
    }

    protected void setHeight(int i) {
        this.height = i;
        Iterator<Clip> it = this.clips.iterator();
        while (it.hasNext()) {
            it.next().setMaxHeight(i);
        }
    }

    public void setOverlay() {
        this.isOverlay = true;
    }

    public boolean getOverlay() {
        return this.isOverlay;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long getTrackDurationUS() {
        long durationUsWithSpeed = 0;
        ArrayList<Clip> clips = getClips();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < clips.size()) {
                durationUsWithSpeed += clips.get(i2).getDurationUsWithSpeed() - transitionLengthUs(i2, i2 - 1);
                i = i2 + 1;
            } else {
                return durationUsWithSpeed;
            }
        }
    }

    private void setClipSpecialProperties(Clip clip) {
        clip.setLook(this.look);
        clip.setMaxWidth(this.width);
        clip.setMaxHeight(this.height);
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public void addClip(Clip clip) {
        setClipSpecialProperties(clip);
        super.addClip(clip);
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public void addClipAtIndex(Clip clip, int i) {
        setClipSpecialProperties(clip);
        super.addClipAtIndex(clip, i);
    }

    public void setLook(BaseLook baseLook) {
        this.look = baseLook;
        Iterator<Clip> it = this.clips.iterator();
        while (it.hasNext()) {
            it.next().setLook(this.look);
        }
    }

    public BaseLook getLook() {
        return this.look;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public ArrayList<Playable> getClipsAtTrackTimeUs(long j) {
        long durationUsWithSpeed = 0;
        ArrayList<Playable> arrayList = new ArrayList<>();
        ArrayList<Clip> clips = getClips();
        if (!this.transitionApplied) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= clips.size()) {
                    break;
                }
                Clip clip = clips.get(i2);
                if (clip.getDurationUsWithSpeed() + durationUsWithSpeed > j) {
                    arrayList.add(new Playable(i2, (j - durationUsWithSpeed) + clip.getStartTimeUsWithSpeed()));
                    break;
                }
                durationUsWithSpeed += clip.getDurationUsWithSpeed();
                i = i2 + 1;
            }
        } else {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= clips.size()) {
                    break;
                }
                Clip clip2 = clips.get(i4);
                long jTransitionLengthUs = transitionLengthUs(i4, i4 - 1);
                if (j >= durationUsWithSpeed && j < (clip2.getDurationUsWithSpeed() + durationUsWithSpeed) - jTransitionLengthUs) {
                    arrayList.add(new Playable(i4, (j - durationUsWithSpeed) + jTransitionLengthUs + clip2.getStartTimeUsWithSpeed()));
                    long durationUsWithSpeed2 = durationUsWithSpeed + (clip2.getDurationUsWithSpeed() - jTransitionLengthUs);
                    long jTransitionLengthUs2 = transitionLengthUs(i4, i4 + 1);
                    if (j >= durationUsWithSpeed2 - jTransitionLengthUs2 && i4 < clips.size() - 1) {
                        arrayList.add(new Playable(i4 + 1, clips.get(i4 + 1).getStartTimeUsWithSpeed() + (j - (durationUsWithSpeed2 - jTransitionLengthUs2))));
                    }
                } else {
                    durationUsWithSpeed += clip2.getDurationUsWithSpeed() - jTransitionLengthUs;
                    i3 = i4 + 1;
                }
            }
        }
        if (arrayList.size() == 2 && clips.get(arrayList.get(1).clipIndex).disabledTransition()) {
            arrayList.remove(0);
        }
        return arrayList;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long trackStartTimeOfClip(int i) {
        if (i < 0 || i >= getClips().size()) {
            return 0L;
        }
        return trackTimeFromClipTime(i, getClips().get(i).getStartTimeUsWithSpeed());
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long trackTimeFromClipTime(int i, long j) {
        if (i >= getClips().size()) {
            return getTrackDurationUS();
        }
        if (i < 0) {
            return 0L;
        }
        long durationUsWithSpeed = 0;
        for (int i2 = 0; i2 < i && i2 < getClips().size(); i2++) {
            durationUsWithSpeed += getClips().get(i2).getDurationUsWithSpeed() - transitionLengthUs(i2, i2 - 1);
        }
        return ((j - getClips().get(i).getStartTimeUsWithSpeed()) - transitionLengthUs(i, i - 1)) + durationUsWithSpeed;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long clipTimeFromTrackTime(int i, long j) {
        return j - trackStartTimeOfClip(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.adobe.premiereclip.project.sequence.Transition getTransition(long r14) {
        /*
            r13 = this;
            r10 = 0
            r8 = 1
            r2 = 0
            boolean r0 = r13.isOverlay
            if (r0 == 0) goto L32
            long r0 = r13.getOverlayEmptyClipOffset()
        Lc:
            boolean r3 = r13.fadeInApplied
            if (r3 == 0) goto L37
            int r3 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r3 < 0) goto L37
            long r4 = r13.fadeInLengthUs()
            int r3 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r3 >= 0) goto L37
            com.adobe.premiereclip.project.sequence.Transition r0 = new com.adobe.premiereclip.project.sequence.Transition
            com.adobe.premiereclip.project.sequence.Transition$TransitionType r1 = com.adobe.premiereclip.project.sequence.Transition.TransitionType.FADE_IN
            float r2 = r13.getFadeInPercent(r14)
            r0.<init>(r1, r2)
        L27:
            if (r0 != 0) goto L31
            com.adobe.premiereclip.project.sequence.Transition r0 = new com.adobe.premiereclip.project.sequence.Transition
            com.adobe.premiereclip.project.sequence.Transition$TransitionType r1 = com.adobe.premiereclip.project.sequence.Transition.TransitionType.NULL
            r2 = 0
            r0.<init>(r1, r2)
        L31:
            return r0
        L32:
            long r0 = r13.getBumperClipOffset()
            goto Lc
        L37:
            boolean r3 = r13.fadeOutApplied
            if (r3 == 0) goto L5f
            long r4 = r13.getTrackDurationUS()
            long r4 = r4 - r0
            int r3 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r3 >= 0) goto L5f
            long r4 = r13.getTrackDurationUS()
            long r4 = r4 - r0
            long r6 = r13.fadeOutLengthUs()
            long r4 = r4 - r6
            int r3 = (r14 > r4 ? 1 : (r14 == r4 ? 0 : -1))
            if (r3 < 0) goto L5f
            com.adobe.premiereclip.project.sequence.Transition r2 = new com.adobe.premiereclip.project.sequence.Transition
            com.adobe.premiereclip.project.sequence.Transition$TransitionType r3 = com.adobe.premiereclip.project.sequence.Transition.TransitionType.FADE_OUT
            float r0 = r13.getFadeOutPercent(r14, r0)
            r2.<init>(r3, r0)
            r0 = r2
            goto L27
        L5f:
            boolean r0 = r13.transitionApplied
            if (r0 == 0) goto Lb4
            java.util.ArrayList r1 = r13.getClipsAtTrackTimeUs(r14)
            int r0 = r1.size()
            r3 = 2
            if (r0 != r3) goto Lb4
            r0 = 0
            java.lang.Object r0 = r1.get(r0)
            com.adobe.premiereclip.project.sequence.Playable r0 = (com.adobe.premiereclip.project.sequence.Playable) r0
            int r3 = r0.clipIndex
            java.lang.Object r0 = r1.get(r8)
            com.adobe.premiereclip.project.sequence.Playable r0 = (com.adobe.premiereclip.project.sequence.Playable) r0
            int r0 = r0.clipIndex
            long r4 = r13.transitionLengthUs(r3, r0)
            int r0 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r0 <= 0) goto Lb4
            java.util.ArrayList r2 = r13.getClips()
            java.lang.Object r0 = r1.get(r8)
            com.adobe.premiereclip.project.sequence.Playable r0 = (com.adobe.premiereclip.project.sequence.Playable) r0
            int r0 = r0.clipIndex
            java.lang.Object r0 = r2.get(r0)
            com.adobe.premiereclip.project.sequence.Clip r0 = (com.adobe.premiereclip.project.sequence.Clip) r0
            java.lang.Object r1 = r1.get(r8)
            com.adobe.premiereclip.project.sequence.Playable r1 = (com.adobe.premiereclip.project.sequence.Playable) r1
            long r2 = r1.clipOffsetUs
            long r0 = r0.getStartTimeUsWithSpeed()
            long r0 = r2 - r0
            float r0 = (float) r0
            float r1 = (float) r4
            float r1 = r0 / r1
            com.adobe.premiereclip.project.sequence.Transition r0 = new com.adobe.premiereclip.project.sequence.Transition
            com.adobe.premiereclip.project.sequence.Transition$TransitionType r2 = com.adobe.premiereclip.project.sequence.Transition.TransitionType.CROSS_FADE
            r0.<init>(r2, r1)
            goto L27
        Lb4:
            r0 = r2
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.project.sequence.VideoTrack.getTransition(long):com.adobe.premiereclip.project.sequence.Transition");
    }

    public float getFadeInPercent(long j) {
        if (getClips().size() > 0) {
            long jFadeInLengthUs = fadeInLengthUs();
            if (jFadeInLengthUs > 0) {
                float f2 = 1.0f - (j / jFadeInLengthUs);
                if (f2 < 0.0f) {
                    return 0.0f;
                }
                return f2;
            }
        }
        return 1.0f;
    }

    private long getBumperClipOffset() {
        ArrayList<Clip> clips = getClips();
        int size = clips.size() - 1;
        if (size < 0 || !clips.get(size).isBumper()) {
            return 0L;
        }
        return clips.get(size).getDurationUsWithSpeed() - transitionLengthUs(size, size - 1);
    }

    private long getOverlayEmptyClipOffset() {
        ArrayList<Clip> clips = getClips();
        int size = clips.size() - 1;
        if (size < 0 || clips.get(size).getClipType() != Clip.CLIP_TYPE.EMPTY_VIDEO) {
            return 0L;
        }
        return clips.get(size).getDurationUsWithSpeed() - transitionLengthUs(size, size - 1);
    }

    public float getFadeOutPercent(long j, long j2) {
        if (getClips().size() > 0) {
            long jFadeOutLengthUs = fadeOutLengthUs();
            if (jFadeOutLengthUs > 0) {
                float trackDurationUS = (j - ((getTrackDurationUS() - j2) - jFadeOutLengthUs)) / jFadeOutLengthUs;
                if (trackDurationUS > 1.0f) {
                    return 1.0f;
                }
                return trackDurationUS;
            }
        }
        return 0.0f;
    }

    public boolean transitionAppliedOnSequence() {
        return this.transitionApplied;
    }

    public boolean fadeInApplied() {
        return this.fadeInApplied;
    }

    public boolean fadeOutApplied() {
        return this.fadeOutApplied;
    }

    private boolean toggleGlobalTransition() {
        this.transitionApplied = !this.transitionApplied;
        return this.transitionApplied;
    }

    private boolean toggleFadeIn() {
        this.fadeInApplied = !this.fadeInApplied;
        return this.fadeInApplied;
    }

    private boolean toggleFadeOut() {
        this.fadeOutApplied = !this.fadeOutApplied;
        return this.fadeOutApplied;
    }

    public void setGlobalTransition(boolean z) {
        if (z != this.transitionApplied) {
            toggleGlobalTransition();
        }
    }

    public void setFadeIn(boolean z) {
        if (z != this.fadeInApplied) {
            toggleFadeIn();
        }
    }

    public void setFadeOut(boolean z) {
        if (z != this.fadeOutApplied) {
            toggleFadeOut();
        }
    }

    protected long transitionLengthUs(int i, int i2) {
        if (!this.transitionApplied) {
            return 0L;
        }
        long jMin = Math.min((i < 0 || i >= getClips().size() || getClips().get(i).isBumper()) ? 0L : getClips().get(i).getDurationUsWithSpeed(), (i2 < 0 || i2 >= getClips().size() || getClips().get(i2).isBumper()) ? 0L : getClips().get(i2).getDurationUsWithSpeed());
        if (jMin > 2000000) {
            return 1000000L;
        }
        return jMin / 2;
    }

    protected long fadeInLengthUs() {
        if (this.fadeInApplied) {
            Clip clip = getClips().get(0);
            if (clip.getDurationUsWithSpeed() >= 2000000) {
                return 1000000L;
            }
            return clip.getDurationUsWithSpeed() / 3;
        }
        return 0L;
    }

    protected long fadeOutLengthUs() {
        if (this.fadeOutApplied) {
            ArrayList<Clip> clips = getClips();
            int size = clips.size() - 1;
            Clip clip = clips.get((size < 0 || !clips.get(size).isBumper()) ? size : size - 1);
            if (clip.getDurationUsWithSpeed() >= 2000000) {
                return 1000000L;
            }
            return clip.getDurationUsWithSpeed() / 3;
        }
        return 0L;
    }

    public int getIndexForGroupId(String str) {
        ArrayList<Clip> clips = getClips();
        for (int i = 0; i < clips.size(); i++) {
            if (str.equals(clips.get(i).getClipGroupId())) {
                return i;
            }
        }
        return 0;
    }

    public int getIndexForClip(Clip clip) {
        ArrayList<Clip> clips = getClips();
        for (int i = 0; i < clips.size(); i++) {
            if (clips.get(i) == clip) {
                return i;
            }
        }
        return 0;
    }

    public ArrayList<Clip> getClipGroup(String str) {
        ArrayList<Clip> clips = getClips();
        ArrayList<Clip> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < clips.size()) {
                Clip clip = clips.get(i2);
                if (str.equals(clip.getClipGroupId())) {
                    arrayList.add(clip);
                }
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public void setXYOffset(float f2, float f3) {
        this.xOffset = f2;
        this.yOffset = f3;
    }

    public float getXOffset() {
        return this.xOffset;
    }

    public float getYOffset() {
        return this.yOffset;
    }
}
