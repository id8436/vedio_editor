package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(SpreadsheetEntry.KIND)
public class SpreadsheetFeed extends BaseFeed<SpreadsheetFeed, SpreadsheetEntry> {
    public SpreadsheetFeed() {
        super(SpreadsheetEntry.class);
        getCategories().add(SpreadsheetEntry.CATEGORY);
    }

    public SpreadsheetFeed(BaseFeed baseFeed) {
        super(SpreadsheetEntry.class, baseFeed);
        getCategories().add(SpreadsheetEntry.CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
