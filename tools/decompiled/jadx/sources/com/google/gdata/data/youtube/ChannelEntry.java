package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.FeedLink;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_CHANNEL)
public class ChannelEntry extends BaseEntry<ChannelEntry> {
    public static final String[] CATEGORIES = {YouTubeNamespace.CHANNELTYPE_SCHEME};

    public ChannelEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_CHANNEL);
    }

    private Category getCategoryWithScheme(Set<Category> set, String str) {
        for (Category category : set) {
            if (category.getScheme().equals(str)) {
                return category;
            }
        }
        return null;
    }

    public String getChannelType() {
        return getCategoryWithScheme(getCategories(), YouTubeNamespace.CHANNELTYPE_SCHEME).getTerm();
    }

    public void setChannelType(String str) {
        if (str == null) {
            getCategories().remove(getCategoryWithScheme(getCategories(), YouTubeNamespace.CHANNELTYPE_SCHEME));
        } else {
            getCategories().add(new Category(YouTubeNamespace.CHANNELTYPE_SCHEME, str));
        }
    }

    public FeedLink<?> getUploadsFeedLink() {
        return EntryUtils.getFeedLink(this, YouTubeNamespace.UPLOADS_REL);
    }

    public Link getFeaturedVideoLink() {
        return getLink(YouTubeNamespace.FEATURED_VIDEO_REL, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        ExtensionDescription defaultDescription = FeedLink.getDefaultDescription();
        defaultDescription.setRepeatable(true);
        extensionProfile.declare(UserProfileEntry.class, defaultDescription);
        extensionProfile.declareArbitraryXmlExtension(ChannelEntry.class);
    }
}
