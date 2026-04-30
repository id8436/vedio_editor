package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(YouTubeNamespace.KIND_COMMENT)
public class CommentEntry extends BaseEntry<CommentEntry> {
    public CommentEntry() {
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMMENT);
    }

    public CommentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        EntryUtils.setKind(this, YouTubeNamespace.KIND_COMMENT);
    }

    public Integer getTotalRating() {
        YtCommentRating ytCommentRating = (YtCommentRating) getExtension(YtCommentRating.class);
        if (ytCommentRating == null) {
            return null;
        }
        return Integer.valueOf(ytCommentRating.getTotal());
    }

    public void setTotalRating(Integer num) {
        if (num == null) {
            removeExtension(YtCommentRating.class);
        } else {
            setExtension(new YtCommentRating(num.intValue()));
        }
    }

    public boolean hasSpamHint() {
        return getExtension(YtSpam.class) != null;
    }

    public void setSpamHint(boolean z) {
        if (z) {
            setExtension(new YtSpam());
        } else {
            removeExtension(YtSpam.class);
        }
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(YouTubeNamespace.NS);
        extensionProfile.declare(CommentEntry.class, YtSpam.class);
        extensionProfile.declare(CommentEntry.class, YtCommentRating.class);
        extensionProfile.declareArbitraryXmlExtension(CommentEntry.class);
    }
}
