package com.google.gdata.data.spreadsheet;

import com.google.gdata.client.spreadsheet.SpreadsheetService;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.OutOfLineContent;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(WorksheetEntry.KIND)
public class WorksheetEntry extends BaseEntry<WorksheetEntry> {
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#worksheet";
    public static final Category CATEGORY = new Category(Namespaces.gSpread, KIND);

    public WorksheetEntry() {
        getCategories().add(CATEGORY);
    }

    public WorksheetEntry(int i, int i2) {
        getCategories().add(CATEGORY);
        addExtension(new RowCount(i));
        addExtension(new ColCount(i2));
    }

    public WorksheetEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(WorksheetEntry.class, RowCount.getDefaultDescription());
        extensionProfile.declare(WorksheetEntry.class, ColCount.getDefaultDescription());
    }

    public URL getListFeedUrl() {
        try {
            return new URL(getFeedUrlString("http://schemas.google.com/spreadsheets/2006#listfeed"));
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Error in GData server", e2);
        }
    }

    public URL getCellFeedUrl() {
        try {
            return new URL(getFeedUrlString("http://schemas.google.com/spreadsheets/2006#cellsfeed"));
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Error in GData server", e2);
        }
    }

    private String getFeedUrlString(String str) {
        if (this.state.service.getProtocolVersion().isCompatible(SpreadsheetService.Versions.V1)) {
            return getLink(str, ILink.Type.ATOM).getHref();
        }
        if (str.equals("http://schemas.google.com/spreadsheets/2006#listfeed")) {
            return ((OutOfLineContent) getContent()).getUri();
        }
        return getLink(str, ILink.Type.ATOM).getHref();
    }

    public int getRowCount() {
        RowCount rowCount = (RowCount) getExtension(RowCount.class);
        if (rowCount != null) {
            return rowCount.getCount();
        }
        return 0;
    }

    public void setRowCount(int i) {
        setExtension(new RowCount(i));
    }

    public int getColCount() {
        ColCount colCount = (ColCount) getExtension(ColCount.class);
        if (colCount != null) {
            return colCount.getCount();
        }
        return 0;
    }

    public void setColCount(int i) {
        setExtension(new ColCount(i));
    }
}
