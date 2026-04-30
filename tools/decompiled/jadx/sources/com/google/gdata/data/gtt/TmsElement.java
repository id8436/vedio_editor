package com.google.gdata.data.gtt;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Link;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "translationMemory", nsAlias = GttNamespace.GTT_ALIAS, nsUri = GttNamespace.GTT)
public class TmsElement extends ExtensionPoint {
    static final String XML_NAME = "translationMemory";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TmsElement.class)) {
            extensionProfile.declare(TmsElement.class, new ExtensionDescription(Link.class, new XmlNamespace("atom", Namespaces.atom), "link", true, true, false));
        }
    }

    public List<Link> getLinks() {
        return getRepeatingExtension(Link.class);
    }

    public void addLink(Link link) {
        getLinks().add(link);
    }

    public boolean hasLinks() {
        return hasRepeatingExtension(Link.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(TmsElement.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{TmsElement}";
    }
}
