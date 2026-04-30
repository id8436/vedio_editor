package com.google.gdata.data.spreadsheet;

import com.google.gdata.client.spreadsheet.SpreadsheetService;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.OutOfLineContent;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(SpreadsheetEntry.KIND)
public class SpreadsheetEntry extends BaseEntry<SpreadsheetEntry> {
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#spreadsheet";
    public static final Category CATEGORY = new Category(Namespaces.gSpread, KIND);

    public SpreadsheetEntry() {
        getCategories().add(CATEGORY);
    }

    public SpreadsheetEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    public Link getSpreadsheetLink() {
        return super.getHtmlLink();
    }

    public URL getWorksheetFeedUrl() {
        try {
            return new URL(getWorksheetFeedUrlString());
        } catch (MalformedURLException e2) {
            throw new RuntimeException("Error in GData server", e2);
        }
    }

    private String getWorksheetFeedUrlString() {
        return this.state.service.getProtocolVersion().isCompatible(SpreadsheetService.Versions.V1) ? getLink("http://schemas.google.com/spreadsheets/2006#worksheetsfeed", ILink.Type.ATOM).getHref() : ((OutOfLineContent) getContent()).getUri();
    }

    public List<WorksheetEntry> getWorksheets() throws IOException, ServiceException {
        return ((WorksheetFeed) this.state.service.getFeed(getWorksheetFeedUrl(), WorksheetFeed.class)).getEntries();
    }

    public WorksheetEntry getDefaultWorksheet() throws IOException, ServiceException {
        return (WorksheetEntry) this.state.service.getEntry(new URL(getWorksheetFeedUrlString() + "/default"), WorksheetEntry.class);
    }

    public String getKey() {
        String str = this.state.id;
        int iLastIndexOf = str.lastIndexOf(URIUtil.SLASH);
        if (iLastIndexOf > 0) {
            return str.substring(iLastIndexOf + 1);
        }
        return str;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
    }
}
