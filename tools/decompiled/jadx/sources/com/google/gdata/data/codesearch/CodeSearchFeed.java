package com.google.gdata.data.codesearch;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CodeSearchEntry.CODESEARCH_KIND)
public class CodeSearchFeed extends BaseFeed<CodeSearchFeed, CodeSearchEntry> {
    public CodeSearchFeed() {
        super(CodeSearchEntry.class);
        getCategories().add(CodeSearchEntry.CODESEARCH_CATEGORY);
    }

    public CodeSearchFeed(BaseFeed baseFeed) {
        super(CodeSearchEntry.class, baseFeed);
        getCategories().add(CodeSearchEntry.CODESEARCH_CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
    }
}
