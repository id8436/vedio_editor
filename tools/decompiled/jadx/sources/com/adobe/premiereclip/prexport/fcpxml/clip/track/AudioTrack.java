package com.adobe.premiereclip.prexport.fcpxml.clip.track;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;

/* JADX INFO: loaded from: classes2.dex */
public class AudioTrack extends Track {
    private int mNumChannels;

    public AudioTrack(int i) {
        this.mNumChannels = i;
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.track.Track, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        super.toXmlElement(xmlElement);
        XmlElement lastChild = xmlElement.getLastChild("track");
        lastChild.setAttribute("PannerCurrentValue", "0.5");
        lastChild.setAttribute("PannerStartKeyframe", "-91445760000000000,0.5,0,0,0,0,0,0");
        lastChild.setAttribute("PannerName", "Balance");
        lastChild.setAttribute("currentExplodedTrackIndex", "0");
        lastChild.setAttribute("totalExplodedTrackCount", "1");
        lastChild.setAttribute("premiereTrackType", this.mNumChannels == 1 ? "Mono" : "Stereo");
        lastChild.addChild(new XmlElement("outputchannelindex", "1"));
    }
}
