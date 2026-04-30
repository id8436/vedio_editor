package com.google.gdata.data.geo.impl;

import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.geo.Point;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PointConstruct extends ValueConstruct implements Point {
    private Double lat;
    private Double lon;

    public PointConstruct(XmlNamespace xmlNamespace, String str) {
        super(xmlNamespace, str, null);
        setRequired(false);
    }

    public PointConstruct(XmlNamespace xmlNamespace, String str, Double d2, Double d3) {
        super(xmlNamespace, str, null);
        if (d2 == null && d3 == null) {
            setRequired(false);
        }
        setGeoLocation(d2, d3);
    }

    public PointConstruct(XmlNamespace xmlNamespace, String str, Point point) {
        this(xmlNamespace, str, point == null ? null : point.getLatitude(), point != null ? point.getLongitude() : null);
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLatitude() {
        return this.lat;
    }

    @Override // com.google.gdata.data.geo.Point
    public Double getLongitude() {
        return this.lon;
    }

    @Override // com.google.gdata.data.geo.Point
    public void setGeoLocation(Double d2, Double d3) {
        if (d2 != null && d3 != null) {
            if (d2.compareTo(Double.valueOf(-90.0d)) < 0 || d2.compareTo(Double.valueOf(90.0d)) > 0) {
                throw new IllegalArgumentException("Latitude must be between -90 and 90 degrees.");
            }
            if (d3.compareTo(Double.valueOf(-180.0d)) < 0 || d3.compareTo(Double.valueOf(180.0d)) > 0) {
                throw new IllegalArgumentException("Longitude must be between -180 and 180 degrees.");
            }
        } else if (d2 != null || d3 != null) {
            throw new IllegalArgumentException("latitude and longitude must either both be null or non-null.");
        }
        this.lat = d2;
        this.lon = d3;
        super.setValue(toString());
    }

    public String toString() {
        if (this.lat == null || this.lon == null) {
            return null;
        }
        return this.lat + " " + this.lon;
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        Double dValueOf;
        Double dValueOf2 = null;
        if (str != null) {
            String strTrim = str.trim();
            int iIndexOf = strTrim.indexOf(32);
            if (iIndexOf == -1) {
                throw createInvalidValueException();
            }
            String strSubstring = strTrim.substring(0, iIndexOf);
            String strSubstring2 = strTrim.substring(iIndexOf + 1);
            try {
                dValueOf = Double.valueOf(strSubstring);
                dValueOf2 = Double.valueOf(strSubstring2);
            } catch (NumberFormatException e2) {
                throw createInvalidValueException();
            }
        } else {
            dValueOf = null;
        }
        setGeoLocation(dValueOf, dValueOf2);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        if ((this.lat == null && this.lon != null) || (this.lat != null && this.lon == null)) {
            throw new IllegalStateException("latitude and longitude must either both be null or non-null.");
        }
    }

    private IllegalArgumentException createInvalidValueException() {
        return new IllegalArgumentException("Format of a coordinate is \"latitude longitude\", where latitude and longitude are doubles, separated by a space.");
    }
}
