package com.google.gdata.data.finance;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(TransactionEntry.KIND)
public class TransactionFeed extends BaseFeed<TransactionFeed, TransactionEntry> {
    public TransactionFeed() {
        super(TransactionEntry.class);
        getCategories().add(TransactionEntry.CATEGORY);
    }

    public TransactionFeed(BaseFeed<?, ?> baseFeed) {
        super(TransactionEntry.class, baseFeed);
    }

    public String toString() {
        return "{TransactionFeed " + super.toString() + "}";
    }
}
