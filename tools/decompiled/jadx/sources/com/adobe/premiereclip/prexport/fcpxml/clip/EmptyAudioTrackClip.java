package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;

/* JADX INFO: loaded from: classes2.dex */
public class EmptyAudioTrackClip extends AudioTrackClip {
    public EmptyAudioTrackClip(long j) {
        super("", null, 0L, j);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.AudioTrackClip, com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
    }
}
