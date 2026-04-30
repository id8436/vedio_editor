package com.google.gdata.data.calendar;

import com.google.gdata.data.acl.AclRole;

/* JADX INFO: loaded from: classes3.dex */
public final class CalendarAclRole {
    public static final AclRole ROOT = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.ROOT.getValue());
    public static final AclRole OWNER = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.OWNER.getValue());
    public static final AclRole EDITOR = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.EDITOR.getValue());
    public static final AclRole OVERRIDE = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.OVERRIDE.getValue());
    public static final AclRole RESPOND = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.RESPOND.getValue());
    public static final AclRole FREEBUSY = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.FREEBUSY.getValue());
    public static final AclRole READ = new AclRole(Namespaces.gCalPrefix + AccessLevelProperty.READ.getValue());
    public static final AclRole NONE = AclRole.NONE;

    private CalendarAclRole() {
    }
}
