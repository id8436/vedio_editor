package com.google.gdata.data.codesearch;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CodeSearchEntry.CODESEARCH_KIND)
public class CodeSearchEntry extends BaseEntry<CodeSearchEntry> {
    public static final String CODESEARCH_KIND = "http://schemas.google.com/codesearch/2006#result";
    public static final Category CODESEARCH_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", CODESEARCH_KIND);

    public CodeSearchEntry() {
        getCategories().add(CODESEARCH_CATEGORY);
    }

    public CodeSearchEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(CODESEARCH_CATEGORY);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(CodeSearchEntry.class, File.getDefaultDescription());
        extensionProfile.declare(CodeSearchEntry.class, Package.getDefaultDescription());
        extensionProfile.declare(CodeSearchEntry.class, Match.getDefaultDescription());
    }

    public File getFile() {
        return (File) getExtension(File.class);
    }

    public Package getPackage() {
        return (Package) getExtension(Package.class);
    }

    public List<Match> getMatches() {
        return getRepeatingExtension(Match.class);
    }
}
