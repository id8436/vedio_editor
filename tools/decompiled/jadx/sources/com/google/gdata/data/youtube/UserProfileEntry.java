package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.youtube.YtGender;
import com.google.gdata.data.youtube.YtRelationship;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Kind.Term(YouTubeNamespace.KIND_USER_PROFILE)
public class UserProfileEntry extends BaseEntry<UserProfileEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.CHANNELTYPE_SCHEME};

    public UserProfileEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_PROFILE);
    }

    public UserProfileEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_PROFILE);
    }

    public void setBooks(String str) {
        if (str == null) {
            removeExtension(YtBooks.class);
        } else {
            setExtension(new YtBooks(str));
        }
    }

    public String getBooks() {
        YtBooks ytBooks = (YtBooks) getExtension(YtBooks.class);
        if (ytBooks != null) {
            return ytBooks.getContent();
        }
        return null;
    }

    public void setAge(Integer num) {
        if (num == null) {
            removeExtension(YtAge.class);
        } else {
            setExtension(new YtAge(num.intValue()));
        }
    }

    public Integer getAge() {
        YtAge ytAge = (YtAge) getExtension(YtAge.class);
        if (ytAge == null) {
            return null;
        }
        return Integer.valueOf(ytAge.getAge());
    }

    public void setThumbnail(MediaThumbnail mediaThumbnail) {
        if (mediaThumbnail == null) {
            removeExtension(MediaThumbnail.class);
        } else {
            setExtension(mediaThumbnail);
        }
    }

    public MediaThumbnail getThumbnail() {
        MediaThumbnail mediaThumbnail = (MediaThumbnail) getExtension(MediaThumbnail.class);
        if (mediaThumbnail == null) {
            return null;
        }
        return mediaThumbnail;
    }

    public String getCompany() {
        YtCompany ytCompany = (YtCompany) getExtension(YtCompany.class);
        if (ytCompany != null) {
            return ytCompany.getContent();
        }
        return null;
    }

    public void setCompany(String str) {
        if (str == null) {
            removeExtension(YtCompany.class);
        } else {
            setExtension(new YtCompany(str));
        }
    }

    public void setGender(YtGender.Value value) {
        if (value == null) {
            removeExtension(YtGender.class);
        } else {
            setExtension(new YtGender(value));
        }
    }

    public YtGender.Value getGender() {
        YtGender ytGender = (YtGender) getExtension(YtGender.class);
        if (ytGender != null) {
            return ytGender.getGender();
        }
        return null;
    }

    public void setHobbies(String str) {
        if (str == null) {
            removeExtension(YtHobbies.class);
        } else {
            setExtension(new YtHobbies(str));
        }
    }

    public String getHobbies() {
        YtHobbies ytHobbies = (YtHobbies) getExtension(YtHobbies.class);
        if (ytHobbies != null) {
            return ytHobbies.getContent();
        }
        return null;
    }

    public void setHometown(String str) {
        if (str == null) {
            removeExtension(YtHometown.class);
        } else {
            setExtension(new YtHometown(str));
        }
    }

    public String getHometown() {
        YtHometown ytHometown = (YtHometown) getExtension(YtHometown.class);
        if (ytHometown != null) {
            return ytHometown.getContent();
        }
        return null;
    }

    public void setLocation(String str) {
        if (str == null) {
            removeExtension(YtLocation.class);
        } else {
            setExtension(new YtLocation(str));
        }
    }

    public String getLocation() {
        YtLocation ytLocation = (YtLocation) getExtension(YtLocation.class);
        if (ytLocation != null) {
            return ytLocation.getContent();
        }
        return null;
    }

    public void setMovies(String str) {
        if (str == null) {
            removeExtension(YtMovies.class);
        } else {
            setExtension(new YtMovies(str));
        }
    }

    public String getMovies() {
        YtMovies ytMovies = (YtMovies) getExtension(YtMovies.class);
        if (ytMovies != null) {
            return ytMovies.getContent();
        }
        return null;
    }

    public void setMusic(String str) {
        if (str == null) {
            removeExtension(YtMusic.class);
        } else {
            setExtension(new YtMusic(str));
        }
    }

    public String getMusic() {
        YtMusic ytMusic = (YtMusic) getExtension(YtMusic.class);
        if (ytMusic != null) {
            return ytMusic.getContent();
        }
        return null;
    }

    public void setOccupation(String str) {
        if (str == null) {
            removeExtension(YtOccupation.class);
        } else {
            setExtension(new YtOccupation(str));
        }
    }

    public String getOccupation() {
        YtOccupation ytOccupation = (YtOccupation) getExtension(YtOccupation.class);
        if (ytOccupation != null) {
            return ytOccupation.getContent();
        }
        return null;
    }

    public void setRelationship(YtRelationship.Status status) {
        if (status == null) {
            removeExtension(YtRelationship.class);
        } else {
            setExtension(new YtRelationship(status));
        }
    }

    public YtRelationship.Status getRelationship() {
        YtRelationship ytRelationship = (YtRelationship) getExtension(YtRelationship.class);
        if (ytRelationship != null) {
            return ytRelationship.getStatus();
        }
        return null;
    }

    public void setSchool(String str) {
        if (str == null) {
            removeExtension(YtSchool.class);
        } else {
            setExtension(new YtSchool(str));
        }
    }

    public String getSchool() {
        YtSchool ytSchool = (YtSchool) getExtension(YtSchool.class);
        if (ytSchool != null) {
            return ytSchool.getContent();
        }
        return null;
    }

    public String getUsername() {
        YtUsername ytUsername = (YtUsername) getExtension(YtUsername.class);
        if (ytUsername == null) {
            return null;
        }
        return ytUsername.getContent();
    }

    public void setUsername(String str) {
        if (str == null) {
            removeExtension(YtUsername.class);
        } else {
            setExtension(new YtUsername(str));
        }
    }

    public String getFirstName() {
        YtFirstName ytFirstName = (YtFirstName) getExtension(YtFirstName.class);
        if (ytFirstName == null) {
            return null;
        }
        return ytFirstName.getContent();
    }

    public void setFirstName(String str) {
        if (str == null) {
            removeExtension(YtFirstName.class);
        } else {
            setExtension(new YtFirstName(str));
        }
    }

    public String getLastName() {
        YtLastName ytLastName = (YtLastName) getExtension(YtLastName.class);
        if (ytLastName == null) {
            return null;
        }
        return ytLastName.getContent();
    }

    public void setLastName(String str) {
        if (str == null) {
            removeExtension(YtLastName.class);
        } else {
            setExtension(new YtLastName(str));
        }
    }

    @Deprecated
    public String getDescription() {
        YtDescription ytDescription = (YtDescription) getExtension(YtDescription.class);
        if (ytDescription == null) {
            return null;
        }
        return ytDescription.getContent();
    }

    @Deprecated
    public void setDescription(String str) {
        if (str == null) {
            removeExtension(YtDescription.class);
        } else {
            setExtension(new YtDescription(str));
        }
    }

    public String getAboutMe() {
        YtAboutMe ytAboutMe = (YtAboutMe) getExtension(YtAboutMe.class);
        if (ytAboutMe == null) {
            return null;
        }
        return ytAboutMe.getContent();
    }

    public void setAboutMe(String str) {
        if (str == null) {
            removeExtension(YtAboutMe.class);
        } else {
            setExtension(new YtAboutMe(str));
        }
    }

    public YtUserProfileStatistics getStatistics() {
        return (YtUserProfileStatistics) getExtension(YtUserProfileStatistics.class);
    }

    public void setStatistics(YtUserProfileStatistics ytUserProfileStatistics) {
        if (ytUserProfileStatistics == null) {
            removeExtension(YtUserProfileStatistics.class);
        } else {
            setExtension(ytUserProfileStatistics);
        }
    }

    private Category getCategoryForScheme(Set<Category> set, String str) {
        for (Category category : set) {
            if (category.getScheme().equals(str)) {
                return category;
            }
        }
        return null;
    }

    public String getChannelType() {
        return getCategoryForScheme(getCategories(), YouTubeNamespace.CHANNELTYPE_SCHEME).getTerm();
    }

    public void setChannelType(String str) {
        if (str == null) {
            getCategories().remove(getCategoryForScheme(getCategories(), YouTubeNamespace.CHANNELTYPE_SCHEME));
        } else {
            getCategories().add(new Category(YouTubeNamespace.CHANNELTYPE_SCHEME, str));
        }
    }

    public List<FeedLink> getFeedLinks() {
        return getRepeatingExtension(FeedLink.class);
    }

    public FeedLink<?> getFavoritesFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.FAVORITES_REL);
    }

    public FeedLink<?> getContactsFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.CONTACTS_REL);
    }

    public FeedLink<?> getInboxFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.INBOX_REL);
    }

    public FeedLink<?> getPlaylistsFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.PLAYLISTS_REL);
    }

    public FeedLink<?> getSubscriptionsFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.SUBSCRIPTIONS_REL);
    }

    public FeedLink<?> getUploadsFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.UPLOADS_REL);
    }

    public FeedLink<?> getNewSubscriptionVideosFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.NEW_SUBSCRIPTION_VIDEOS_REL);
    }

    public FeedLink<?> getFriendsActivityFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.FRIENDSACTIVITY_REL);
    }

    public FeedLink<?> getRecentActivityFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.RECENTACTIVITY_REL);
    }

    public Link getVideoLogLink() {
        return getLink(YouTubeNamespace.VLOG_REL, ILink.Type.ATOM);
    }

    public Link getFeaturedVideoLink() {
        return getLink(YouTubeNamespace.FEATURED_VIDEO_REL, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        extensionProfile.declare(UserProfileEntry.class, YtAboutMe.class);
        extensionProfile.declare(UserProfileEntry.class, YtAge.class);
        extensionProfile.declare(UserProfileEntry.class, YtBooks.class);
        extensionProfile.declare(UserProfileEntry.class, YtCompany.class);
        extensionProfile.declare(UserProfileEntry.class, YtDescription.class);
        extensionProfile.declare(UserProfileEntry.class, YtGender.class);
        extensionProfile.declare(UserProfileEntry.class, YtHobbies.class);
        extensionProfile.declare(UserProfileEntry.class, YtHometown.class);
        extensionProfile.declare(UserProfileEntry.class, YtLocation.class);
        extensionProfile.declare(UserProfileEntry.class, YtMovies.class);
        extensionProfile.declare(UserProfileEntry.class, YtMusic.class);
        extensionProfile.declare(UserProfileEntry.class, YtOccupation.class);
        extensionProfile.declare(UserProfileEntry.class, YtRelationship.class);
        extensionProfile.declare(UserProfileEntry.class, YtSchool.class);
        extensionProfile.declare(UserProfileEntry.class, YtUsername.class);
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(MediaThumbnail.class);
        defaultDescription.setRepeatable(false);
        extensionProfile.declare(UserProfileEntry.class, defaultDescription);
        extensionProfile.declare(UserProfileEntry.class, YtUserProfileStatistics.class);
        ExtensionDescription defaultDescription2 = FeedLink.getDefaultDescription();
        defaultDescription2.setRepeatable(true);
        extensionProfile.declare(UserProfileEntry.class, defaultDescription2);
        extensionProfile.declare(UserProfileEntry.class, YtFirstName.class);
        extensionProfile.declare(UserProfileEntry.class, YtLastName.class);
        extensionProfile.declareArbitraryXmlExtension(UserProfileEntry.class);
    }
}
