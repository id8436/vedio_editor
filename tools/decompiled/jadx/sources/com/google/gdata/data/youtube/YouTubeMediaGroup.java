package com.google.gdata.data.youtube;

import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaDescription;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaPlayer;
import com.google.gdata.data.media.mediarss.MediaRating;
import com.google.gdata.data.media.mediarss.MediaRestriction;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.media.mediarss.MediaTitle;
import com.google.gdata.data.youtube.YouTubeMediaCredit;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "group", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class YouTubeMediaGroup extends MediaGroup {
    private static final String UPLOADER_ROLE = "uploader";

    public String getVideoId() {
        YtVideoId ytVideoId = (YtVideoId) getExtension(YtVideoId.class);
        if (ytVideoId == null) {
            return null;
        }
        return ytVideoId.getVideoId();
    }

    public void setVideoId(String str) {
        if (str == null) {
            removeExtension(YtVideoId.class);
        } else {
            setExtension(new YtVideoId(str));
        }
    }

    public Long getDuration() {
        YtDuration ytDuration = (YtDuration) getExtension(YtDuration.class);
        if (ytDuration == null) {
            return null;
        }
        return Long.valueOf(ytDuration.getSeconds());
    }

    public void setDuration(Long l) {
        if (l == null) {
            removeExtension(YtDuration.class);
            return;
        }
        YtDuration ytDuration = new YtDuration();
        ytDuration.setSeconds(l.longValue());
        setExtension(ytDuration);
    }

    public DateTime getUploaded() {
        YtUploaded ytUploaded = (YtUploaded) getExtension(YtUploaded.class);
        if (ytUploaded != null) {
            return ytUploaded.getDateTime();
        }
        return null;
    }

    public void setUploaded(DateTime dateTime) {
        if (dateTime == null) {
            removeExtension(YtUploaded.class);
        } else {
            setExtension(new YtUploaded(dateTime));
        }
    }

    public void setUploader(String str) {
        Iterator<YouTubeMediaCredit> it = getYouTubeCredits().iterator();
        while (it.hasNext()) {
            YouTubeMediaCredit next = it.next();
            if ("uploader".equals(next.getRole()) && YouTubeNamespace.CREDIT_SCHEME.equals(next.getScheme())) {
                it.remove();
            }
        }
        if (str != null) {
            YouTubeMediaCredit youTubeMediaCredit = new YouTubeMediaCredit();
            youTubeMediaCredit.setScheme(YouTubeNamespace.CREDIT_SCHEME);
            youTubeMediaCredit.setRole("uploader");
            youTubeMediaCredit.setContent(str);
            addCredit(youTubeMediaCredit);
        }
    }

    public String getUploader() {
        YouTubeMediaCredit uploaderTag = getUploaderTag();
        if (uploaderTag == null) {
            return null;
        }
        return uploaderTag.getContent();
    }

    public YouTubeMediaCredit.Type getUploaderType() {
        YouTubeMediaCredit uploaderTag = getUploaderTag();
        if (uploaderTag == null) {
            return null;
        }
        return uploaderTag.getType();
    }

    private YouTubeMediaCredit getUploaderTag() {
        for (YouTubeMediaCredit youTubeMediaCredit : getYouTubeCredits()) {
            if ("uploader".equals(youTubeMediaCredit.getRole()) && YouTubeNamespace.CREDIT_SCHEME.equals(youTubeMediaCredit.getScheme())) {
                return youTubeMediaCredit;
            }
        }
        return null;
    }

    public List<YouTubeMediaContent> getYouTubeContents() {
        return getRepeatingExtension(YouTubeMediaContent.class);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void addContent(MediaContent mediaContent) {
        if (!(mediaContent instanceof YouTubeMediaContent)) {
            throw new IllegalArgumentException("YouTube entries requires YouTubeMediaContent");
        }
        super.addContent(mediaContent);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public List<MediaContent> getContents() {
        final List<YouTubeMediaContent> youTubeContents = getYouTubeContents();
        return new AbstractList<MediaContent>() { // from class: com.google.gdata.data.youtube.YouTubeMediaGroup.1
            @Override // java.util.AbstractList, java.util.List
            public MediaContent get(int i) {
                return (MediaContent) youTubeContents.get(i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return youTubeContents.size();
            }
        };
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void clearContents() {
        getYouTubeContents().clear();
    }

    public void addContent(YouTubeMediaContent youTubeMediaContent) {
        addRepeatingExtension(youTubeMediaContent);
    }

    public List<YouTubeMediaRating> getYouTubeRatings() {
        return getRepeatingExtension(YouTubeMediaRating.class);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void addRating(MediaRating mediaRating) {
        if (!(mediaRating instanceof YouTubeMediaRating)) {
            throw new IllegalArgumentException("YouTube entries requires YouTubeMediaRating");
        }
        super.addRating(mediaRating);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public List<MediaRating> getRatings() {
        final List<YouTubeMediaRating> youTubeRatings = getYouTubeRatings();
        return new AbstractList<MediaRating>() { // from class: com.google.gdata.data.youtube.YouTubeMediaGroup.2
            @Override // java.util.AbstractList, java.util.List
            public MediaRating get(int i) {
                return (MediaRating) youTubeRatings.get(i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return youTubeRatings.size();
            }
        };
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void clearRatings() {
        getYouTubeRatings().clear();
    }

    public void addRating(YouTubeMediaRating youTubeMediaRating) {
        addRepeatingExtension(youTubeMediaRating);
    }

    public List<YouTubeMediaCredit> getYouTubeCredits() {
        return getRepeatingExtension(YouTubeMediaCredit.class);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void addCredit(MediaCredit mediaCredit) {
        if (!(mediaCredit instanceof YouTubeMediaCredit)) {
            throw new IllegalArgumentException("YouTube entries requires YouTubeMediaCredit");
        }
        super.addCredit(mediaCredit);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public List<MediaCredit> getCredits() {
        final List<YouTubeMediaCredit> youTubeCredits = getYouTubeCredits();
        return new AbstractList<MediaCredit>() { // from class: com.google.gdata.data.youtube.YouTubeMediaGroup.3
            @Override // java.util.AbstractList, java.util.List
            public MediaCredit get(int i) {
                return (MediaCredit) youTubeCredits.get(i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return youTubeCredits.size();
            }
        };
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup
    public void clearCredits() {
        getYouTubeCredits().clear();
    }

    public void addCredit(YouTubeMediaCredit youTubeMediaCredit) {
        addRepeatingExtension(youTubeMediaCredit);
    }

    public void setAspectRatio(YtAspectRatio ytAspectRatio) {
        if (ytAspectRatio == null) {
            removeExtension(YtAspectRatio.class);
        } else {
            setExtension(ytAspectRatio);
        }
    }

    public YtAspectRatio getAspectRatio() {
        return (YtAspectRatio) getExtension(YtAspectRatio.class);
    }

    public boolean isPrivate() {
        return ((YtPrivate) getExtension(YtPrivate.class)) != null;
    }

    public void setPrivate(boolean z) {
        if (z) {
            setExtension(new YtPrivate());
        } else {
            removeExtension(YtPrivate.class);
        }
    }

    public MediaCategory getYouTubeCategory() {
        Set<MediaCategory> categoriesWithScheme = getCategoriesWithScheme(YouTubeNamespace.CATEGORY_SCHEME);
        if (categoriesWithScheme.size() == 1) {
            return categoriesWithScheme.iterator().next();
        }
        if (categoriesWithScheme.size() > 1) {
            return null;
        }
        Set<MediaCategory> categoriesWithScheme2 = getCategoriesWithScheme(null);
        if (categoriesWithScheme2.size() == 1) {
            return categoriesWithScheme2.iterator().next();
        }
        return null;
    }

    public void setYouTubeCategory(String str) {
        Iterator<MediaCategory> it = getCategories().iterator();
        while (it.hasNext()) {
            if (YouTubeNamespace.CATEGORY_SCHEME.equals(it.next().getScheme())) {
                it.remove();
            }
        }
        addCategory(new MediaCategory(YouTubeNamespace.CATEGORY_SCHEME, str));
    }

    @Override // com.google.gdata.data.media.mediarss.MediaGroup, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(YouTubeMediaGroup.class, YtAspectRatio.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YtVideoId.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YtDuration.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YtPrivate.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YtUploaded.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YouTubeMediaContent.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaPlayer.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaKeywords.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaTitle.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaDescription.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaRestriction.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaCategory.class);
        extensionProfile.declare(YouTubeMediaGroup.class, MediaThumbnail.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YouTubeMediaRating.class);
        extensionProfile.declare(YouTubeMediaGroup.class, YouTubeMediaCredit.class);
        extensionProfile.declareArbitraryXmlExtension(YouTubeMediaGroup.class);
    }
}
