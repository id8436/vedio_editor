package com.google.api.gbase.client;

import android.support.v4.app.NotificationCompat;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.DateTime;
import com.google.gdata.util.common.base.StringUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
class ConversionUtil {
    private static final String LATITUDE_ELEMENT_NAME = "latitude";
    private static final String LONGITUDE_ELEMENT_NAME = "longitude";

    enum TaxField {
        Country(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY),
        Region("region"),
        Rate("rate"),
        TaxShip("tax_ship");

        private final String attrName;
        private final String elemName;

        TaxField(String str) {
            this.elemName = str;
            this.attrName = str.replace('_', ' ');
        }

        public String getElemName() {
            return this.elemName;
        }

        public String getAttrName() {
            return this.attrName;
        }
    }

    enum ShippingField {
        Country(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY),
        Region("region"),
        Price(GoogleBaseAttributesExtension.PRICE_ATTRIBUTE),
        Service(NotificationCompat.CATEGORY_SERVICE);

        private final String attrName;
        private final String elemName;

        ShippingField(String str) {
            this.elemName = str;
            this.attrName = str.replace('_', ' ');
        }

        public String getElemName() {
            return this.elemName;
        }

        public String getAttrName() {
            return this.attrName;
        }
    }

    private ConversionUtil() {
    }

    static Float toFloat(String str) {
        if (str == null) {
            return null;
        }
        return new Float(str);
    }

    static Integer toInteger(String str) {
        if (str == null) {
            return null;
        }
        return new Integer(str);
    }

    static Boolean toBoolean(String str) {
        if (str == null) {
            return null;
        }
        return new Boolean(str);
    }

    static DateTime toDateOrDateTime(String str) {
        if (str == null) {
            return null;
        }
        return DateTime.parseDateTimeChoice(str);
    }

    public static NumberUnit<Integer> toIntUnit(String str) {
        if (str == null) {
            return null;
        }
        int iFindFirstSpace = findFirstSpace(str);
        return new NumberUnit<>(new Integer(beforeSpace(str, iFindFirstSpace)), parseUnit(str, iFindFirstSpace));
    }

    public static NumberUnit<Float> toFloatUnit(String str) {
        if (str == null) {
            return null;
        }
        int iFindFirstSpace = findFirstSpace(str);
        return new NumberUnit<>(new Float(beforeSpace(str, iFindFirstSpace)), parseUnit(str, iFindFirstSpace));
    }

    private static String beforeSpace(String str, int i) {
        return str.substring(0, i);
    }

    private static String parseUnit(String str, int i) {
        return str.substring(i + 1).trim();
    }

    private static int findFirstSpace(String str) {
        int iIndexOf = str.indexOf(" ");
        if (iIndexOf == -1 || iIndexOf == str.length()) {
            throw new NumberFormatException("missing unit in '" + str + "'");
        }
        return iIndexOf;
    }

    public static GoogleBaseAttribute createAttribute(String str, DateTimeRange dateTimeRange) {
        return new GoogleBaseAttribute(str, GoogleBaseAttributeType.DATE_TIME_RANGE, dateTimeRange.toString());
    }

    public static DateTimeRange extractDateTimeRange(GoogleBaseAttribute googleBaseAttribute) {
        String valueAsString = googleBaseAttribute.getValueAsString();
        int iIndexOf = valueAsString.indexOf(32);
        if (iIndexOf == -1) {
            return new DateTimeRange(toDateOrDateTime(valueAsString));
        }
        return new DateTimeRange(toDateOrDateTime(valueAsString.substring(0, iIndexOf)), toDateOrDateTime(valueAsString.substring(iIndexOf + 1)));
    }

    public static Group extractGroup(GoogleBaseAttribute googleBaseAttribute) {
        return new Group(googleBaseAttribute.getSubAttributes());
    }

    public static GoogleBaseAttribute createAttribute(String str, Group group) {
        GoogleBaseAttribute googleBaseAttribute = new GoogleBaseAttribute(str, GoogleBaseAttributeType.GROUP);
        for (GoogleBaseAttribute googleBaseAttribute2 : group.getAllSubAttributes().values()) {
            GoogleBaseAttributeType type = googleBaseAttribute2.getType();
            if (!GoogleBaseAttributeType.GROUP.equals(type) && !GoogleBaseAttributeType.GROUP.equals(type.getSupertype()) && (googleBaseAttribute2.hasValue() || googleBaseAttribute2.hasSubElements())) {
                googleBaseAttribute.addSubAttribute(googleBaseAttribute2);
            }
        }
        return googleBaseAttribute;
    }

    public static Shipping extractShipping(GoogleBaseAttribute googleBaseAttribute) {
        return googleBaseAttribute.hasSubAttributes() ? extractShippingFromAttributes(googleBaseAttribute) : extractShippingFromElements(googleBaseAttribute);
    }

    private static Shipping extractShippingFromAttributes(GoogleBaseAttribute googleBaseAttribute) {
        NumberUnit<Float> numberUnit;
        ArrayList arrayList = new ArrayList();
        String valueAsString = null;
        String valueAsString2 = null;
        NumberUnit<Float> numberUnit2 = null;
        for (GoogleBaseAttribute googleBaseAttribute2 : googleBaseAttribute.getSubAttributes()) {
            String name = googleBaseAttribute2.getName();
            if (ShippingField.Country.getAttrName().equals(name)) {
                valueAsString2 = googleBaseAttribute2.getValueAsString();
                numberUnit = numberUnit2;
            } else if (ShippingField.Region.getAttrName().equals(name)) {
                arrayList.add(googleBaseAttribute2.getValueAsString());
                numberUnit = numberUnit2;
            } else if (ShippingField.Price.getAttrName().equals(name)) {
                String valueAsString3 = googleBaseAttribute2.getValueAsString();
                try {
                    numberUnit = toFloatUnit(valueAsString3);
                } catch (NumberFormatException e2) {
                    numberUnit = new NumberUnit<>(Float.valueOf(Float.parseFloat(valueAsString3)), null);
                }
            } else if (ShippingField.Service.getAttrName().equals(name)) {
                valueAsString = googleBaseAttribute2.getValueAsString();
                numberUnit = numberUnit2;
            } else {
                throw new IllegalArgumentException("Sub-attribute " + name + " is not supported in Shipping.");
            }
            numberUnit2 = numberUnit;
        }
        if (numberUnit2 == null) {
            throw new NumberFormatException("missing 'price' element in shipping attribute: " + googleBaseAttribute);
        }
        return new Shipping(valueAsString2, arrayList, valueAsString, ((Float) numberUnit2.getValue()).floatValue(), numberUnit2.getUnit());
    }

    private static Shipping extractShippingFromElements(GoogleBaseAttribute googleBaseAttribute) {
        NumberUnit<Float> numberUnit;
        String subElementValue = googleBaseAttribute.getSubElementValue(ShippingField.Country.getElemName());
        Collection<String> subElementValues = googleBaseAttribute.getSubElementValues(ShippingField.Region.getElemName());
        String subElementValue2 = googleBaseAttribute.getSubElementValue(ShippingField.Price.getElemName());
        String subElementValue3 = googleBaseAttribute.getSubElementValue(ShippingField.Service.getElemName());
        if (subElementValue2 == null) {
            throw new NumberFormatException("missing 'price' element in shipping attribute: " + googleBaseAttribute);
        }
        try {
            numberUnit = toFloatUnit(subElementValue2);
        } catch (NumberFormatException e2) {
            numberUnit = new NumberUnit<>(Float.valueOf(Float.parseFloat(subElementValue2)), null);
        }
        return new Shipping(subElementValue, subElementValues, subElementValue3, ((Float) numberUnit.getValue()).floatValue(), numberUnit.getUnit());
    }

    public static GoogleBaseAttribute createAttribute(String str, Shipping shipping) {
        GoogleBaseAttribute googleBaseAttribute = new GoogleBaseAttribute(str, GoogleBaseAttributeType.SHIPPING);
        if (shipping.getCountry() != null) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(ShippingField.Country.getAttrName(), (GoogleBaseAttributeType) null, shipping.getCountry()));
        }
        Iterator<String> it = shipping.getRegions().iterator();
        while (it.hasNext()) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(ShippingField.Region.getAttrName(), (GoogleBaseAttributeType) null, it.next()));
        }
        if (shipping.getService() != null) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(ShippingField.Service.getAttrName(), (GoogleBaseAttributeType) null, shipping.getService()));
        }
        String string = Float.toString(shipping.getPrice());
        if (shipping.getCurrency() != null) {
            string = string + " " + shipping.getCurrency();
        }
        googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(ShippingField.Price.getAttrName(), (GoogleBaseAttributeType) null, string));
        return googleBaseAttribute;
    }

    public static Tax extractTax(GoogleBaseAttribute googleBaseAttribute) {
        return googleBaseAttribute.hasSubAttributes() ? extractTaxFromAttributes(googleBaseAttribute) : extractTaxFromElements(googleBaseAttribute);
    }

    private static Tax extractTaxFromAttributes(GoogleBaseAttribute googleBaseAttribute) {
        Boolean boolValueOf;
        String str;
        String valueAsString;
        Boolean bool = null;
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        String str3 = null;
        for (GoogleBaseAttribute googleBaseAttribute2 : googleBaseAttribute.getSubAttributes()) {
            String name = googleBaseAttribute2.getName();
            if (TaxField.Country.getAttrName().equals(name)) {
                String valueAsString2 = googleBaseAttribute2.getValueAsString();
                valueAsString = str3;
                boolValueOf = bool;
                str = valueAsString2;
            } else if (TaxField.Region.getAttrName().equals(name)) {
                arrayList.add(googleBaseAttribute2.getValueAsString());
                boolValueOf = bool;
                str = str2;
                valueAsString = str3;
            } else if (TaxField.Rate.getAttrName().equals(name)) {
                Boolean bool2 = bool;
                str = str2;
                valueAsString = googleBaseAttribute2.getValueAsString();
                boolValueOf = bool2;
            } else if (TaxField.TaxShip.getAttrName().equals(name)) {
                String valueAsString3 = googleBaseAttribute2.getValueAsString();
                boolValueOf = valueAsString3 != null ? Boolean.valueOf(valueAsString3) : bool;
                str = str2;
                valueAsString = str3;
            } else {
                throw new IllegalArgumentException("Sub-attribute " + name + " is not supported in Tax.");
            }
            str3 = valueAsString;
            str2 = str;
            bool = boolValueOf;
        }
        if (StringUtil.isEmpty(str3)) {
            throw new NumberFormatException("missing 'rate' element in tax attribute: " + googleBaseAttribute);
        }
        return new Tax(str2, arrayList, Float.valueOf(str3.trim()).floatValue(), bool);
    }

    private static Tax extractTaxFromElements(GoogleBaseAttribute googleBaseAttribute) {
        String subElementValue = googleBaseAttribute.getSubElementValue(TaxField.Country.getElemName());
        Collection<String> subElementValues = googleBaseAttribute.getSubElementValues(TaxField.Region.getElemName());
        String subElementValue2 = googleBaseAttribute.getSubElementValue(TaxField.Rate.getElemName());
        if (subElementValue2 == null) {
            throw new NumberFormatException("missing 'rate' element in tax attribute: " + googleBaseAttribute);
        }
        float fFloatValue = Float.valueOf(subElementValue2.trim()).floatValue();
        String subElementValue3 = googleBaseAttribute.getSubElementValue(TaxField.TaxShip.getElemName());
        Boolean boolValueOf = null;
        if (subElementValue3 != null) {
            boolValueOf = Boolean.valueOf(subElementValue3);
        }
        return new Tax(subElementValue, subElementValues, fFloatValue, boolValueOf);
    }

    public static GoogleBaseAttribute createAttribute(String str, Tax tax) {
        GoogleBaseAttribute googleBaseAttribute = new GoogleBaseAttribute(str, GoogleBaseAttributeType.TAX);
        if (tax.getCountry() != null) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(TaxField.Country.getAttrName(), (GoogleBaseAttributeType) null, tax.getCountry()));
        }
        Iterator<String> it = tax.getRegions().iterator();
        while (it.hasNext()) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(TaxField.Region.getAttrName(), (GoogleBaseAttributeType) null, it.next()));
        }
        googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(TaxField.Rate.getAttrName(), (GoogleBaseAttributeType) null, Float.toString(tax.getRate())));
        if (tax.getTaxShip() != null) {
            googleBaseAttribute.addSubAttribute(new GoogleBaseAttribute(TaxField.TaxShip.getAttrName(), (GoogleBaseAttributeType) null, tax.getTaxShip().booleanValue() ? "true" : "false"));
        }
        return googleBaseAttribute;
    }

    public static Location extractLocation(GoogleBaseAttribute googleBaseAttribute) {
        Location location = new Location(googleBaseAttribute.getValueAsString());
        String subElementValue = googleBaseAttribute.getSubElementValue(LATITUDE_ELEMENT_NAME);
        String subElementValue2 = googleBaseAttribute.getSubElementValue(LONGITUDE_ELEMENT_NAME);
        if (subElementValue != null && subElementValue2 != null) {
            location.setLatitude(Float.parseFloat(subElementValue));
            location.setLongitude(Float.parseFloat(subElementValue2));
        }
        return location;
    }

    public static GoogleBaseAttribute createAttribute(String str, Location location) {
        GoogleBaseAttribute googleBaseAttribute = new GoogleBaseAttribute(str, GoogleBaseAttributeType.LOCATION);
        googleBaseAttribute.setValue(location.getAddress());
        if (location.hasCoordinates()) {
            googleBaseAttribute.setSubElement(LATITUDE_ELEMENT_NAME, Float.toString(location.getLatitude()));
            googleBaseAttribute.setSubElement(LONGITUDE_ELEMENT_NAME, Float.toString(location.getLongitude()));
        }
        return googleBaseAttribute;
    }

    public static Number extractNumber(GoogleBaseAttribute googleBaseAttribute) {
        if (googleBaseAttribute == null) {
            return null;
        }
        if (GoogleBaseAttributeType.FLOAT.equals(googleBaseAttribute.getAttributeId().getType())) {
            return toFloat(googleBaseAttribute.getValueAsString());
        }
        return toInteger(googleBaseAttribute.getValueAsString());
    }

    public static NumberUnit<? extends Number> extractNumberUnit(GoogleBaseAttribute googleBaseAttribute) {
        if (googleBaseAttribute == null) {
            return null;
        }
        if (GoogleBaseAttributeType.INT_UNIT.equals(googleBaseAttribute.getAttributeId().getType())) {
            return toIntUnit(googleBaseAttribute.getValueAsString());
        }
        return toFloatUnit(googleBaseAttribute.getValueAsString());
    }
}
