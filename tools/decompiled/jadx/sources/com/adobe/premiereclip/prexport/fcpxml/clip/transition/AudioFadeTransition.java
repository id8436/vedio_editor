package com.adobe.premiereclip.prexport.fcpxml.clip.transition;

import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class AudioFadeTransition extends Transition {
    public AudioFadeTransition(long j, Utils.TransitionAlignment transitionAlignment, long j2) {
        super(j, transitionAlignment, j2, "Cross Fade (+0dB)", "KGAudioTransCrossFade0dB", "", Utils.MediaType.audio);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition
    public void adjustHeadClip(TrackClip trackClip) {
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition
    public void adjustTailClip(TrackClip trackClip) {
    }
}
