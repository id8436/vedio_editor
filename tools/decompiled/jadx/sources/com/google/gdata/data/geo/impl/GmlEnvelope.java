package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = GmlEnvelope.NAME, nsAlias = Namespaces.GML_ALIAS, nsUri = Namespaces.GML)
public class GmlEnvelope extends ExtensionPoint implements Box {
    static final String NAME = "Envelope";

    public GmlEnvelope() {
    }

    public GmlEnvelope(Double d2, Double d3, Double d4, Double d5) {
        this(new GmlLowerCorner(d2, d3), new GmlUpperCorner(d4, d5));
    }

    public GmlEnvelope(Point point, Point point2) {
        setGeoLocation(point, point2);
    }

    public GmlEnvelope(Box box) {
        this(box == null ? null : box.getLowerLeft(), box != null ? box.getUpperRight() : null);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GmlEnvelope.class);
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
        extensionProfile.declare(GmlEnvelope.class, GmlLowerCorner.getDefaultDescription(false));
        extensionProfile.declare(GmlEnvelope.class, GmlUpperCorner.getDefaultDescription(false));
        super.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.geo.Box
    public GmlLowerCorner getLowerLeft() {
        return (GmlLowerCorner) getExtension(GmlLowerCorner.class);
    }

    @Override // com.google.gdata.data.geo.Box
    public GmlUpperCorner getUpperRight() {
        return (GmlUpperCorner) getExtension(GmlUpperCorner.class);
    }

    @Override // com.google.gdata.data.geo.Box
    public void setGeoLocation(Point point, Point point2) {
        if (point != null && point2 != null) {
            if (!(point instanceof GmlLowerCorner)) {
                point = new GmlLowerCorner(point);
            }
            if (!(point2 instanceof GmlUpperCorner)) {
                point2 = new GmlUpperCorner(point2);
            }
            setExtension(point);
            setExtension(point2);
            return;
        }
        if (point != null || point2 != null) {
            throw new IllegalArgumentException("'lower' and 'upper' must either both be null or non-null.");
        }
        removeExtension(GmlLowerCorner.class);
        removeExtension(GmlUpperCorner.class);
    }

    public void setUpperRight(Point point) {
        if (point == null) {
            removeExtension(GmlUpperCorner.class);
            return;
        }
        if (!(point instanceof GmlUpperCorner)) {
            point = new GmlUpperCorner(point);
        }
        setExtension(point);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        GmlLowerCorner lowerLeft = getLowerLeft();
        GmlUpperCorner upperRight = getUpperRight();
        if ((lowerLeft != null && upperRight == null) || (lowerLeft == null && upperRight != null)) {
            throw new IllegalStateException("Both upper and lower must be set or neither may be set.");
        }
    }
}
