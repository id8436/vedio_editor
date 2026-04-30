package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.MediaContent;
import com.google.gdata.data.PubControl;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.youtube.YtDerived;
import com.google.gdata.util.ParseException;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_CAPTION_TRACK)
public class CaptionTrackEntry extends MediaEntry<CaptionTrackEntry> {
    public CaptionTrackEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CAPTION_TRACK);
    }

    public CaptionTrackEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CAPTION_TRACK);
    }

    public String getLanguageCode() {
        Content content = getContent();
        if (content == null) {
            return null;
        }
        return content.getLang();
    }

    public void setPublicationState(YtPublicationState ytPublicationState) {
        PubControl pubControl = getPubControl();
        if (ytPublicationState == null) {
            if (pubControl != null) {
                pubControl.removeExtension(YtPublicationState.class);
                if (!pubControl.isDraft() && pubControl.getExtensions().isEmpty()) {
                    setPubControl(null);
                    return;
                }
                return;
            }
            return;
        }
        if (pubControl == null) {
            pubControl = new PubControl();
            setPubControl(pubControl);
        }
        pubControl.setExtension(ytPublicationState);
    }

    public YtPublicationState getPublicationState() {
        if (getPubControl() == null) {
            return null;
        }
        return (YtPublicationState) getPubControl().getExtension(YtPublicationState.class);
    }

    public void setDerived(YtDerived ytDerived) {
        if (ytDerived != null) {
            setExtension(ytDerived);
        } else {
            removeExtension(YtDerived.class);
        }
    }

    public YtDerived getDerived() {
        return (YtDerived) getExtension(YtDerived.class);
    }

    public void setFormatInfo(YtFormatInfo ytFormatInfo) {
        if (ytFormatInfo != null) {
            setExtension(ytFormatInfo);
        } else {
            removeExtension(YtFormatInfo.class);
        }
    }

    public YtFormatInfo getFormatInfo() {
        return (YtFormatInfo) getExtension(YtFormatInfo.class);
    }

    public YtFormatInfo getOrCreateFormatInfo() {
        if (getFormatInfo() == null) {
            setFormatInfo(new YtFormatInfo());
        }
        return (YtFormatInfo) getExtension(YtFormatInfo.class);
    }

    public boolean hasAutomaticSpeechRecognition() {
        YtDerived ytDerived = (YtDerived) getExtension(YtDerived.class);
        return ytDerived != null && ytDerived.getContent().equals(YtDerived.Value.SPEECH_RECOGNITION);
    }

    public void setAutomaticSpeechRecognition(boolean z) {
        if (z) {
            setExtension(new YtDerived(YtDerived.Value.SPEECH_RECOGNITION));
        } else {
            removeExtension(YtDerived.class);
        }
    }

    @Override // com.google.gdata.data.media.MediaEntry, com.google.gdata.data.BaseEntry
    protected Content.ChildHandlerInfo getContentHandlerInfo(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException, IOException {
        return MediaContent.getChildHandler(extensionProfile, attributes);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(CaptionTrackEntry.class, YtDerived.class);
        extensionProfile.declare(CaptionTrackEntry.class, YtFormatInfo.class);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        extensionProfile.declare(PubControl.class, YtPublicationState.class);
        extensionProfile.declareArbitraryXmlExtension(CaptionTrackEntry.class);
    }
}
