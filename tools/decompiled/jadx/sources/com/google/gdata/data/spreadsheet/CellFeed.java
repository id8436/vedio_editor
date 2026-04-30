package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.batch.BatchUtils;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CellEntry.KIND)
public class CellFeed extends BaseFeed<CellFeed, CellEntry> {
    public CellFeed() {
        super(CellEntry.class);
        getCategories().add(CellEntry.CATEGORY);
    }

    public CellFeed(BaseFeed baseFeed) {
        super(CellEntry.class, baseFeed);
        getCategories().add(CellEntry.CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(CellFeed.class, RowCount.getDefaultDescription());
        extensionProfile.declare(CellFeed.class, ColCount.getDefaultDescription());
        super.declareExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }

    public int getRowCount() {
        return ((RowCount) getExtension(RowCount.class)).getCount();
    }

    public int getColCount() {
        return ((ColCount) getExtension(ColCount.class)).getCount();
    }
}
