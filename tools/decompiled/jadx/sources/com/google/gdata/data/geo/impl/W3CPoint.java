package com.google.gdata.data.geo.impl;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.GeoLat;
import com.google.gdata.data.geo.GeoLong;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class W3CPoint extends ExtensionPoint implements Point {
    static final String NAME = "Point";

    public W3CPoint() {
    }

    public W3CPoint(Double d2, Double d3) {
        setGeoLocation(d2, d3);
    }

    public W3CPoint(Point point) {
        this(point == null ? null : point.getLatitude(), point != null ? point.getLongitude() : null);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(W3CPoint.class);
        extensionDescription.setNamespace(Namespaces.W3C_GEO_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(W3CPoint.class, ExtensionDescription.getDefaultDescription(GeoLat.class));
        extensionProfile.declare(W3CPoint.class, ExtensionDescription.getDefaultDescription(GeoLong.class));
        super.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLatitude() {
        GeoLat geoLat = (GeoLat) getExtension(GeoLat.class);
        if (geoLat != null) {
            return geoLat.getLatitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLongitude() {
        GeoLong geoLong = (GeoLong) getExtension(GeoLong.class);
        if (geoLong != null) {
            return geoLong.getLongitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public void setGeoLocation(Double d2, Double d3) {
        if (d2 != null && d3 != null) {
            setExtension(new GeoLat(d2));
            setExtension(new GeoLong(d3));
        } else {
            if (d2 != null || d3 != null) {
                throw new IllegalArgumentException("'lat' and 'lon' must either both be null or non-null.");
            }
            removeExtension(GeoLat.class);
            removeExtension(GeoLong.class);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.W3C_GEO_NAMESPACE, NAME, null, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.W3C_GEO_NAMESPACE, NAME);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler(extensionProfile);
    }

    public class Handler extends ExtensionPoint.ExtensionHandler {
        public Handler(ExtensionProfile extensionProfile) {
            super(W3CPoint.this, extensionProfile, W3CPoint.class);
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            super.processEndElement();
            Extension extension = W3CPoint.this.getExtension(GeoLat.class);
            Extension extension2 = W3CPoint.this.getExtension(GeoLong.class);
            if (extension != null || extension2 != null) {
                if (extension == null) {
                    throw new ParseException("All geo:Point elements must have a latitude coordinate.");
                }
                if (extension2 == null) {
                    throw new ParseException("All geo:Point elements must have a longitude coordinate.");
                }
            }
        }
    }
}
