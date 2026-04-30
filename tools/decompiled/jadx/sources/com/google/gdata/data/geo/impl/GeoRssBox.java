package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Namespaces;
import com.google.gdata.data.geo.Point;

/* JADX INFO: loaded from: classes3.dex */
public class GeoRssBox extends ValueConstruct implements Box {
    static final String NAME = "box";
    private Point lowerLeft;
    private Point upperRight;

    public GeoRssBox() {
        this(null, null);
    }

    public GeoRssBox(Double d2, Double d3, Double d4, Double d5) {
        this(new GeoRssPoint(d2, d3), new GeoRssPoint(d4, d5));
    }

    public GeoRssBox(Point point, Point point2) {
        super(Namespaces.GEO_RSS_NAMESPACE, NAME, null);
        if (point == null && point2 == null) {
            setRequired(false);
        }
        setGeoLocation(point, point2);
    }

    public GeoRssBox(Box box) {
        this(box == null ? null : box.getLowerLeft(), box != null ? box.getUpperRight() : null);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GeoRssBox.class);
        extensionDescription.setNamespace(Namespaces.GEO_RSS_NAMESPACE);
        extensionDescription.setLocalName(NAME);
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    public static ExtensionDescription getDefaultDescription() {
        return getDefaultDescription(true);
    }

    @Override // com.google.gdata.data.geo.Box
    public Point getLowerLeft() {
        return this.lowerLeft;
    }

    @Override // com.google.gdata.data.geo.Box
    public Point getUpperRight() {
        return this.upperRight;
    }

    @Override // com.google.gdata.data.geo.Box
    public void setGeoLocation(Point point, Point point2) {
        if (point == null || point2 == null) {
            if (point != null || point2 != null) {
                throw new IllegalArgumentException("'lowerLeft' and 'upperRight' must either both be null or non-null.");
            }
        } else if (point.getLatitude().doubleValue() > point2.getLatitude().doubleValue()) {
            throw new IllegalArgumentException("'lowerLeft' must be below 'upperRight'.");
        }
        this.lowerLeft = point;
        this.upperRight = point2;
        super.setValue(toString());
    }

    public String toString() {
        if (this.lowerLeft == null || this.upperRight == null) {
            return null;
        }
        return this.lowerLeft.getLatitude() + " " + this.lowerLeft.getLongitude() + " " + this.upperRight.getLatitude() + " " + this.upperRight.getLongitude();
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        Point point;
        Point point2 = null;
        if (str != null) {
            String[] strArrSplit = str.trim().split(" ");
            if (strArrSplit.length != 4) {
                throw createInvalidValueException();
            }
            point = getPoint(strArrSplit[0], strArrSplit[1]);
            point2 = getPoint(strArrSplit[2], strArrSplit[3]);
        } else {
            point = null;
        }
        setGeoLocation(point, point2);
    }

    private Point getPoint(String str, String str2) {
        try {
            return new GeoRssPoint(Double.valueOf(str), Double.valueOf(str2));
        } catch (NumberFormatException e2) {
            throw createInvalidValueException();
        }
    }

    private IllegalArgumentException createInvalidValueException() {
        return new IllegalArgumentException("Format of a georss:box is \"latitude longitude latitude longitutde\", where the first pair is the lower left point, and the second pair is the upper right point.  All values must be doubles, separated by spaces.");
    }
}
