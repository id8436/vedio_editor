package com.google.gdata.data.docs;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.spreadsheet.WorksheetEntry;
import com.google.gdata.data.spreadsheet.WorksheetFeed;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(SpreadsheetEntry.KIND)
public class SpreadsheetEntry extends DocumentListEntry {
    public static final String KIND = "http://schemas.google.com/docs/2007#spreadsheet";
    public static final String LABEL = "spreadsheet";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, LABEL);

    public SpreadsheetEntry() {
        getCategories().remove(DocumentListEntry.CATEGORY);
        getCategories().add(CATEGORY);
    }

    public SpreadsheetEntry(BaseEntry baseEntry) {
        super(baseEntry);
    }

    public URL getWorksheetFeedUrl() {
        try {
            return new URL(getLink("http://schemas.google.com/spreadsheets/2006#worksheetsfeed", ILink.Type.ATOM).getHref());
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Error in GData server", e2);
        }
    }

    public List<WorksheetEntry> getWorksheets() throws IOException, ServiceException {
        return ((WorksheetFeed) this.state.service.getFeed(getWorksheetFeedUrl(), WorksheetFeed.class)).getEntries();
    }

    public WorksheetEntry getDefaultWorksheet() throws IOException, ServiceException {
        return (WorksheetEntry) this.state.service.getEntry(new URL(getLink("http://schemas.google.com/spreadsheets/2006#worksheetsfeed", ILink.Type.ATOM).getHref() + "/default"), WorksheetEntry.class);
    }
}
