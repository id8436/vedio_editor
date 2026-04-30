package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_SUBSCRIPTION)
public class SubscriptionEntry extends FeedLinkEntry<SubscriptionEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.SUBSCRIPTIONTYPE_SCHEME};

    public enum Type {
        CHANNEL,
        FAVORITES,
        QUERY,
        PLAYLIST,
        USER;

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

    public SubscriptionEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_SUBSCRIPTION);
    }

    public SubscriptionEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_SUBSCRIPTION);
    }

    public void addSubscriptionType(Type type) {
        getCategories().add(new Category(YouTubeNamespace.SUBSCRIPTIONTYPE_SCHEME, type.getTerm()));
    }

    public Type getSubscriptionType() {
        Type typeFromTerm;
        for (Category category : getCategories()) {
            if (YouTubeNamespace.SUBSCRIPTIONTYPE_SCHEME.equals(category.getScheme()) && (typeFromTerm = Type.fromTerm(category.getTerm())) != null) {
                return typeFromTerm;
            }
        }
        return null;
    }

    public void setSubscriptionType(Type type) {
        clearSubscriptionType();
        if (type != null) {
            addSubscriptionType(type);
        }
    }

    private void clearSubscriptionType() {
        Iterator<Category> it = getCategories().iterator();
        while (it.hasNext()) {
            if (YouTubeNamespace.SUBSCRIPTIONTYPE_SCHEME.equals(it.next().getScheme())) {
                it.remove();
            }
        }
    }

    public void setUsername(String str) {
        if (str != null) {
            addExtension(new YtUsername(str));
        } else {
            removeExtension(YtUsername.class);
        }
    }

    public String getUsername() {
        YtUsername ytUsername = (YtUsername) getExtension(YtUsername.class);
        if (ytUsername == null) {
            return null;
        }
        return ytUsername.getContent();
    }

    public void setQueryString(String str) {
        if (str != null) {
            addExtension(new YtQueryString(str));
        } else {
            removeExtension(YtQueryString.class);
        }
    }

    public String getQueryString() {
        YtQueryString ytQueryString = (YtQueryString) getExtension(YtQueryString.class);
        if (ytQueryString == null) {
            return null;
        }
        return ytQueryString.getContent();
    }

    public void setPlaylistTitle(String str) {
        if (str != null) {
            addExtension(new YtPlaylistTitle(str));
        } else {
            removeExtension(YtPlaylistTitle.class);
        }
    }

    public String getPlaylistTitle() {
        YtPlaylistTitle ytPlaylistTitle = (YtPlaylistTitle) getExtension(YtPlaylistTitle.class);
        if (ytPlaylistTitle == null) {
            return null;
        }
        return ytPlaylistTitle.getContent();
    }

    public void setPlaylistId(String str) {
        if (str != null) {
            addExtension(new YtPlaylistId(str));
        } else {
            removeExtension(YtPlaylistId.class);
        }
    }

    public String getPlaylistId() {
        YtPlaylistId ytPlaylistId = (YtPlaylistId) getExtension(YtPlaylistId.class);
        if (ytPlaylistId == null) {
            return null;
        }
        return ytPlaylistId.getPlaylistId();
    }

    @Override // com.google.gdata.data.youtube.FeedLinkEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SubscriptionEntry.class, YtUsername.class);
        extensionProfile.declare(SubscriptionEntry.class, YtQueryString.class);
        extensionProfile.declare(SubscriptionEntry.class, YtPlaylistTitle.class);
        extensionProfile.declare(SubscriptionEntry.class, YtPlaylistId.class);
    }
}
