package com.google.gdata.data.acl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = AdditionalRole.XML_NAME, nsAlias = AclNamespace.gAclAlias, nsUri = AclNamespace.gAcl)
public class AdditionalRole extends ValueConstruct {
    public static final AdditionalRole APPENDER = new AdditionalRole("appender");
    public static final AdditionalRole COMMENTER = new AdditionalRole("commenter");
    public static final AdditionalRole EXECUTER = new AdditionalRole("executer");
    private static final String VALUE = "value";
    static final String XML_NAME = "additionalRole";

    public AdditionalRole() {
        this(null);
    }

    public AdditionalRole(String str) {
        super(AclNamespace.gAclNs, XML_NAME, VALUE, str);
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(AdditionalRole.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }
}
