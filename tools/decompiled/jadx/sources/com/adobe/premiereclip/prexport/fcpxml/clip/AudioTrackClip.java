package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class AudioTrackClip extends TrackClip {
    public AudioTrackClip(String str, MasterClip masterClip, long j, long j2) {
        super(Utils.MediaType.audio, str, masterClip, j, j2);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip, com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        super.toXmlElement(xmlElement);
        XmlElement lastChild = xmlElement.getLastChild("clipitem");
        lastChild.setAttribute("premiereChannelType", this.mMasterClip.getNumAudioChannels() == 1 ? "mono" : "stereo");
        XmlElement xmlElement2 = new XmlElement("sourcetrack");
        xmlElement2.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[Utils.MediaType.audio.getNumVal()]));
        xmlElement2.addChild(new XmlElement("trackindex", String.valueOf(this.mTrackIndex)));
        lastChild.addChild(xmlElement2);
    }
}
