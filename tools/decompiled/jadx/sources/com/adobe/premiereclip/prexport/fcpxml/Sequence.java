package com.adobe.premiereclip.prexport.fcpxml;

import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.AudioTrack;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.VideoTrack;
import com.adobe.premiereclip.prexport.fcpxml.filter.Marker;
import com.adobe.premiereclip.prexport.fcpxml.utils.AudioSettings;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.adobe.premiereclip.prexport.fcpxml.utils.VideoSettings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sequence extends Xmlable {
    private String mName;
    private String mUuid;
    private long mDuration = 0;
    private Utils.VideoTimebase mVideoFrameRate = Utils.VideoTimebase.P_30;
    private boolean mNtsc = false;
    private VideoSettings mVideoTrackSettings = new VideoSettings();
    private AudioSettings mAudioTrackSettings = new AudioSettings();
    private ArrayList<VideoTrack> mVideoTracks = new ArrayList<>();
    private ArrayList<AudioTrack> mAudioTracks = new ArrayList<>();
    private List<Marker> mMarkers = new ArrayList();

    public Sequence(String str) {
        this.mName = str;
    }

    private void addRateXmlElement(XmlElement xmlElement, Utils.VideoTimebase videoTimebase, boolean z) {
        XmlElement xmlElement2 = new XmlElement("rate");
        xmlElement2.addChild(new XmlElement("timebase", String.valueOf(videoTimebase.getNumVal())));
        xmlElement2.addChild(new XmlElement("ntsc", XmlElement.convertBooltoString(z)));
        xmlElement.addChild(xmlElement2);
    }

    private void addVideoFormatXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("format");
        XmlElement xmlElement3 = new XmlElement("samplecharacteristics");
        addRateXmlElement(xmlElement3, this.mVideoTrackSettings.timebase, this.mVideoTrackSettings.ntsc);
        xmlElement3.addChild(new XmlElement("width", String.valueOf(this.mVideoTrackSettings.width)));
        xmlElement3.addChild(new XmlElement("height", String.valueOf(this.mVideoTrackSettings.height)));
        xmlElement3.addChild(new XmlElement("anamorphic", XmlElement.convertBooltoString(this.mVideoTrackSettings.anamorphic)));
        xmlElement3.addChild(new XmlElement("pixelaspectratio", Utils.VideoAspectRatioStrings[0]));
        xmlElement3.addChild(new XmlElement("fielddominance", Utils.VideoFieldDominanceStrings[this.mVideoTrackSettings.fieldDominance.getNumVal()]));
        xmlElement3.addChild(new XmlElement("colordepth", "24"));
        xmlElement2.addChild(xmlElement3);
        xmlElement.addChild(xmlElement2);
    }

    private void addAudioFormatXmlElement(XmlElement xmlElement) {
        xmlElement.addChild(new XmlElement("numOutputChannels", String.valueOf(this.mAudioTrackSettings.numChannels)));
        XmlElement xmlElement2 = new XmlElement("format");
        XmlElement xmlElement3 = new XmlElement("samplecharacteristics");
        xmlElement3.addChild(new XmlElement("depth", String.valueOf(this.mAudioTrackSettings.sampleDepth)));
        xmlElement3.addChild(new XmlElement("samplerate", String.valueOf(this.mAudioTrackSettings.sampleRate)));
        xmlElement2.addChild(xmlElement3);
        xmlElement.addChild(xmlElement2);
        for (int i = 1; i <= this.mAudioTracks.size(); i++) {
            XmlElement xmlElement4 = new XmlElement(AdobeImageOperation.OUTPUTS);
            XmlElement xmlElement5 = new XmlElement("group");
            xmlElement5.addChild(new XmlElement("index", String.valueOf(i)));
            xmlElement5.addChild(new XmlElement("numchannels", String.valueOf(this.mAudioTrackSettings.numChannels)));
            xmlElement5.addChild(new XmlElement("downmix", "0"));
            XmlElement xmlElement6 = new XmlElement("channel");
            xmlElement6.addChild(new XmlElement("index", String.valueOf(i)));
            xmlElement5.addChild(xmlElement6);
            xmlElement4.addChild(xmlElement5);
            xmlElement.addChild(xmlElement4);
        }
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("sequence");
        xmlElement2.setAttribute("id", this.mName);
        xmlElement2.setAttribute("MZ.Sequence.EditingModeGUID", "795454d9-d3c2-429d-9474-923ab13b7018");
        xmlElement2.addChild(new XmlElement("uuid", this.mUuid));
        xmlElement2.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
        addRateXmlElement(xmlElement2, this.mVideoFrameRate, this.mNtsc);
        xmlElement2.addChild(new XmlElement("name", this.mName));
        XmlElement xmlElement3 = new XmlElement("media");
        XmlElement xmlElement4 = new XmlElement("video");
        addVideoFormatXmlElement(xmlElement4);
        Iterator<VideoTrack> it = this.mVideoTracks.iterator();
        while (it.hasNext()) {
            it.next().toXmlElement(xmlElement4);
        }
        xmlElement3.addChild(xmlElement4);
        XmlElement xmlElement5 = new XmlElement("audio");
        addAudioFormatXmlElement(xmlElement5);
        Iterator<AudioTrack> it2 = this.mAudioTracks.iterator();
        while (it2.hasNext()) {
            it2.next().toXmlElement(xmlElement5);
        }
        xmlElement3.addChild(xmlElement5);
        xmlElement2.addChild(xmlElement3);
        if (this.mMarkers.size() > 0) {
            Iterator<Marker> it3 = this.mMarkers.iterator();
            while (it3.hasNext()) {
                it3.next().toXmlElement(xmlElement2);
            }
        }
        xmlElement.addChild(xmlElement2);
    }

    public void addVideoTrack(VideoTrack videoTrack) {
        videoTrack.setTrackIndex(this.mVideoTracks.size() + 1);
        this.mVideoTracks.add(videoTrack);
    }

    public int numVideoTracks() {
        return this.mVideoTracks.size();
    }

    public ArrayList<VideoTrack> getVideoTracks() {
        return this.mVideoTracks;
    }

    public void addAudioTrack(AudioTrack audioTrack) {
        audioTrack.setTrackIndex(this.mAudioTracks.size() + 1);
        this.mAudioTracks.add(audioTrack);
    }

    public int numAudioTracks() {
        return this.mAudioTracks.size();
    }

    public ArrayList<AudioTrack> getAudioTracks() {
        return this.mAudioTracks;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public int getNumChannels() {
        return this.mAudioTrackSettings.numChannels;
    }

    public Marker getMarkerAt(int i) {
        return this.mMarkers.get(i);
    }

    public void addMarker(Marker marker) {
        this.mMarkers.add(marker);
    }

    public int getNumMarkers() {
        return this.mMarkers.size();
    }
}
