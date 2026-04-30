package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(KeywordEntry.KIND)
public class KeywordsFeed extends BaseFeed<KeywordsFeed, KeywordEntry> {
    public KeywordsFeed() {
        super(KeywordEntry.class);
        getCategories().add(KeywordEntry.CATEGORY);
    }

    public KeywordsFeed(BaseFeed<?, ?> baseFeed) {
        super(KeywordEntry.class, baseFeed);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(KeywordsFeed.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(KeywordsFeed.class, Keyword.getDefaultDescription(true, true));
        }
    }

    public List<Keyword> getKeywords() {
        return getRepeatingExtension(Keyword.class);
    }

    public void addKeyword(Keyword keyword) {
        getKeywords().add(keyword);
    }

    public boolean hasKeywords() {
        return hasRepeatingExtension(Keyword.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{KeywordsFeed " + super.toString() + "}";
    }
}
