package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.Content;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.TextConstruct;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CellEntry.KIND)
public class CellEntry extends BaseEntry<CellEntry> {
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#cell";
    public static final Category CATEGORY = new Category(Namespaces.gSpread, KIND);

    public CellEntry() {
        getCategories().add(CATEGORY);
    }

    public CellEntry(int i, int i2, String str) {
        this(new Cell(i, i2, str));
    }

    public CellEntry(Cell cell) {
        this();
        if (cell != null) {
            setExtension(cell);
        }
    }

    public CellEntry(BaseEntry baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    public Cell getCell() {
        return (Cell) getExtension(Cell.class);
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setTitle(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Field is server-generated.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setContent(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Field is server-generated.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setContent(Content content) {
        throw new UnsupportedOperationException("Field is server-generated.");
    }

    @Override // com.google.gdata.data.BaseEntry
    public void setSummary(TextConstruct textConstruct) {
        throw new UnsupportedOperationException("Field is server-generated.");
    }

    public void changeInputValueLocal(String str) {
        setExtension(getCell().withNewInputValue(str));
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(CellEntry.class, Cell.getDefaultDescription(false));
    }

    public void setAutomaticallyGeneratedTitle(TextConstruct textConstruct) {
        this.state.title = textConstruct;
    }

    public void setAutomaticallyGeneratedContent(Content content) {
        this.state.content = content;
    }
}
