package com.adobe.premiereclip.prexport.fcpxml.clip.track;

import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.premiereclip.prexport.fcpxml.XmlElement;
import com.adobe.premiereclip.prexport.fcpxml.Xmlable;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem;
import com.adobe.premiereclip.prexport.fcpxml.utils.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class Track extends Xmlable {
    protected int mTrackIndex = -1;
    protected long mCurrentItemStartTime = 0;
    protected int mNumNonEmptyTypes = 0;
    protected ArrayList<TrackItem> mItems = new ArrayList<>();

    protected TrackClip getLastClip() {
        if (this.mItems.size() > 0) {
            ListIterator<TrackItem> listIterator = this.mItems.listIterator(this.mItems.size());
            while (listIterator.hasPrevious()) {
                TrackItem trackItemPrevious = listIterator.previous();
                if (trackItemPrevious instanceof TrackClip) {
                    return (TrackClip) trackItemPrevious;
                }
            }
        }
        return null;
    }

    public void adjustCurrentTime(long j) {
        this.mCurrentItemStartTime += j;
    }

    public void addItem(TrackItem trackItem) {
        trackItem.setTrackIndex(this.mTrackIndex);
        if (!Utils.isEmptyTrackClip(trackItem)) {
            this.mNumNonEmptyTypes++;
        }
        if (trackItem instanceof TrackClip) {
            TrackClip trackClip = (TrackClip) trackItem;
            if (!Utils.isEmptyTrackClip(trackItem)) {
                trackClip.setClipIndex(this.mNumNonEmptyTypes);
            }
            long j = this.mCurrentItemStartTime;
            long duration = trackClip.getDuration() + j;
            trackClip.setStart(j);
            trackClip.setEnd(duration);
            this.mCurrentItemStartTime = duration;
            TrackClip lastClip = getLastClip();
            if (lastClip != null) {
                trackClip.setPrevClip(lastClip);
                lastClip.setNextClip(trackClip);
            }
        }
        this.mItems.add(trackItem);
    }

    public void setTrackIndex(int i) {
        this.mTrackIndex = i;
        if (this.mItems.size() > 0) {
            Iterator<TrackItem> it = this.mItems.iterator();
            while (it.hasNext()) {
                it.next().setTrackIndex(this.mTrackIndex);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void calculateTimings() {
        /*
            r12 = this;
            r6 = 0
            r2 = 0
            r0 = 0
            r4 = r2
            r2 = r0
        L6:
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r0 = r12.mItems
            int r0 = r0.size()
            if (r2 >= r0) goto L7f
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r0 = r12.mItems
            java.lang.Object r0 = r0.get(r2)
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem r0 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem) r0
            boolean r1 = r0 instanceof com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition
            if (r1 == 0) goto L75
            com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition r0 = (com.adobe.premiereclip.prexport.fcpxml.clip.transition.Transition) r0
            if (r2 <= 0) goto La0
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r1 = r12.mItems
            int r3 = r2 + (-1)
            java.lang.Object r1 = r1.get(r3)
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem r1 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem) r1
            boolean r3 = r1 instanceof com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip
            if (r3 == 0) goto La0
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip r1 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip) r1
        L2e:
            if (r1 == 0) goto L41
            r0.adjustHeadClip(r1)
            long r8 = r1.getEnd()
            r10 = -1
            int r3 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r3 == 0) goto L79
            long r4 = r1.getEnd()
        L41:
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r1 = r12.mItems
            int r1 = r1.size()
            int r1 = r1 + (-1)
            if (r2 >= r1) goto L9e
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r1 = r12.mItems
            int r3 = r2 + 1
            java.lang.Object r1 = r1.get(r3)
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem r1 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem) r1
            boolean r3 = r1 instanceof com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip
            if (r3 == 0) goto L9e
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip r1 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip) r1
        L5b:
            if (r1 == 0) goto L60
            r0.adjustTailClip(r1)
        L60:
            long r8 = r0.getHeadDuration()
            long r8 = r4 - r8
            r0.setStart(r8)
            long r8 = r0.getStart()
            long r10 = r0.getDuration()
            long r8 = r8 + r10
            r0.setEnd(r8)
        L75:
            int r0 = r2 + 1
            r2 = r0
            goto L6
        L79:
            long r8 = r1.getTrackDuration()
            long r4 = r4 + r8
            goto L41
        L7f:
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r0 = r12.mItems
            int r0 = r0.size()
            if (r0 <= 0) goto L9d
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r0 = r12.mItems
            java.util.ArrayList<com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem> r1 = r12.mItems
            int r1 = r1.size()
            int r1 = r1 + (-1)
            java.lang.Object r0 = r0.get(r1)
            com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem r0 = (com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem) r0
            long r0 = r0.getEnd()
            r12.mCurrentItemStartTime = r0
        L9d:
            return
        L9e:
            r1 = r6
            goto L5b
        La0:
            r1 = r6
            goto L2e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.premiereclip.prexport.fcpxml.clip.track.Track.calculateTimings():void");
    }

    public TrackItem getItemAt(int i) {
        if (this.mItems.size() > i) {
            return this.mItems.get(i);
        }
        return null;
    }

    public ArrayList<TrackItem> getItems() {
        return this.mItems;
    }

    public int numItems() {
        return this.mItems.size();
    }

    @Override // com.adobe.premiereclip.prexport.fcpxml.Xmlable
    public void toXmlElement(XmlElement xmlElement) {
        XmlElement xmlElement2 = new XmlElement("track");
        xmlElement2.addChild(new XmlElement(AdobePSDCompositeConstants.AdobePSDCompositeLayerMaskEnabledKey, XmlElement.convertBooltoString(true)));
        xmlElement2.addChild(new XmlElement("locked", XmlElement.convertBooltoString(false)));
        Iterator<TrackItem> it = this.mItems.iterator();
        while (it.hasNext()) {
            it.next().toXmlElement(xmlElement2);
        }
        xmlElement.addChild(xmlElement2);
    }
}
