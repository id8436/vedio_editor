package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = BlockedOnUpdate.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class BlockedOnUpdate extends ValueConstruct {
    static final String XML_NAME = "blockedOnUpdate";

    public BlockedOnUpdate() {
        this(null);
    }

    public BlockedOnUpdate(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(BlockedOnUpdate.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{BlockedOnUpdate value=" + getValue() + "}";
    }
}
