package com.adobe.premiereclip.prexport.fcpxml.clip.transition;

import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class CrossDissolveTransition extends Transition {
    public CrossDissolveTransition(long j, Utils.TransitionAlignment transitionAlignment, long j2) {
        super(j, transitionAlignment, j2, "Cross Dissolve", "Cross Dissolve", "Dissolve", Utils.MediaType.video);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition
    public void adjustHeadClip(TrackClip trackClip) {
        if (this.mTailDuration != 0) {
            trackClip.setEnd(-1L);
            trackClip.adjustOutPoint(-this.mTailDuration);
            trackClip.adjustTrackDuration(-this.mTailDuration);
            if (trackClip.numLinkedClips() > 0) {
                for (TrackClip trackClip2 : trackClip.getLinkedClips()) {
                    trackClip2.adjustOutPoint(-this.mTailDuration);
                    trackClip2.adjustEnd(-this.mTailDuration);
                    for (TrackClip nextClip = trackClip2.getNextClip(); nextClip != null; nextClip = nextClip.getNextClip()) {
                        nextClip.adjustStart(-this.mTailDuration);
                        nextClip.adjustEnd(-this.mTailDuration);
                    }
                }
            }
        }
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition
    public void adjustTailClip(TrackClip trackClip) {
        if (this.mHeadDuration != 0) {
            trackClip.setStart(-1L);
            trackClip.adjustEnd((-this.mHeadDuration) * 2);
            trackClip.adjustTrackDuration(-this.mHeadDuration);
            for (TrackClip nextClip = trackClip.getNextClip(); nextClip != null; nextClip = nextClip.getNextClip()) {
                nextClip.adjustStart(-this.mDuration);
                nextClip.adjustEnd(-this.mDuration);
            }
            if (trackClip.numLinkedClips() > 0) {
                for (TrackClip trackClip2 : trackClip.getLinkedClips()) {
                    trackClip2.adjustInPoint(this.mHeadDuration);
                    trackClip2.adjustTrackDuration(-this.mHeadDuration);
                    trackClip2.adjustEnd(-this.mHeadDuration);
                    for (TrackClip nextClip2 = trackClip2.getNextClip(); nextClip2 != null; nextClip2 = nextClip2.getNextClip()) {
                        nextClip2.adjustStart(-this.mHeadDuration);
                        nextClip2.adjustEnd(-this.mHeadDuration);
                    }
                }
            }
        }
    }
}
