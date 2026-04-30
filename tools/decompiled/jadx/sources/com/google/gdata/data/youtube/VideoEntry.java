package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.PubControl;
import com.google.gdata.data.extensions.Comments;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.extensions.Rating;
import com.google.gdata.data.geo.impl.GeoRssWhere;
import com.google.gdata.data.geo.impl.GmlPoint;
import com.google.gdata.data.geo.impl.GmlPos;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.util.Namespaces;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term("http://gdata.youtube.com/schemas/2007#video")
@ExtensionDescription.Default(localName = "video", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class VideoEntry extends MediaEntry<VideoEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.CATEGORY_SCHEME, YouTubeNamespace.KEYWORD_SCHEME, YouTubeNamespace.DEVELOPER_TAG_SCHEME};

    public VideoEntry() {
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#video");
    }

    public VideoEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, "http://gdata.youtube.com/schemas/2007#video");
    }

    public VideoEntry(String str) {
        this();
        setId(str);
    }

    public void setStatistics(YtStatistics ytStatistics) {
        if (ytStatistics == null) {
            removeExtension(YtStatistics.class);
        } else {
            setExtension(ytStatistics);
        }
    }

    public YtStatistics getStatistics() {
        return (YtStatistics) getExtension(YtStatistics.class);
    }

    public boolean isEmbeddable() {
        return ((YtNoEmbed) getExtension(YtNoEmbed.class)) == null;
    }

    public void setEmbeddable(boolean z) {
        if (z) {
            removeExtension(YtNoEmbed.class);
        } else {
            setExtension(new YtNoEmbed());
        }
    }

    @Deprecated
    public void setRacy(boolean z) {
        if (z) {
            setExtension(new YtRacy());
        } else {
            removeExtension(YtRacy.class);
        }
    }

    @Deprecated
    public boolean isRacy() {
        return ((YtRacy) getExtension(YtRacy.class)) != null;
    }

    public void setRecorded(DateTime dateTime) {
        if (dateTime == null) {
            removeExtension(YtRecorded.class);
        } else {
            setExtension(new YtRecorded(dateTime));
        }
    }

    public DateTime getRecorded() {
        YtRecorded ytRecorded = (YtRecorded) getExtension(YtRecorded.class);
        if (ytRecorded == null) {
            return null;
        }
        return ytRecorded.getDate();
    }

    public void setGeoCoordinates(GeoRssWhere geoRssWhere) {
        if (geoRssWhere == null) {
            removeExtension(GeoRssWhere.class);
        } else {
            setExtension(geoRssWhere);
        }
    }

    public GeoRssWhere getGeoCoordinates() {
        return (GeoRssWhere) getExtension(GeoRssWhere.class);
    }

    public String getLocation() {
        YtLocation ytLocation = (YtLocation) getExtension(YtLocation.class);
        if (ytLocation == null) {
            return null;
        }
        return ytLocation.getContent();
    }

    public void setLocation(String str) {
        if (str == null) {
            removeExtension(YtLocation.class);
        } else {
            setExtension(new YtLocation(str));
        }
    }

    public List<FeedLink> getFeedLinks() {
        return getRepeatingExtension(FeedLink.class);
    }

    public Comments getComments() {
        return (Comments) getExtension(Comments.class);
    }

    public void setComments(Comments comments) {
        if (comments == null) {
            removeExtension(Comments.class);
        } else {
            setExtension(comments);
        }
    }

    public Link getVideoResponsesLink() {
        return getLink(YouTubeNamespace.RESPONSES_REL, ILink.Type.ATOM);
    }

    public Link getRatingLink() {
        return getLink(YouTubeNamespace.RATINGS_REL, ILink.Type.ATOM);
    }

    public Link getComplaintsLink() {
        return getLink(YouTubeNamespace.COMPLAINTS_REL, ILink.Type.ATOM);
    }

    public Link getRelatedVideosLink() {
        return getLink(YouTubeNamespace.RELATED_REL, ILink.Type.ATOM);
    }

    public Rating getRating() {
        return (Rating) getExtension(Rating.class);
    }

    public void setRating(Rating rating) {
        if (rating == null) {
            removeExtension(Rating.class);
        } else {
            setExtension(rating);
        }
    }

    public YtRating getYtRating() {
        return (YtRating) getExtension(YtRating.class);
    }

    public void setYtRating(YtRating ytRating) {
        if (ytRating == null) {
            removeExtension(YtRating.class);
        } else {
            setExtension(ytRating);
        }
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
        PubControl pubControl = getPubControl();
        if (pubControl == null) {
            return null;
        }
        return (YtPublicationState) pubControl.getExtension(YtPublicationState.class);
    }

    public YouTubeMediaGroup getMediaGroup() {
        return (YouTubeMediaGroup) getExtension(YouTubeMediaGroup.class);
    }

    public YouTubeMediaGroup getOrCreateMediaGroup() {
        YouTubeMediaGroup mediaGroup = getMediaGroup();
        if (mediaGroup == null) {
            YouTubeMediaGroup youTubeMediaGroup = new YouTubeMediaGroup();
            setExtension(youTubeMediaGroup);
            return youTubeMediaGroup;
        }
        return mediaGroup;
    }

    public void setYtIncomplete(boolean z) {
        PubControl pubControl = getPubControl();
        if (!z) {
            if (pubControl != null) {
                pubControl.removeExtension(YtIncomplete.class);
                if (pubControl.getExtensions().isEmpty()) {
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
        pubControl.setExtension(new YtIncomplete());
        pubControl.setDraft(true);
    }

    public boolean isYtIncomplete() {
        PubControl pubControl = getPubControl();
        return (pubControl == null || pubControl.getExtension(YtIncomplete.class) == null) ? false : true;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(PubControl.class, YtPublicationState.class);
        extensionProfile.declare(VideoEntry.class, Comments.getDefaultDescription());
        extensionProfile.declare(VideoEntry.class, Rating.getDefaultDescription(false));
        extensionProfile.declareAdditionalNamespace(Namespaces.gNs);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        extensionProfile.declare(VideoEntry.class, YtRacy.class);
        extensionProfile.declare(VideoEntry.class, YtRecorded.class);
        extensionProfile.declare(VideoEntry.class, YtStatistics.class);
        extensionProfile.declare(VideoEntry.class, YtNoEmbed.class);
        extensionProfile.declare(VideoEntry.class, YtLocation.class);
        extensionProfile.declare(VideoEntry.class, YtRating.class);
        extensionProfile.declare(VideoEntry.class, YouTubeMediaGroup.class);
        new YouTubeMediaGroup().declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(MediaRssNamespace.NS);
        extensionProfile.declare(VideoEntry.class, GeoRssWhere.getDefaultDescription(false));
        extensionProfile.declareAdditionalNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_NAMESPACE);
        extensionProfile.declare(GeoRssWhere.class, GmlPoint.getDefaultDescription(false));
        extensionProfile.declare(GmlPoint.class, GmlPos.getDefaultDescription(false));
        extensionProfile.declareAdditionalNamespace(com.google.gdata.data.geo.Namespaces.GML_NAMESPACE);
        extensionProfile.declare(Link.class, YtToken.class);
        extensionProfile.declareArbitraryXmlExtension(VideoEntry.class);
    }
}
