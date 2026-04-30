package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.extensions.Rating;
import com.google.gdata.util.Namespaces;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_USER_EVENT)
public class UserEventEntry extends BaseEntry<UserEventEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.USEREVENTS_SCHEME};

    public enum Type {
        VIDEO_UPLOADED,
        VIDEO_RATED,
        VIDEO_FAVORITED,
        VIDEO_SHARED,
        VIDEO_COMMENTED,
        USER_SUBSCRIPTION_ADDED,
        FRIEND_ADDED;

        public String getTerm() {
            return toString().toLowerCase();
        }

        public static Type fromTerm(String str) {
            try {
                return valueOf(str.toUpperCase());
            } catch (IllegalArgumentException e2) {
                return null;
            }
        }
    }

    public UserEventEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_USER_EVENT);
    }

    public Type getUserEventType() {
        Type typeFromTerm;
        for (Category category : getCategories()) {
            if (YouTubeNamespace.USEREVENTS_SCHEME.equals(category.getScheme()) && (typeFromTerm = Type.fromTerm(category.getTerm())) != null) {
                return typeFromTerm;
            }
        }
        return null;
    }

    public void setEventType(Type type) {
        clearEventType();
        if (type != null) {
            getCategories().add(new Category(YouTubeNamespace.USEREVENTS_SCHEME, type.getTerm()));
        }
    }

    private void clearEventType() {
        Iterator<Category> it = getCategories().iterator();
        while (it.hasNext()) {
            if (YouTubeNamespace.USEREVENTS_SCHEME.equals(it.next().getScheme())) {
                it.remove();
            }
        }
    }

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

    public String getUsername() {
        YtUsername ytUsername = (YtUsername) getExtension(YtUsername.class);
        if (ytUsername == null) {
            return null;
        }
        return ytUsername.getContent();
    }

    public void setUsername(String str) {
        if (str != null) {
            addExtension(new YtUsername(str));
        } else {
            removeExtension(YtUsername.class);
        }
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

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        extensionProfile.declareAdditionalNamespace(Namespaces.gNs);
        extensionProfile.declareAdditionalNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_NAMESPACE);
        extensionProfile.declareAdditionalNamespace(com.google.gdata.data.geo.Namespaces.GML_NAMESPACE);
        extensionProfile.declare(UserEventEntry.class, YtVideoId.class);
        extensionProfile.declare(UserEventEntry.class, YtUsername.class);
        extensionProfile.declare(UserEventEntry.class, Rating.getDefaultDescription(false));
        extensionProfile.declareArbitraryXmlExtension(UserEventEntry.class);
    }
}
