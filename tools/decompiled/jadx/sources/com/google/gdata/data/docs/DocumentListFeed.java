package com.google.gdata.data.docs;

import com.google.gdata.data.Kind;
import com.google.gdata.data.media.MediaFeed;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(DocumentListEntry.KIND)
public class DocumentListFeed extends MediaFeed<DocumentListFeed, DocumentListEntry> {
    public static final String DOCUMENT_NAMESPACE = "http://schemas.google.com/docs/2007";

    public DocumentListFeed() {
        super(DocumentListEntry.class);
        getCategories().add(DocumentListEntry.CATEGORY);
    }
}
