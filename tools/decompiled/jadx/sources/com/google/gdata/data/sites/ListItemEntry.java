package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;
import com.google.gdata.data.spreadsheet.Field;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(ListItemEntry.KIND)
public class ListItemEntry extends BaseContentEntry<ListItemEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#listitem";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "listitem");

    public ListItemEntry() {
        getCategories().add(CATEGORY);
    }

    public ListItemEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(ListItemEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(ListItemEntry.class, Field.getDefaultDescription(false, true));
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

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{ListItemEntry " + super.toString() + "}";
    }
}
