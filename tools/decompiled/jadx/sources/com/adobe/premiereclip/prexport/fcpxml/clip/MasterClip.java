package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.Xmlable;
import com.adobe.premiereclip.prexport.fcpxml.utils.AudioSettings;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.adobe.premiereclip.prexport.fcpxml.utils.VideoSettings;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MasterClip extends Xmlable {
    private ArrayList<String> mAudioClipIds;
    private AudioSettings mAudioSettings;
    private long mDuration;
    private MasterClipFile mFile;
    private boolean mFullFileAdded = false;
    private boolean mHasAudio;
    private boolean mHasVideo;
    private long mInPoint;
    private String mName;
    private int mTimebase;
    private String mUuid;
    private String mVideoClipId;
    private VideoSettings mVideoSettings;
    private String mXmlId;

    public MasterClip(String str, String str2, boolean z, int i, long j, long j2) {
        this.mName = str;
        this.mFile = new MasterClipFile(str, str2);
        this.mDuration = j;
        this.mInPoint = j2;
        this.mHasVideo = z;
        this.mHasAudio = i > 0;
        this.mXmlId = "";
        this.mUuid = "";
        this.mVideoClipId = "";
        this.mTimebase = 30;
        this.mAudioClipIds = new ArrayList<>();
        if (this.mHasVideo) {
            this.mVideoSettings = new VideoSettings();
        }
        if (this.mHasAudio) {
            this.mAudioSettings = new AudioSettings();
            this.mAudioSettings.numChannels = i;
        }
    }

    public boolean hasAudio() {
        return this.mHasAudio;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public VideoSettings getVideoSettings() {
        return this.mVideoSettings;
    }

    private void addFileFullXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("file");
        xmlElement2.setAttribute("id", this.mFile.mXmlId);
        xmlElement2.addChild(new XmlElement("name", this.mFile.mName));
        xmlElement2.addChild(new XmlElement("pathurl", this.mFile.mPath));
        XmlElement xmlElement3 = new XmlElement("rate");
        xmlElement3.addChild(new XmlElement("timebase", String.valueOf(this.mTimebase)));
        xmlElement3.addChild(new XmlElement("ntsc", XmlElement.convertBooltoString(false)));
        xmlElement2.addChild(xmlElement3);
        xmlElement2.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
        XmlElement xmlElement4 = new XmlElement("timecode");
        xmlElement4.addChild(xmlElement3);
        xmlElement4.addChild(new XmlElement("string", "00:00:00:00"));
        xmlElement4.addChild(new XmlElement("frame", "0"));
        xmlElement4.addChild(new XmlElement("displayformat", "NDF"));
        xmlElement2.addChild(xmlElement4);
        XmlElement xmlElement5 = new XmlElement("media");
        if (this.mHasVideo) {
            XmlElement xmlElement6 = new XmlElement("video");
            xmlElement6.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
            XmlElement xmlElement7 = new XmlElement("samplecharacteristics");
            xmlElement7.addChild(xmlElement3);
            xmlElement7.addChild(new XmlElement("width", String.valueOf(this.mVideoSettings.width)));
            xmlElement7.addChild(new XmlElement("height", String.valueOf(this.mVideoSettings.height)));
            xmlElement7.addChild(new XmlElement("anamorphic", XmlElement.convertBooltoString(this.mVideoSettings.anamorphic)));
            xmlElement7.addChild(new XmlElement("pixelaspectratio", Utils.VideoAspectRatioStrings[this.mVideoSettings.aspectRatio.getNumVal()]));
            xmlElement7.addChild(new XmlElement("fielddominance", Utils.VideoFieldDominanceStrings[this.mVideoSettings.fieldDominance.getNumVal()]));
            xmlElement6.addChild(xmlElement7);
            xmlElement5.addChild(xmlElement6);
        }
        if (this.mHasAudio) {
            XmlElement xmlElement8 = new XmlElement("audio");
            XmlElement xmlElement9 = new XmlElement("samplecharacteristics");
            xmlElement9.addChild(new XmlElement("depth", String.valueOf(this.mAudioSettings.sampleDepth)));
            xmlElement9.addChild(new XmlElement("samplerate", String.valueOf(this.mAudioSettings.sampleRate)));
            xmlElement8.addChild(xmlElement9);
            xmlElement8.addChild(new XmlElement("channelcount", String.valueOf(this.mAudioSettings.numChannels)));
            if (this.mHasVideo) {
                xmlElement8.addChild(new XmlElement(TtmlNode.TAG_LAYOUT, this.mAudioSettings.numChannels == 1 ? "mono" : "stereo"));
                XmlElement xmlElement10 = new XmlElement("audiochannel");
                xmlElement10.addChild(new XmlElement("sourcechannel", "1"));
                xmlElement10.addChild(new XmlElement("channellabel", "discrete"));
                xmlElement8.addChild(xmlElement10);
            }
            xmlElement5.addChild(xmlElement8);
        }
        xmlElement2.addChild(xmlElement5);
        xmlElement.addChild(xmlElement2);
    }

    private void addLinksXmlElements(XmlElement xmlElement) {
        if (this.mHasVideo) {
            XmlElement xmlElement2 = new XmlElement("link");
            xmlElement2.addChild(new XmlElement("linkclipref", this.mVideoClipId));
            xmlElement2.addChild(new XmlElement("mediatype", "video"));
            xmlElement2.addChild(new XmlElement("trackindex", "1"));
            xmlElement2.addChild(new XmlElement("clipindex", "1"));
            xmlElement.addChild(xmlElement2);
        }
        if (this.mHasAudio) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAudioSettings.numChannels) {
                    XmlElement xmlElement3 = new XmlElement("link");
                    xmlElement3.addChild(new XmlElement("linkclipref", this.mAudioClipIds.get(i2)));
                    xmlElement3.addChild(new XmlElement("mediatype", "audio"));
                    xmlElement3.addChild(new XmlElement("trackindex", String.valueOf(i2 + 1)));
                    xmlElement3.addChild(new XmlElement("clipindex", "1"));
                    xmlElement.addChild(xmlElement3);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public String getName() {
        return this.mName;
    }

    public void setUuid(String str) {
        this.mUuid = str;
    }

    public void setVideoclipId(String str) {
        this.mVideoClipId = str;
    }

    public void setAudioclipIds(ArrayList<String> arrayList) {
        this.mAudioClipIds = arrayList;
    }

    public void setFileId(String str) {
        this.mFile.mXmlId = str;
    }

    public void setXmlId(String str) {
        this.mXmlId = str;
    }

    public String getXmlId() {
        return this.mXmlId;
    }

    public int getNumAudioChannels() {
        if (this.mHasAudio) {
            return this.mAudioSettings.numChannels;
        }
        return 0;
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        boolean z;
        XmlElement xmlElement2 = new XmlElement("clip");
        xmlElement2.setAttribute("id", this.mXmlId);
        xmlElement2.setAttribute("explodedTracks", "true");
        xmlElement2.setAttribute("frameBlend", XmlElement.convertBooltoString(false));
        xmlElement2.addChild(new XmlElement("uuid", this.mUuid));
        xmlElement2.addChild(new XmlElement("masterclipid", this.mXmlId));
        xmlElement2.addChild(new XmlElement("ismasterclip", XmlElement.convertBooltoString(true)));
        xmlElement2.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
        if (this.mHasVideo) {
            XmlElement xmlElement3 = new XmlElement("rate");
            xmlElement3.addChild(new XmlElement("timebase", String.valueOf(this.mVideoSettings.timebase.getNumVal())));
            xmlElement3.addChild(new XmlElement("ntsc", XmlElement.convertBooltoString(this.mVideoSettings.ntsc)));
            xmlElement2.addChild(xmlElement3);
        }
        xmlElement2.addChild(new XmlElement("in", String.valueOf(this.mInPoint)));
        xmlElement2.addChild(new XmlElement("name", this.mName));
        XmlElement xmlElement4 = new XmlElement("media");
        if (this.mHasVideo) {
            XmlElement xmlElement5 = new XmlElement("video");
            XmlElement xmlElement6 = new XmlElement("track");
            xmlElement5.addChild(xmlElement6);
            XmlElement xmlElement7 = new XmlElement("clipitem");
            xmlElement6.addChild(xmlElement7);
            xmlElement7.setAttribute("id", this.mVideoClipId);
            xmlElement7.setAttribute("frameBlend", XmlElement.convertBooltoString(false));
            xmlElement7.addChild(new XmlElement("masterclipid", this.mXmlId));
            xmlElement7.addChild(new XmlElement("name", this.mName));
            xmlElement7.addChild(new XmlElement("alphatype", Utils.VideoAlphaTypeStrings[this.mVideoSettings.alphaType.getNumVal()]));
            xmlElement7.addChild(new XmlElement("pixelaspectratio", Utils.VideoAspectRatioStrings[this.mVideoSettings.aspectRatio.getNumVal()]));
            xmlElement7.addChild(new XmlElement("anamorphic", XmlElement.convertBooltoString(this.mVideoSettings.anamorphic)));
            addFileFullXmlElement(xmlElement7);
            addLinksXmlElements(xmlElement7);
            xmlElement4.addChild(xmlElement5);
            z = true;
        } else {
            z = false;
        }
        if (this.mHasAudio) {
            XmlElement xmlElement8 = new XmlElement("audio");
            boolean z2 = z;
            for (int i = 0; i < this.mAudioSettings.numChannels; i++) {
                XmlElement xmlElement9 = new XmlElement("track");
                XmlElement xmlElement10 = new XmlElement("clipitem");
                xmlElement10.setAttribute("id", this.mAudioClipIds.get(i));
                xmlElement10.setAttribute("frameBlend", XmlElement.convertBooltoString(false));
                xmlElement10.addChild(new XmlElement("masterclipid", this.mXmlId));
                xmlElement10.addChild(new XmlElement("name", this.mName));
                XmlElement xmlElement11 = new XmlElement("sourcetrack");
                xmlElement11.addChild(new XmlElement("mediatype", "audio"));
                xmlElement11.addChild(new XmlElement("trackindex", String.valueOf(i + 1)));
                xmlElement10.addChild(xmlElement11);
                if (!z2) {
                    addFileFullXmlElement(xmlElement10);
                    z2 = true;
                } else {
                    addFileShortXmlElement(xmlElement10);
                }
                addLinksXmlElements(xmlElement10);
                xmlElement9.addChild(xmlElement10);
                xmlElement8.addChild(xmlElement9);
            }
            xmlElement4.addChild(xmlElement8);
        }
        xmlElement2.addChild(xmlElement4);
        xmlElement.addChild(xmlElement2);
    }

    public void addFileShortXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("file");
        xmlElement2.setAttribute("id", this.mFile.mXmlId);
        xmlElement.addChild(xmlElement2);
    }

    public void addFileXmlElement(XmlElement xmlElement) {
        if (!this.mFullFileAdded) {
            this.mFullFileAdded = true;
            addFileFullXmlElement(xmlElement);
        } else {
            addFileShortXmlElement(xmlElement);
        }
    }

    class MasterClipFile {
        private String mName;
        private String mPath;
        private String mXmlId;

        public MasterClipFile(String str, String str2) {
            this.mName = str;
            this.mPath = str2;
        }
    }
}
