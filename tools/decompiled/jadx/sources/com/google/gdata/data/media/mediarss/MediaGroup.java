package com.google.gdata.data.media.mediarss;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "group", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class MediaGroup extends ExtensionPoint implements Extension {
    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(MediaGroup.class);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        MediaRssNamespace.declareAll(extensionProfile);
    }

    public List<MediaContent> getContents() {
        return getRepeatingExtension(MediaContent.class);
    }

    public void clearContents() {
        getContents().clear();
    }

    public void addContent(MediaContent mediaContent) {
        addRepeatingExtension(mediaContent);
    }

    public List<MediaCategory> getCategories() {
        return getRepeatingExtension(MediaCategory.class);
    }

    public Set<MediaCategory> getCategoriesWithScheme(String str) {
        HashSet hashSet = new HashSet();
        for (MediaCategory mediaCategory : getCategories()) {
            if ((str == null && mediaCategory.getScheme() == null) || (str != null && str.equals(mediaCategory.getScheme()))) {
                hashSet.add(mediaCategory);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public void clearCategories() {
        getCategories().clear();
    }

    public void addCategory(MediaCategory mediaCategory) {
        getCategories().add(mediaCategory);
    }

    public MediaCopyright getCopyright() {
        return (MediaCopyright) getExtension(MediaCopyright.class);
    }

    public void setCopyright(MediaCopyright mediaCopyright) {
        if (mediaCopyright == null) {
            removeExtension(MediaCopyright.class);
        } else {
            setExtension(mediaCopyright);
        }
    }

    public List<MediaCredit> getCredits() {
        return getRepeatingExtension(MediaCredit.class);
    }

    public void clearCredits() {
        getCredits().clear();
    }

    public void addCredit(MediaCredit mediaCredit) {
        getCredits().add(mediaCredit);
    }

    public MediaHash getHash() {
        return (MediaHash) getExtension(MediaHash.class);
    }

    public void setHash(MediaHash mediaHash) {
        if (mediaHash == null) {
            removeExtension(MediaHash.class);
        } else {
            setExtension(mediaHash);
        }
    }

    public MediaKeywords getKeywords() {
        return (MediaKeywords) getExtension(MediaKeywords.class);
    }

    public void setKeywords(MediaKeywords mediaKeywords) {
        if (mediaKeywords == null) {
            removeExtension(MediaKeywords.class);
        } else {
            setExtension(mediaKeywords);
        }
    }

    public MediaPlayer getPlayer() {
        return (MediaPlayer) getExtension(MediaPlayer.class);
    }

    public void setPlayer(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            removeExtension(MediaPlayer.class);
        } else {
            setExtension(mediaPlayer);
        }
    }

    public List<MediaRating> getRatings() {
        return getRepeatingExtension(MediaRating.class);
    }

    public void clearRatings() {
        getRatings().clear();
    }

    public void addRating(MediaRating mediaRating) {
        getRatings().add(mediaRating);
    }

    public List<MediaThumbnail> getThumbnails() {
        return getRepeatingExtension(MediaThumbnail.class);
    }

    public void clearThumbnails() {
        getThumbnails().clear();
    }

    public void addThumbnail(MediaThumbnail mediaThumbnail) {
        getThumbnails().add(mediaThumbnail);
    }

    public List<MediaText> getTexts() {
        return getRepeatingExtension(MediaText.class);
    }

    public void clearTexts() {
        getTexts().clear();
    }

    public void addText(MediaText mediaText) {
        getTexts().add(mediaText);
    }

    public List<MediaRestriction> getRestrictions() {
        return getRepeatingExtension(MediaRestriction.class);
    }

    public void clearRestrictions() {
        getRestrictions().clear();
    }

    public void addRestriction(MediaRestriction mediaRestriction) {
        getRestrictions().add(mediaRestriction);
    }

    public void setTitle(MediaTitle mediaTitle) {
        if (mediaTitle == null) {
            removeExtension(MediaTitle.class);
        } else {
            setExtension(mediaTitle);
        }
    }

    public MediaTitle getTitle() {
        return (MediaTitle) getExtension(MediaTitle.class);
    }

    public void setDescription(MediaDescription mediaDescription) {
        if (mediaDescription == null) {
            removeExtension(MediaDescription.class);
        } else {
            setExtension(mediaDescription);
        }
    }

    public MediaDescription getDescription() {
        return (MediaDescription) getExtension(MediaDescription.class);
    }
}
