package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.filter.Filter;
import com.adobe.premiereclip.prexport.fcpxml.filter.Marker;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class TrackClip extends TrackItem {
    protected ArrayList<Filter> mFilters;
    protected long mInPoint;
    protected ArrayList<TrackClip> mLinkedClips;
    protected ArrayList<Marker> mMarkers;
    protected MasterClip mMasterClip;
    protected Utils.MediaType mMediaType;
    protected String mName;
    protected TrackClip mNextClip;
    protected long mOutPoint;
    protected TrackClip mPrevClip;
    protected String mXmlId;

    public TrackClip(Utils.MediaType mediaType, String str, MasterClip masterClip, long j, long j2) {
        super(j2, j2);
        this.mMediaType = mediaType;
        this.mName = str;
        this.mMasterClip = masterClip;
        this.mInPoint = j;
        this.mOutPoint = j + j2;
        this.mPrevClip = null;
        this.mNextClip = null;
        this.mLinkedClips = new ArrayList<>();
        this.mFilters = new ArrayList<>();
        this.mMarkers = new ArrayList<>();
    }

    public String getName() {
        return this.mName;
    }

    public long getInPoint() {
        return this.mInPoint;
    }

    public long getOutPoint() {
        return this.mOutPoint;
    }

    public void addFilter(Filter filter) {
        this.mFilters.add(filter);
    }

    public void addLinkedClip(TrackClip trackClip) {
        this.mLinkedClips.add(trackClip);
    }

    public void setXmlId(String str) {
        this.mXmlId = str;
    }

    public void adjustOutPoint(long j) {
        this.mOutPoint += j;
    }

    public void adjustInPoint(long j) {
        this.mInPoint += j;
    }

    public void adjustDuration(long j) {
        this.mDuration += j;
    }

    public int numLinkedClips() {
        return this.mLinkedClips.size();
    }

    public TrackClip getLinkedClipAt(int i) {
        if (this.mLinkedClips.size() > i) {
            return this.mLinkedClips.get(i);
        }
        return null;
    }

    public ArrayList<TrackClip> getLinkedClips() {
        return this.mLinkedClips;
    }

    public TrackClip getPrevClip() {
        return this.mPrevClip;
    }

    public void setPrevClip(TrackClip trackClip) {
        this.mPrevClip = trackClip;
    }

    public TrackClip getNextClip() {
        return this.mNextClip;
    }

    public void setNextClip(TrackClip trackClip) {
        this.mNextClip = trackClip;
    }

    public MasterClip getMasterClip() {
        return this.mMasterClip;
    }

    public void addMarker(Marker marker) {
        this.mMarkers.add(marker);
    }

    public int numMarkers() {
        return this.mMarkers.size();
    }

    public Marker getMarkerAt(int i) {
        return this.mMarkers.get(i);
    }

    public void addLinkXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("link");
        xmlElement2.addChild(new XmlElement("linkclipref", this.mXmlId));
        xmlElement2.addChild(new XmlElement("mediatype", Utils.MediaTypeStrings[this.mMediaType.getNumVal()]));
        xmlElement2.addChild(new XmlElement("trackindex", String.valueOf(this.mTrackIndex)));
        xmlElement2.addChild(new XmlElement("clipindex", String.valueOf(this.mClipIndex)));
        xmlElement.addChild(xmlElement2);
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("clipitem");
        xmlElement2.setAttribute("id", this.mXmlId);
        xmlElement2.setAttribute("frameBlend", XmlElement.convertBooltoString(false));
        xmlElement2.addChild(new XmlElement("masterclipid", this.mMasterClip.getXmlId()));
        xmlElement2.addChild(new XmlElement("name", this.mName));
        xmlElement2.addChild(new XmlElement(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey, XmlElement.convertBooltoString(true)));
        xmlElement2.addChild(new XmlElement("duration", String.valueOf(this.mDuration)));
        xmlElement2.addChild(new XmlElement("start", String.valueOf(this.mStart)));
        xmlElement2.addChild(new XmlElement("end", String.valueOf(this.mEnd)));
        xmlElement2.addChild(new XmlElement("in", String.valueOf(this.mInPoint)));
        xmlElement2.addChild(new XmlElement("out", String.valueOf(this.mOutPoint)));
        this.mMasterClip.addFileXmlElement(xmlElement2);
        Iterator<Filter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            it.next().toXmlElement(xmlElement2);
        }
        Iterator<Marker> it2 = this.mMarkers.iterator();
        while (it2.hasNext()) {
            it2.next().toXmlElement(xmlElement2);
        }
        if (this.mLinkedClips.size() > 0) {
            addLinkXmlElement(xmlElement2);
            Iterator<TrackClip> it3 = this.mLinkedClips.iterator();
            while (it3.hasNext()) {
                it3.next().addLinkXmlElement(xmlElement2);
            }
        }
        xmlElement.addChild(xmlElement2);
    }
}
