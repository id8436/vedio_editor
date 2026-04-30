package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GmlPoint.NAME, nsAlias = Namespaces.GML_ALIAS, nsUri = Namespaces.GML)
public class GmlPoint extends ExtensionPoint implements Point {
    static final String NAME = "Point";

    public GmlPoint() {
    }

    public GmlPoint(Double d2, Double d3) {
        this(new GmlPos(d2, d3));
    }

    public GmlPoint(Point point) {
        if (point != null) {
            setExtension(point instanceof GmlPos ? point : new GmlPos(point));
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GmlPoint.class);
        extensionDescription.setNamespace(Namespaces.GML_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(GmlPoint.class, GmlPos.getDefaultDescription(false));
        super.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLatitude() {
        GmlPos gmlPos = (GmlPos) getExtension(GmlPos.class);
        if (gmlPos != null) {
            return gmlPos.getLatitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLongitude() {
        GmlPos gmlPos = (GmlPos) getExtension(GmlPos.class);
        if (gmlPos != null) {
            return gmlPos.getLongitude();
        }
        return null;
    }

    @Override // com.google.gdata.data.geo.Point
    public void setGeoLocation(Double d2, Double d3) {
        GmlPos gmlPos = (GmlPos) getExtension(GmlPos.class);
        if (gmlPos != null) {
            if (d2 == null && d3 == null) {
                removeExtension(gmlPos);
                return;
            } else {
                gmlPos.setGeoLocation(d2, d3);
                return;
            }
        }
        if (d2 != null || d3 != null) {
            GmlPos gmlPos2 = new GmlPos();
            setExtension(gmlPos2);
            gmlPos2.setGeoLocation(d2, d3);
        }
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.GML_NAMESPACE, NAME, null, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.GML_NAMESPACE, NAME);
    }
}
