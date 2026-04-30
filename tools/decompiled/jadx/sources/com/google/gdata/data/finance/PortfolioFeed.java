package com.google.gdata.data.finance;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(PortfolioEntry.KIND)
public class PortfolioFeed extends BaseFeed<PortfolioFeed, PortfolioEntry> {
    public PortfolioFeed() {
        super(PortfolioEntry.class);
        getCategories().add(PortfolioEntry.CATEGORY);
    }

    public PortfolioFeed(BaseFeed<?, ?> baseFeed) {
        super(PortfolioEntry.class, baseFeed);
    }

    public String toString() {
        return "{PortfolioFeed " + super.toString() + "}";
    }
}
