package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = ProjectLabel.XML_NAME, nsAlias = ProjectHostingNamespace.PROJECTS_ALIAS, nsUri = ProjectHostingNamespace.PROJECTS)
public class ProjectLabel extends ValueConstruct {
    static final String XML_NAME = "projectLabel";

    public ProjectLabel() {
        this(null);
    }

    public ProjectLabel(String str) {
        super(ProjectHostingNamespace.PROJECTS_NS, XML_NAME, null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(ProjectLabel.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{ProjectLabel value=" + getValue() + "}";
    }
}
