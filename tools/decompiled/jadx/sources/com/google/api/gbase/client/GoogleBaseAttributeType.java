package com.google.api.gbase.client;

import com.google.gdata.data.analytics.Metric;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseAttributeType {
    private final String name;
    private final GoogleBaseAttributeType supertype;
    private static final Map<String, GoogleBaseAttributeType> KNOWN_TYPES = new HashMap();
    public static final GoogleBaseAttributeType TEXT = createAndRegister("text");
    public static final GoogleBaseAttributeType NUMBER = createAndRegister("number");
    public static final GoogleBaseAttributeType INT = createAndRegister(NUMBER, "int");
    public static final GoogleBaseAttributeType FLOAT = createAndRegister(NUMBER, Metric.Type.FLOAT);
    public static final GoogleBaseAttributeType NUMBER_UNIT = createAndRegister("numberUnit");
    public static final GoogleBaseAttributeType INT_UNIT = createAndRegister(NUMBER_UNIT, "intUnit");
    public static final GoogleBaseAttributeType FLOAT_UNIT = createAndRegister(NUMBER_UNIT, "floatUnit");
    public static final GoogleBaseAttributeType DATE_TIME_RANGE = createAndRegister("dateTimeRange");
    public static final GoogleBaseAttributeType DATE = createAndRegister(DATE_TIME_RANGE, "date");
    public static final GoogleBaseAttributeType DATE_TIME = createAndRegister(DATE, "dateTime");
    public static final GoogleBaseAttributeType URL = createAndRegister("url");
    public static final GoogleBaseAttributeType BOOLEAN = createAndRegister("boolean");
    public static final GoogleBaseAttributeType GROUP = createAndRegister("group");
    public static final GoogleBaseAttributeType SHIPPING = createAndRegister(GROUP, GoogleBaseAttributesExtension.SHIPPING_ATTRIBUTE);
    public static final GoogleBaseAttributeType TAX = createAndRegister(GROUP, GoogleBaseAttributesExtension.TAX_ATTRIBUTE);
    public static final GoogleBaseAttributeType LOCATION = createAndRegister("location");
    public static final GoogleBaseAttributeType REFERENCE = createAndRegister("reference");

    private static GoogleBaseAttributeType createAndRegister(String str) {
        return createAndRegister(null, str);
    }

    private static GoogleBaseAttributeType createAndRegister(GoogleBaseAttributeType googleBaseAttributeType, String str) {
        GoogleBaseAttributeType googleBaseAttributeType2 = new GoogleBaseAttributeType(googleBaseAttributeType, str);
        KNOWN_TYPES.put(googleBaseAttributeType2.getName(), googleBaseAttributeType2);
        return googleBaseAttributeType2;
    }

    private GoogleBaseAttributeType(GoogleBaseAttributeType googleBaseAttributeType, String str) {
        this.supertype = googleBaseAttributeType;
        this.name = str.intern();
    }

    public GoogleBaseAttributeType getSupertype() {
        return this.supertype;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof GoogleBaseAttributeType) && this.name == ((GoogleBaseAttributeType) obj).name;
    }

    public int hashCode() {
        return this.name.hashCode() + 11;
    }

    public static GoogleBaseAttributeType getInstance(String str) {
        if (str == null) {
            return null;
        }
        GoogleBaseAttributeType googleBaseAttributeType = KNOWN_TYPES.get(str);
        return googleBaseAttributeType == null ? new GoogleBaseAttributeType(null, str) : googleBaseAttributeType;
    }

    public boolean isSupertypeOf(GoogleBaseAttributeType googleBaseAttributeType) {
        if (equals(googleBaseAttributeType)) {
            return true;
        }
        GoogleBaseAttributeType supertype = googleBaseAttributeType.getSupertype();
        if (supertype == null) {
            return false;
        }
        return isSupertypeOf(supertype);
    }
}
