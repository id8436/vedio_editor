package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;

/* JADX INFO: loaded from: classes3.dex */
public class GmlUpperCorner extends PointConstruct {
    static final String NAME = "upperCorner";

    public GmlUpperCorner() {
        super(Namespaces.GML_NAMESPACE, NAME);
    }

    public GmlUpperCorner(Double d2, Double d3) {
        super(Namespaces.GML_NAMESPACE, NAME, d2, d3);
    }

    public GmlUpperCorner(Point point) {
        super(Namespaces.GML_NAMESPACE, NAME, point);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GmlUpperCorner.class);
        extensionDescription.setNamespace(Namespaces.GML_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }
}
