package com.google.gdata.data.geo;

import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ValueConstruct;
import java.text.NumberFormat;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "long", nsAlias = Namespaces.W3C_GEO_ALIAS, nsUri = Namespaces.W3C_GEO)
public class GeoLong extends ValueConstruct {
    public static final int COORDINATE_PRECISION = 6;
    public static final double MAX_LONG = 180.0d;
    public static final double MIN_LONG = -180.0d;
    private static final NumberFormat NUM_FORMAT = NumberFormat.getInstance();
    private Double lon;

    static {
        NUM_FORMAT.setMaximumFractionDigits(6);
        NUM_FORMAT.setMinimumFractionDigits(6);
    }

    public GeoLong() {
        this(null);
    }

    public GeoLong(Double d2) throws IllegalArgumentException {
        super(Namespaces.W3C_GEO_NAMESPACE, "long", null, null);
        this.lon = null;
        setRequired(true);
        if (d2 != null) {
            setLongitude(d2);
            setImmutable(true);
        }
    }

    public Double getLongitude() {
        return this.lon;
    }

    public void setLongitude(Double d2) {
        this.lon = d2;
        String str = null;
        if (d2 != null) {
            if (d2.compareTo(Double.valueOf(-180.0d)) < 0 || d2.compareTo(Double.valueOf(180.0d)) > 0) {
                throw new IllegalArgumentException("Longitude must be between -180 and 180 degrees.");
            }
            str = NUM_FORMAT.format(d2);
        }
        super.setValue(str);
    }

    @Override // com.google.gdata.data.ValueConstruct
    public void setValue(String str) {
        Double dValueOf = null;
        if (str != null) {
            try {
                dValueOf = Double.valueOf(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException("'value' must be a double.");
            }
        }
        setLongitude(dValueOf);
    }
}
