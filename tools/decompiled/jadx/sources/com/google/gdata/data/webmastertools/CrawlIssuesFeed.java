package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CrawlIssueEntry.KIND)
public class CrawlIssuesFeed extends BaseFeed<CrawlIssuesFeed, CrawlIssueEntry> {
    public CrawlIssuesFeed() {
        super(CrawlIssueEntry.class);
        getCategories().add(CrawlIssueEntry.CATEGORY);
    }

    public CrawlIssuesFeed(BaseFeed<?, ?> baseFeed) {
        super(CrawlIssueEntry.class, baseFeed);
    }

    public String toString() {
        return "{CrawlIssuesFeed " + super.toString() + "}";
    }
}
