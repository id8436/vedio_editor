package com.google.gdata.data.sidewiki;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Person;
import com.google.gdata.data.extensions.Rating;
import com.google.gdata.data.extensions.ResourceId;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "author", nsAlias = "atom", nsUri = Namespaces.atom)
public class SidewikiAuthor extends Person {
    static final String XML_NAME = "author";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SidewikiAuthor.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SidewikiAuthor.class, SidewikiUserDescription.class);
            extensionProfile.declare(SidewikiAuthor.class, EntriesNumber.class);
            extensionProfile.declare(SidewikiAuthor.class, new ExtensionDescription(Rating.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "rating", false, false, false));
            extensionProfile.declare(SidewikiAuthor.class, ResourceId.getDefaultDescription(true, false));
            extensionProfile.declare(SidewikiAuthor.class, SidewikiThumbnail.class);
        }
    }

    public SidewikiUserDescription getDescription() {
        return (SidewikiUserDescription) getExtension(SidewikiUserDescription.class);
    }

    public void setDescription(SidewikiUserDescription sidewikiUserDescription) {
        if (sidewikiUserDescription == null) {
            removeExtension(SidewikiUserDescription.class);
        } else {
            setExtension(sidewikiUserDescription);
        }
    }

    public boolean hasDescription() {
        return hasExtension(SidewikiUserDescription.class);
    }

    public EntriesNumber getNumEntries() {
        return (EntriesNumber) getExtension(EntriesNumber.class);
    }

    public void setNumEntries(EntriesNumber entriesNumber) {
        if (entriesNumber == null) {
            removeExtension(EntriesNumber.class);
        } else {
            setExtension(entriesNumber);
        }
    }

    public boolean hasNumEntries() {
        return hasExtension(EntriesNumber.class);
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

    public SidewikiThumbnail getThumbnail() {
        return (SidewikiThumbnail) getExtension(SidewikiThumbnail.class);
    }

    public void setThumbnail(SidewikiThumbnail sidewikiThumbnail) {
        if (sidewikiThumbnail == null) {
            removeExtension(SidewikiThumbnail.class);
        } else {
            setExtension(sidewikiThumbnail);
        }
    }

    public boolean hasThumbnail() {
        return hasExtension(SidewikiThumbnail.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(SidewikiAuthor.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{SidewikiAuthor " + super.toString() + "}";
    }
}
