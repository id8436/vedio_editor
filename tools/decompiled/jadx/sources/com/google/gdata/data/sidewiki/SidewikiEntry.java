package com.google.gdata.data.sidewiki;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.extensions.Rating;
import com.google.gdata.data.extensions.ResourceId;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiEntry extends BaseEntry<SidewikiEntry> {
    public SidewikiEntry() {
        setKind("sidewiki#sidewikiEntry");
    }

    public SidewikiEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SidewikiEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SidewikiEntry.class, SidewikiAuthor.getDefaultDescription(false, true));
            new SidewikiAuthor().declareExtensions(extensionProfile);
            extensionProfile.declare(SidewikiEntry.class, Source.class);
            extensionProfile.declare(SidewikiEntry.class, new ExtensionDescription(Rating.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "rating", false, false, false));
            extensionProfile.declare(SidewikiEntry.class, ResourceId.getDefaultDescription(true, false));
            extensionProfile.declare(SidewikiEntry.class, Usefulness.class);
        }
    }

    public Source getEntrySource() {
        return (Source) getExtension(Source.class);
    }

    public void setEntrySource(Source source) {
        if (source == null) {
            removeExtension(Source.class);
        } else {
            setExtension(source);
        }
    }

    public boolean hasEntrySource() {
        return hasExtension(Source.class);
    }

    public Rating getRating() {
        return (Rating) getExtension(Rating.class);
    }

    public void setRating(Rating rating) {
        if (rating == null) {
            removeExtension(Rating.class);
        } else {
            setExtension(rating);
        }
    }

    public boolean hasRating() {
        return hasExtension(Rating.class);
    }

    public ResourceId getResourceId() {
        return (ResourceId) getExtension(ResourceId.class);
    }

    public void setResourceId(ResourceId resourceId) {
        if (resourceId == null) {
            removeExtension(ResourceId.class);
        } else {
            setExtension(resourceId);
        }
    }

    public boolean hasResourceId() {
        return hasExtension(ResourceId.class);
    }

    public Usefulness getUsefulness() {
        return (Usefulness) getExtension(Usefulness.class);
    }

    public void setUsefulness(Usefulness usefulness) {
        if (usefulness == null) {
            removeExtension(Usefulness.class);
        } else {
            setExtension(usefulness);
        }
    }

    public boolean hasUsefulness() {
        return hasExtension(Usefulness.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{SidewikiEntry " + super.toString() + "}";
    }
}
