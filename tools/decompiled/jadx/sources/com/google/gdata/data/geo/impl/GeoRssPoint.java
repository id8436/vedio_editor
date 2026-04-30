package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;

/* JADX INFO: loaded from: classes3.dex */
public final class GeoRssPoint extends PointConstruct {
    static final String NAME = "point";

    public GeoRssPoint() {
        super(Namespaces.GEO_RSS_NAMESPACE, NAME);
    }

    public GeoRssPoint(Double d2, Double d3) {
        super(Namespaces.GEO_RSS_NAMESPACE, NAME, d2, d3);
    }

    public GeoRssPoint(Point point) {
        super(Namespaces.GEO_RSS_NAMESPACE, NAME, point);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GeoRssPoint.class);
        extensionDescription.setNamespace(Namespaces.GEO_RSS_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }
}
