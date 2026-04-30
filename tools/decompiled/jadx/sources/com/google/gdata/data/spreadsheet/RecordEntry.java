package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(RecordEntry.KIND)
public class RecordEntry extends BaseEntry<RecordEntry> {
    public static final String KIND = "http://schemas.google.com/spreadsheets/2006#record";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND);

    public RecordEntry() {
        getCategories().add(CATEGORY);
    }

    public RecordEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(RecordEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(RecordEntry.class, Field.getDefaultDescription(false, true));
        }
    }

    public List<Field> getFields() {
        return getRepeatingExtension(Field.class);
    }

    public void addField(Field field) {
        getFields().add(field);
    }

    public boolean hasFields() {
        return hasRepeatingExtension(Field.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{RecordEntry " + super.toString() + "}";
    }
}
