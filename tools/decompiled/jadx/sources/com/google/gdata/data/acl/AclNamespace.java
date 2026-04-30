package com.google.gdata.data.acl;

import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class AclNamespace {
    public static final String LINK_REL_ACCESS_CONTROL_LIST = "http://schemas.google.com/acl/2007#accessControlList";
    public static final String LINK_REL_CONTROLLED_OBJECT = "http://schemas.google.com/acl/2007#controlledObject";
    public static final String gAclPrefix = "http://schemas.google.com/acl/2007#";
    public static final String gAclAlias = "gAcl";
    public static final String gAcl = "http://schemas.google.com/acl/2007";
    public static final XmlNamespace gAclNs = new XmlNamespace(gAclAlias, gAcl);

    private AclNamespace() {
    }
}
