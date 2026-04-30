package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(WorksheetEntry.KIND)
public class WorksheetFeed extends BaseFeed<WorksheetFeed, WorksheetEntry> {
    public WorksheetFeed() {
        super(WorksheetEntry.class);
        getCategories().add(WorksheetEntry.CATEGORY);
    }

    public WorksheetFeed(BaseFeed baseFeed) {
        super(WorksheetEntry.class, baseFeed);
        getCategories().add(WorksheetEntry.CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
