package com.google.gdata.data.acl;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "role", nsAlias = AclNamespace.gAclAlias, nsUri = AclNamespace.gAcl)
public class AclRole extends ValueConstruct {
    static final String ROLE = "role";
    private static final String VALUE = "value";
    public static final AclRole NONE = new AclRole("none");
    public static final AclRole PEEKER = new AclRole("peeker");
    public static final AclRole READER = new AclRole("reader");
    public static final AclRole WRITER = new AclRole("writer");
    public static final AclRole OWNER = new AclRole(DCXProjectKeys.kDCXKey_Project_owner);
    public static final AclRole COMMENTER = new AclRole("commenter");

    public AclRole() {
        this(null);
    }

    public AclRole(String str) {
        super(AclNamespace.gAclNs, "role", VALUE, str);
    }
}
