package com.google.gdata.data.photos;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#tag")
public class TagEntry extends GphotoEntry<TagEntry> implements AtomData, TagData {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#tag");
    public static final String KIND = "http://schemas.google.com/photos/2007#tag";

    public TagEntry() {
        getCategories().add(CATEGORY);
    }

    public TagEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.photos.GphotoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TagEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(TagEntry.class, GphotoWeight.class);
        }
    }

    public GphotoWeight getWeightExt() {
        return (GphotoWeight) getExtension(GphotoWeight.class);
    }

    public void setWeightExt(GphotoWeight gphotoWeight) {
        if (gphotoWeight == null) {
            removeExtension(GphotoWeight.class);
        } else {
            setExtension(gphotoWeight);
        }
    }

    public boolean hasWeightExt() {
        return hasExtension(GphotoWeight.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{TagEntry " + super.toString() + "}";
    }

    @Override // com.google.gdata.data.photos.TagData
    public Integer getWeight() throws ParseException {
        GphotoWeight weightExt = getWeightExt();
        if (weightExt == null) {
            return null;
        }
        return weightExt.getValue();
    }

    @Override // com.google.gdata.data.photos.TagData
    public void setWeight(Integer num) {
        setWeightExt(num == null ? null : new GphotoWeight(num));
    }
}
