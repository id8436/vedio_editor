package com.adobe.premiereclip.prexport.fcpxml.clip.transition;

import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.spreadsheet.ListQuery;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Transition extends TrackItem {
    protected Utils.TransitionAlignment mAlignment;
    protected String mCategory;
    protected long mCutPoint;
    protected String mEffectId;
    protected long mHeadDuration;
    protected Utils.MediaType mMediaType;
    protected String mName;
    protected boolean mNtsc;
    protected long mTailDuration;
    protected Utils.VideoTimebase mTimebase;

    public abstract void adjustHeadClip(TrackClip trackClip);

    public abstract void adjustTailClip(TrackClip trackClip);

    public Transition(long j, Utils.TransitionAlignment transitionAlignment, long j2, String str, String str2, String str3, Utils.MediaType mediaType) {
        super(j, 0L);
        this.mHeadDuration = j2;
        this.mTailDuration = j - j2;
        this.mCutPoint = j2;
        this.mAlignment = transitionAlignment;
        this.mNtsc = false;
        this.mTimebase = Utils.VideoTimebase.P_30;
        this.mName = str;
        this.mEffectId = str2;
        this.mCategory = str3;
        this.mMediaType = mediaType;
    }

    public long getHeadDuration() {
        return this.mHeadDuration;
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("transitionitem");
        xmlElement2.addChild(new XmlElement("start", String.valueOf(this.mStart)));
        xmlElement2.addChild(new XmlElement("end", String.valueOf(this.mEnd)));
        xmlElement2.addChild(new XmlElement(BehanceSDKPublishConstants.KEY_ALIGNMENT, Utils.TransitionAlignmentStrings[this.mAlignment.getNumVal()]));
        xmlElement2.addChild(new XmlElement("cutPoint", String.valueOf(this.mCutPoint)));
        XmlElement xmlElement3 = new XmlElement("rate");
        xmlElement3.addChild(new XmlElement("timebase", String.valueOf(this.mTimebase.getNumVal())));
        xmlElement3.addChild(new XmlElement("ntsc", XmlElement.convertBooltoString(this.mNtsc)));
        xmlElement2.addChild(xmlElement3);
        XmlElement xmlElement4 = new XmlElement("effect");
        xmlElement4.addChild(new XmlElement("name", this.mName));
        xmlElement4.addChild(new XmlElement("effectid", this.mEffectId));
        xmlElement2.addChild(xmlElement4);
        if (!this.mCategory.isEmpty()) {
            xmlElement2.addChild(new XmlElement("effectcategory", this.mCategory));
        }
        xmlElement2.addChild(new XmlElement("effecttype", "transition"));
        xmlElement2.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[this.mMediaType.getNumVal()]));
        xmlElement2.addChild(new XmlElement("wipecode", "0"));
        xmlElement2.addChild(new XmlElement("wipeaccuracy", "100"));
        xmlElement2.addChild(new XmlElement("startratio", "0"));
        xmlElement2.addChild(new XmlElement("endratio", "1"));
        xmlElement2.addChild(new XmlElement(ListQuery.REVERSE, XmlElement.convertBooltoString(false)));
        xmlElement.addChild(xmlElement2);
    }
}
