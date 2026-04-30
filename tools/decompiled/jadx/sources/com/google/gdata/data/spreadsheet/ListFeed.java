package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ListEntry.KIND)
public class ListFeed extends BaseFeed<ListFeed, ListEntry> {
    public ListFeed() {
        super(ListEntry.class);
        getCategories().add(ListEntry.CATEGORY);
    }

    public ListFeed(BaseFeed baseFeed) {
        super(ListEntry.class, baseFeed);
        getCategories().add(ListEntry.CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
