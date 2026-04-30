package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = RepositoryUrl.XML_NAME, nsAlias = ProjectHostingNamespace.PROJECTS_ALIAS, nsUri = ProjectHostingNamespace.PROJECTS)
public class RepositoryUrl extends ValueConstruct {
    static final String XML_NAME = "repositoryUrl";

    public RepositoryUrl() {
        this(null);
    }

    public RepositoryUrl(String str) {
        super(ProjectHostingNamespace.PROJECTS_NS, XML_NAME, null, str);
        setRequired(false);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(RepositoryUrl.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{RepositoryUrl value=" + getValue() + "}";
    }
}
