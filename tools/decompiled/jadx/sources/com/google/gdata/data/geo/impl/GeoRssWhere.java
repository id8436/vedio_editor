package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class GeoRssWhere extends ExtensionPoint implements Box, Point {
    static final String NAME = "where";

    public GeoRssWhere() {
    }

    public GeoRssWhere(Double d2, Double d3) {
        this(new GmlPoint(d2, d3));
    }

    public GeoRssWhere(Point point) {
        if (point != null) {
            setExtension(point instanceof GmlPoint ? point : new GmlPoint(point));
        }
    }

    public GeoRssWhere(Double d2, Double d3, Double d4, Double d5) {
        this(new GmlEnvelope(d2, d3, d4, d5));
    }

    public GeoRssWhere(Point point, Point point2) {
        this(new GmlEnvelope(point, point2));
    }

    public GeoRssWhere(Box box) {
        if (box != null) {
            setExtension(box instanceof GmlEnvelope ? box : new GmlEnvelope(box));
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GeoRssWhere.class);
        extensionDescription.setNamespace(Namespaces.GEO_RSS_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(GeoRssWhere.class, GmlPoint.getDefaultDescription(false));
        new GmlPoint().declareExtensions(extensionProfile);
        extensionProfile.declare(GeoRssWhere.class, GmlEnvelope.getDefaultDescription(false));
        new GmlEnvelope().declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLatitude() {
        GmlPoint gmlPoint = (GmlPoint) getExtension(GmlPoint.class);
        if (gmlPoint != null) {
            return gmlPoint.getLatitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLongitude() {
        GmlPoint gmlPoint = (GmlPoint) getExtension(GmlPoint.class);
        if (gmlPoint != null) {
            return gmlPoint.getLongitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public void setGeoLocation(Double d2, Double d3) {
        GmlPoint gmlPoint = (GmlPoint) getExtension(GmlPoint.class);
        if (gmlPoint != null) {
            gmlPoint.setGeoLocation(d2, d3);
        } else if (d2 != null || d3 != null) {
            GmlPoint gmlPoint2 = new GmlPoint();
            setExtension(gmlPoint2);
            gmlPoint2.setGeoLocation(d2, d3);
        }
    }

    @Override // com.google.gdata.data.geo.Box
    public GmlLowerCorner getLowerLeft() {
        GmlEnvelope gmlEnvelope = (GmlEnvelope) getExtension(GmlEnvelope.class);
        if (gmlEnvelope != null) {
            return gmlEnvelope.getLowerLeft();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Box
    public GmlUpperCorner getUpperRight() {
        GmlEnvelope gmlEnvelope = (GmlEnvelope) getExtension(GmlEnvelope.class);
        if (gmlEnvelope != null) {
            return gmlEnvelope.getUpperRight();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Box
    public void setGeoLocation(Point point, Point point2) {
        GmlEnvelope gmlEnvelope = (GmlEnvelope) getExtension(GmlEnvelope.class);
        if (gmlEnvelope != null) {
            gmlEnvelope.setGeoLocation(point, point2);
        } else if (point != null || point2 != null) {
            GmlEnvelope gmlEnvelope2 = new GmlEnvelope();
            setExtension(gmlEnvelope2);
            gmlEnvelope2.setGeoLocation(point, point2);
        }
    }

    public boolean hasPoint() {
        return getExtension(GmlPoint.class) != null;
    }

    public boolean hasBox() {
        return getExtension(GmlEnvelope.class) != null;
    }

    public void clearPoint() {
        removeExtension(GmlPoint.class);
    }

    public void clearBox() {
        removeExtension(GmlEnvelope.class);
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.GEO_RSS_NAMESPACE, NAME, null, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.GEO_RSS_NAMESPACE, NAME);
    }
}
