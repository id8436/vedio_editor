package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Cc.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Cc extends ExtensionPoint {
    static final String XML_NAME = "cc";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Cc.class)) {
            extensionProfile.declare(Cc.class, Uri.class);
            extensionProfile.declare(Cc.class, Username.getDefaultDescription(true, false));
        }
    }

    public Uri getUri() {
        return (Uri) getExtension(Uri.class);
    }

    public void setUri(Uri uri) {
        if (uri == null) {
            removeExtension(Uri.class);
        } else {
            setExtension(uri);
        }
    }

    public boolean hasUri() {
        return hasExtension(Uri.class);
    }

    public Username getUsername() {
        return (Username) getExtension(Username.class);
    }

    public void setUsername(Username username) {
        if (username == null) {
            removeExtension(Username.class);
        } else {
            setExtension(username);
        }
    }

    public boolean hasUsername() {
        return hasExtension(Username.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Cc.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Cc}";
    }
}
