package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.TextConstruct;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ListEntry.KIND)
public class ListEntry extends BaseEntry<ListEntry> {
    private CustomElementCollection customElements;
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#list";
    public static final Category CATEGORY = new Category(Namespaces.gSpread, KIND);

    public ListEntry() {
        getCategories().add(CATEGORY);
        init();
    }

    public ListEntry(String str, String str2) {
        this();
        setId(str);
        setVersionId(str2);
    }

    public ListEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
        if (getExtension(CustomElementCollection.class) == null) {
            init();
        }
    }

    private void init() {
        this.customElements = new CustomElementCollection();
        setExtension(this.customElements);
    }

    public CustomElementCollection getCustomElements() {
        return this.customElements;
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setTitle(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Title is server-generated for Google Spreadsheets list access.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setContent(Content content) {
        throw new UnsupportedOperationException("Content is server-generated for Google Spreadsheets list access.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setContent(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Content is server-generated for Google Spreadsheets list access.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setSummary(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Summary is server-generated for Google Spreadsheets list access.");
    }

    public void setAutomaticallyGeneratedTitle(TextConstruct textConstruct) {
        this.state.title = textConstruct;
    }

    public void setAutomaticallyGeneratedContent(Content content) {
        this.state.content = content;
    }

    public void setAutomaticallyGeneratedSummary(TextConstruct textConstruct) {
        this.state.summary = textConstruct;
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(ListEntry.class, CustomElementCollection.getDefaultDescription());
    }
}
