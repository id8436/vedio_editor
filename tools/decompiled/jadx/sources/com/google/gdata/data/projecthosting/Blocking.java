package com.google.gdata.data.projecthosting;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Blocking.XML_NAME, nsAlias = ProjectHostingNamespace.ISSUES_ALIAS, nsUri = ProjectHostingNamespace.ISSUES)
public class Blocking extends ExtensionPoint {
    static final String XML_NAME = "blocking";

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Blocking.class)) {
            extensionProfile.declare(Blocking.class, Id.getDefaultDescription(true, false));
            extensionProfile.declare(Blocking.class, Project.class);
        }
    }

    public Id getId() {
        return (Id) getExtension(Id.class);
    }

    public void setId(Id id) {
        if (id == null) {
            removeExtension(Id.class);
        } else {
            setExtension(id);
        }
    }

    public boolean hasId() {
        return hasExtension(Id.class);
    }

    public Project getProject() {
        return (Project) getExtension(Project.class);
    }

    public void setProject(Project project) {
        if (project == null) {
            removeExtension(Project.class);
        } else {
            setExtension(project);
        }
    }

    public boolean hasProject() {
        return hasExtension(Project.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Blocking.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    public String toString() {
        return "{Blocking}";
    }
}
