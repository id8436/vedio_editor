package com.google.gdata.data.docs;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ChangelogEntry.KIND)
public class ChangelogFeed extends BaseFeed<ChangelogFeed, ChangelogEntry> {
    public ChangelogFeed() {
        super(ChangelogEntry.class);
        getCategories().add(ChangelogEntry.CATEGORY);
    }

    public ChangelogFeed(BaseFeed<?, ?> baseFeed) {
        super(ChangelogEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ChangelogFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ChangelogFeed.class, LargestChangestamp.getDefaultDescription(true, false));
        }
    }

    public LargestChangestamp getLargestChangestamp() {
        return (LargestChangestamp) getExtension(LargestChangestamp.class);
    }

    public void setLargestChangestamp(LargestChangestamp largestChangestamp) {
        if (largestChangestamp == null) {
            removeExtension(LargestChangestamp.class);
        } else {
            setExtension(largestChangestamp);
        }
    }

    public boolean hasLargestChangestamp() {
        return hasExtension(LargestChangestamp.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{ChangelogFeed " + super.toString() + "}";
    }
}
