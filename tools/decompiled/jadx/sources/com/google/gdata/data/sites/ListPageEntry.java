package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.sites.SitesLink;
import com.google.gdata.data.spreadsheet.Data;
import com.google.gdata.data.spreadsheet.Header;
import com.google.gdata.data.spreadsheet.Worksheet;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ListPageEntry.KIND)
public class ListPageEntry extends BasePageEntry<ListPageEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#listpage";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "listpage");

    public ListPageEntry() {
        getCategories().add(CATEGORY);
    }

    public ListPageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ListPageEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ListPageEntry.class, Data.getDefaultDescription(true, false));
            new Data().declareExtensions(extensionProfile);
            extensionProfile.declare(ListPageEntry.class, new ExtensionDescription(FeedLink.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "feedLink", true, false, false));
            new FeedLink().declareExtensions(extensionProfile);
            extensionProfile.declare(ListPageEntry.class, Header.getDefaultDescription(true, false));
            extensionProfile.declare(ListPageEntry.class, Worksheet.getDefaultDescription(true, false));
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

    public FeedLink getFeedLink() {
        return (FeedLink) getExtension(FeedLink.class);
    }

    public void setFeedLink(FeedLink feedLink) {
        if (feedLink == null) {
            removeExtension(FeedLink.class);
        } else {
            setExtension(feedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(FeedLink.class);
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

    public Link getAtomAttachmentsLink() {
        return getLink(SitesLink.Rel.ATTACHMENTS, ILink.Type.ATOM);
    }

    public Link getAtomRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    public Link getHtmlAttachmentsLink() {
        return getLink(SitesLink.Rel.ATTACHMENTS, ILink.Type.HTML);
    }

    public Link getHtmlRepliesLink() {
        return getLink("replies", ILink.Type.HTML);
    }

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{ListPageEntry " + super.toString() + "}";
    }
}
