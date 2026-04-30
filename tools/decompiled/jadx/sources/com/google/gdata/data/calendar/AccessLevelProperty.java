package com.google.gdata.data.calendar;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
public class AccessLevelProperty extends ValueConstruct {
    public static final AccessLevelProperty NONE = new AccessLevelProperty("none");
    public static final AccessLevelProperty READ = new AccessLevelProperty("read");
    public static final AccessLevelProperty FREEBUSY = new AccessLevelProperty("freebusy");
    public static final AccessLevelProperty RESPOND = new AccessLevelProperty("respond");
    public static final AccessLevelProperty OVERRIDE = new AccessLevelProperty("override");
    public static final AccessLevelProperty EDITOR = new AccessLevelProperty("editor");
    public static final AccessLevelProperty OWNER = new AccessLevelProperty(DCXProjectKeys.kDCXKey_Project_owner);
    public static final AccessLevelProperty ROOT = new AccessLevelProperty("root");

    public static ExtensionDescription getDefaultDescription() {
        return new ExtensionDescription(AccessLevelProperty.class, Namespaces.gCalNs, "accesslevel");
    }

    public AccessLevelProperty() {
        this(null);
    }

    public AccessLevelProperty(String str) {
        super(Namespaces.gCalNs, "accesslevel", "value", str);
    }
}
