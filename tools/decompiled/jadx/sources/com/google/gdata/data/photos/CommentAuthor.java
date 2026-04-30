package com.google.gdata.data.photos;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Person;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "author", nsAlias = "atom", nsUri = com.google.gdata.util.Namespaces.atom)
public class CommentAuthor extends Person {
    static final String XML_NAME = "author";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CommentAuthor.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CommentAuthor.class, GphotoNickname.class);
            extensionProfile.declare(CommentAuthor.class, GphotoThumbnail.class);
            extensionProfile.declare(CommentAuthor.class, GphotoUsername.class);
        }
    }

    public GphotoNickname getNickname() {
        return (GphotoNickname) getExtension(GphotoNickname.class);
    }

    public void setNickname(GphotoNickname gphotoNickname) {
        if (gphotoNickname == null) {
            removeExtension(GphotoNickname.class);
        } else {
            setExtension(gphotoNickname);
        }
    }

    public boolean hasNickname() {
        return hasExtension(GphotoNickname.class);
    }

    public GphotoThumbnail getThumbnail() {
        return (GphotoThumbnail) getExtension(GphotoThumbnail.class);
    }

    public void setThumbnail(GphotoThumbnail gphotoThumbnail) {
        if (gphotoThumbnail == null) {
            removeExtension(GphotoThumbnail.class);
        } else {
            setExtension(gphotoThumbnail);
        }
    }

    public boolean hasThumbnail() {
        return hasExtension(GphotoThumbnail.class);
    }

    public GphotoUsername getUsername() {
        return (GphotoUsername) getExtension(GphotoUsername.class);
    }

    public void setUsername(GphotoUsername gphotoUsername) {
        if (gphotoUsername == null) {
            removeExtension(GphotoUsername.class);
        } else {
            setExtension(gphotoUsername);
        }
    }

    public boolean hasUsername() {
        return hasExtension(GphotoUsername.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(CommentAuthor.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{CommentAuthor " + super.toString() + "}";
    }
}
