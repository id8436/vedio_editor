package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "project", nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Project extends ValueConstruct {
    static final String XML_NAME = "project";

    public Project() {
        this(null);
    }

    public Project(String str) {
        super(ProjectHostingNamespace.ISSUES_NS, "project", null, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Project.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Project value=" + getValue() + "}";
    }
}
