package com.google.gdata.data.docs;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Link;
import com.google.gdata.data.docs.DocumentListLink;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentExportFeed extends BaseFeed<DocumentExportFeed, DocumentExportEntry> {
    public DocumentExportFeed() {
        super(DocumentExportEntry.class);
    }

    public DocumentExportFeed(BaseFeed<?, ?> baseFeed) {
        super(DocumentExportEntry.class, baseFeed);
    }

    public Link getDocumentExportLink() {
        return getLink(DocumentListLink.Rel.EXPORT, "application/zip");
    }

    public String toString() {
        return "{DocumentExportFeed " + super.toString() + "}";
    }
}
