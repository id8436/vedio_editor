package com.adobe.premiereclip.prexport.fcpxml;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.premiereclip.prexport.fcpxml.clip.MasterClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackClip;
import com.adobe.premiereclip.prexport.fcpxml.clip.TrackItem;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.AudioTrack;
import com.adobe.premiereclip.prexport.fcpxml.clip.track.VideoTrack;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectXmlGenerator {
    private int mClipitemCount = 0;
    private int mFileCount = 0;
    private int mMasterClipCount = 0;

    private void setMasterClipIdsForTrackClip(TrackClip trackClip) {
        MasterClip masterClip = trackClip.getMasterClip();
        if (masterClip != null && masterClip.getXmlId().isEmpty()) {
            masterClip.setUuid(masterClip.getName());
            this.mMasterClipCount++;
            masterClip.setXmlId("masterclip-" + String.valueOf(this.mMasterClipCount));
            this.mFileCount++;
            masterClip.setFileId("file-" + String.valueOf(this.mFileCount));
        }
    }

    private void processBinContentsForXml(Bin bin) {
        for (MasterClip masterClip : bin.getMasterClips()) {
            Log.d("ProjToXml", "got masterclip uuid " + masterClip.getName());
            masterClip.setUuid(masterClip.getName());
            this.mMasterClipCount++;
            masterClip.setXmlId("masterclip-" + String.valueOf(this.mMasterClipCount));
            this.mFileCount++;
            masterClip.setFileId("file-" + String.valueOf(this.mFileCount));
            this.mClipitemCount++;
            masterClip.setVideoclipId("clipitem-" + String.valueOf(this.mClipitemCount));
            if (masterClip.getNumAudioChannels() > 0) {
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i = 0; i < masterClip.getNumAudioChannels(); i++) {
                    this.mClipitemCount++;
                    arrayList.add("clipitem-" + String.valueOf(this.mClipitemCount));
                }
                masterClip.setAudioclipIds(arrayList);
            }
        }
        for (Sequence sequence : bin.getSequences()) {
            Iterator<VideoTrack> it = sequence.getVideoTracks().iterator();
            while (it.hasNext()) {
                for (TrackItem trackItem : it.next().getItems()) {
                    if (trackItem instanceof TrackClip) {
                        TrackClip trackClip = (TrackClip) trackItem;
                        this.mClipitemCount++;
                        trackClip.setXmlId("clipitem-" + String.valueOf(this.mClipitemCount));
                        setMasterClipIdsForTrackClip(trackClip);
                    }
                }
            }
            Iterator<AudioTrack> it2 = sequence.getAudioTracks().iterator();
            while (it2.hasNext()) {
                for (TrackItem trackItem2 : it2.next().getItems()) {
                    if (trackItem2 instanceof TrackClip) {
                        TrackClip trackClip2 = (TrackClip) trackItem2;
                        this.mClipitemCount++;
                        trackClip2.setXmlId("clipitem-" + String.valueOf(this.mClipitemCount));
                        setMasterClipIdsForTrackClip(trackClip2);
                    }
                }
            }
        }
    }

    public void convertProjectToXml(Project project, XmlElement xmlElement) {
        this.mMasterClipCount = 0;
        this.mFileCount = 0;
        this.mClipitemCount = 0;
        processBinContentsForXml(project);
        for (int i = 0; i < project.numBins(); i++) {
            processBinContentsForXml(project.getBinAt(i));
        }
        XmlElement xmlElement2 = new XmlElement("xmeml");
        xmlElement2.setAttribute(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, "4");
        project.toXmlElement(xmlElement2);
        xmlElement.addChild(xmlElement2);
    }
}
