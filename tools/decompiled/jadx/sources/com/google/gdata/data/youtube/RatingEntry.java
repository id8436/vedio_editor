package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.extensions.Rating;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_RATING)
public class RatingEntry extends BaseEntry<RatingEntry> {
    public RatingEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_RATING);
    }

    public RatingEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_RATING);
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

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(RatingEntry.class, Rating.getDefaultDescription(false));
        extensionProfile.declare(RatingEntry.class, YtRating.class);
        extensionProfile.declareArbitraryXmlExtension(RatingEntry.class);
    }
}
