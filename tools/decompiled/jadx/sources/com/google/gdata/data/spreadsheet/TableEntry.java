package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.spreadsheet.SpreadsheetLink;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(TableEntry.KIND)
public class TableEntry extends BaseEntry<TableEntry> {
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#table";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public TableEntry() {
        getCategories().add(CATEGORY);
    }

    public TableEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TableEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(TableEntry.class, Data.getDefaultDescription(true, false));
            new Data().declareExtensions(extensionProfile);
            extensionProfile.declare(TableEntry.class, Header.getDefaultDescription(true, false));
            extensionProfile.declare(TableEntry.class, Worksheet.getDefaultDescription(true, false));
        }
    }

    public Data getData() {
        return (Data) getExtension(Data.class);
    }

    public void setData(Data data) {
        if (data == null) {
            removeExtension(Data.class);
        } else {
            setExtension(data);
        }
    }

    public boolean hasData() {
        return hasExtension(Data.class);
    }

    public Header getHeader() {
        return (Header) getExtension(Header.class);
    }

    public void setHeader(Header header) {
        if (header == null) {
            removeExtension(Header.class);
        } else {
            setExtension(header);
        }
    }

    public boolean hasHeader() {
        return hasExtension(Header.class);
    }

    public Worksheet getWorksheet() {
        return (Worksheet) getExtension(Worksheet.class);
    }

    public void setWorksheet(Worksheet worksheet) {
        if (worksheet == null) {
            removeExtension(Worksheet.class);
        } else {
            setExtension(worksheet);
        }
    }

    public boolean hasWorksheet() {
        return hasExtension(Worksheet.class);
    }

    public Link getRecordsFeedLink() {
        return getLink(SpreadsheetLink.Rel.RECORDS_FEED, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{TableEntry " + super.toString() + "}";
    }
}
