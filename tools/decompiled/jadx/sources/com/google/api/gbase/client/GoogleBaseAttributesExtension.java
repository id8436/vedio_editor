package com.google.api.gbase.client;

import com.google.gdata.data.DateTime;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.photos.GphotoAccess;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes.dex */
public class GoogleBaseAttributesExtension implements Extension {
    public static final String APPLICATION_ATTRIBUTE = "application";
    public static final String CUSTOMER_ID = "customer id";
    public static final String DELIVERY_NOTES_ATTRIBUTE = "delivery notes";
    public static final String DELIVERY_RADIUS_ATTRIBUTE = "delivery radius";
    public static final ExtensionDescription DESCRIPTION;
    public static final String EXPIRATION_DATE_ATTRIBUTE = "expiration date";
    static final String GM_ADJUSTED_NAME_ATTRIBUTE = "adjusted_name";
    static final String GM_ADJUSTED_VALUE_ATTRIBUTE = "adjusted_value";
    static final String GM_THUMBNAIL_ATTRIBUTE = "thumbnail";
    public static final String IMAGE_LINK_ATTRIBUTE = "image link";
    public static final String ITEM_TYPE_ATTRIBUTE = "item type";
    public static final String LABEL_ATTRIBUTE = "label";
    public static final String LOCATION_ATTRIBUTE = "location";
    public static final String PAYMENT_METHOD_ATTRIBUTE = "payment accepted";
    public static final String PAYMENT_NOTES_ATTRIBUTE = "payment notes";
    public static final String PICKUP_ATTRIBUTE = "pickup";
    public static final String PRICE_ATTRIBUTE = "price";
    public static final String PRICE_TYPE_ATTRIBUTE = "price type";
    public static final String PRICE_UNITS_ATTRIBUTE = "price units";
    public static final String QUANTITY_ATTRIBUTE = "quantity";
    public static final String SHIPPING_ATTRIBUTE = "shipping";
    public static final String TAX_ATTRIBUTE = "tax";

    @Deprecated
    public static final String TAX_PERCENT_ATTRIBUTE = "tax percent";

    @Deprecated
    public static final String TAX_REGION_ATTRIBUTE = "tax region";
    private final List<GoogleBaseAttribute> attributes = new ArrayList();

    static {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GoogleBaseAttributesExtension.class);
        extensionDescription.setNamespace(GoogleBaseNamespaces.G);
        extensionDescription.setLocalName("*");
        extensionDescription.setRepeatable(false);
        extensionDescription.setAggregate(true);
        DESCRIPTION = extensionDescription;
    }

    public Collection<? extends String> getLabels() {
        return getTextAttributeValues("label");
    }

    public void addLabel(String str) {
        addTextAttribute("label", str);
    }

    public String getItemType() {
        return getTextAttribute(ITEM_TYPE_ATTRIBUTE);
    }

    public void setItemType(String str) {
        removeAttributes(ITEM_TYPE_ATTRIBUTE, GoogleBaseAttributeType.TEXT);
        addTextAttribute(ITEM_TYPE_ATTRIBUTE, str);
    }

    public DateTime getExpirationDate() {
        return getDateTimeAttribute(EXPIRATION_DATE_ATTRIBUTE);
    }

    public void setExpirationDate(DateTime dateTime) {
        removeAttributes(EXPIRATION_DATE_ATTRIBUTE, GoogleBaseAttributeType.DATE_TIME);
        addDateTimeAttribute(EXPIRATION_DATE_ATTRIBUTE, dateTime);
    }

    public String getImageLink() {
        return getUrlAttribute(IMAGE_LINK_ATTRIBUTE);
    }

    public List<? extends String> getImageLinks() {
        return getAttributeValuesAsString(IMAGE_LINK_ATTRIBUTE, GoogleBaseAttributeType.URL);
    }

    public void addImageLink(String str) {
        addUrlAttribute(IMAGE_LINK_ATTRIBUTE, str);
    }

    public Collection<? extends String> getPaymentMethods() {
        return getTextAttributeValues(PAYMENT_METHOD_ATTRIBUTE);
    }

    public void addPaymentMethod(String str) {
        addTextAttribute(PAYMENT_METHOD_ATTRIBUTE, str);
    }

    public NumberUnit<Float> getPrice() {
        return getFloatUnitAttribute(PRICE_ATTRIBUTE);
    }

    public void setPrice(NumberUnit<Float> numberUnit) {
        removeAttributes(PRICE_ATTRIBUTE);
        addFloatUnitAttribute(PRICE_ATTRIBUTE, numberUnit);
    }

    public void setPrice(float f2, String str) {
        setPrice(new NumberUnit<>(Float.valueOf(f2), str));
    }

    public String getLocation() {
        return getLocationAttribute("location");
    }

    public void setLocation(String str) {
        removeAttributes("location");
        addLocationAttribute("location", str);
    }

    public void setPriceType(String str) {
        removeAttributes(PRICE_TYPE_ATTRIBUTE);
        addTextAttribute(PRICE_TYPE_ATTRIBUTE, str);
    }

    public String getPriceType() {
        return getTextAttribute(PRICE_TYPE_ATTRIBUTE);
    }

    public void setQuantity(int i) {
        removeAttributes(QUANTITY_ATTRIBUTE);
        addIntAttribute(QUANTITY_ATTRIBUTE, i);
    }

    public Integer getQuantity() {
        return getIntAttribute(QUANTITY_ATTRIBUTE);
    }

    public void setPriceUnits(String str) {
        removeAttributes(PRICE_UNITS_ATTRIBUTE);
        addTextAttribute(PRICE_UNITS_ATTRIBUTE, str);
    }

    public String getPriceUnits() {
        return getTextAttribute(PRICE_UNITS_ATTRIBUTE);
    }

    public void addShipping(Shipping shipping) {
        addShippingAttribute(SHIPPING_ATTRIBUTE, shipping);
    }

    public Collection<? extends Shipping> getShipping() {
        return getShippingAttributes(SHIPPING_ATTRIBUTE);
    }

    public void addTax(Tax tax) {
        addTaxAttribute(TAX_ATTRIBUTE, tax);
    }

    public Collection<? extends Tax> getTax() {
        return getTaxAttributes(TAX_ATTRIBUTE);
    }

    @Deprecated
    public void setTaxPercent(float f2) {
        removeAttributes(TAX_PERCENT_ATTRIBUTE);
        addFloatAttribute(TAX_PERCENT_ATTRIBUTE, f2);
    }

    @Deprecated
    public Float getTaxPercent() {
        return getFloatAttribute(TAX_PERCENT_ATTRIBUTE);
    }

    @Deprecated
    public void setTaxRegion(String str) {
        removeAttributes(TAX_REGION_ATTRIBUTE);
        addTextAttribute(TAX_REGION_ATTRIBUTE, str);
    }

    @Deprecated
    public String getTaxRegion() {
        return getTextAttribute(TAX_REGION_ATTRIBUTE);
    }

    public void setDeliveryRadius(float f2, String str) {
        setDeliveryRadius(new NumberUnit<>(Float.valueOf(f2), str));
    }

    public void setDeliveryRadius(NumberUnit<Float> numberUnit) {
        removeAttributes(DELIVERY_RADIUS_ATTRIBUTE);
        addFloatUnitAttribute(DELIVERY_RADIUS_ATTRIBUTE, numberUnit);
    }

    public NumberUnit<Float> getDeliveryRadius() {
        return getFloatUnitAttribute(DELIVERY_RADIUS_ATTRIBUTE);
    }

    public void setPickup(boolean z) {
        removeAttributes(PICKUP_ATTRIBUTE, GoogleBaseAttributeType.BOOLEAN);
        addBooleanAttribute(PICKUP_ATTRIBUTE, z);
    }

    public Boolean getPickup() {
        return getBooleanAttribute(PICKUP_ATTRIBUTE);
    }

    public void setDeliveryNotes(String str) {
        removeAttributes(DELIVERY_NOTES_ATTRIBUTE, GoogleBaseAttributeType.TEXT);
        addTextAttribute(DELIVERY_NOTES_ATTRIBUTE, str);
    }

    public String getDeliveryNotes() {
        return getTextAttribute(DELIVERY_NOTES_ATTRIBUTE);
    }

    public void setPaymentNotes(String str) {
        removeAttributes(PAYMENT_NOTES_ATTRIBUTE, GoogleBaseAttributeType.TEXT);
        addTextAttribute(PAYMENT_NOTES_ATTRIBUTE, str);
    }

    public String getPaymentNotes() {
        return getTextAttribute(PAYMENT_NOTES_ATTRIBUTE);
    }

    public Integer getCustomerId() {
        return getIntAttribute(CUSTOMER_ID);
    }

    public List<? extends GoogleBaseAttribute> getAttributes() {
        return this.attributes;
    }

    public GoogleBaseAttribute getAttribute(String str) {
        return getAttribute(str, null);
    }

    public GoogleBaseAttribute getAttribute(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, googleBaseAttributeType)) {
                return googleBaseAttribute;
            }
        }
        return null;
    }

    private boolean hasNameAndType(GoogleBaseAttribute googleBaseAttribute, String str, GoogleBaseAttributeType googleBaseAttributeType) {
        GoogleBaseAttributeType type = googleBaseAttribute.getAttributeId().getType();
        return str.equals(googleBaseAttribute.getAttributeId().getName()) && (googleBaseAttributeType == null || (type != null && googleBaseAttributeType.isSupertypeOf(type)));
    }

    public List<? extends GoogleBaseAttribute> getAttributes(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        ArrayList arrayList = new ArrayList();
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, googleBaseAttributeType)) {
                arrayList.add(googleBaseAttribute);
            }
        }
        return arrayList;
    }

    public List<? extends GoogleBaseAttribute> getAttributes(String str) {
        return getAttributes(str, null);
    }

    public GoogleBaseAttribute addAttribute(GoogleBaseAttribute googleBaseAttribute) {
        this.attributes.add(googleBaseAttribute);
        return googleBaseAttribute;
    }

    public void removeAttribute(GoogleBaseAttribute googleBaseAttribute) {
        this.attributes.remove(googleBaseAttribute);
    }

    public void removeAttributes(String str) {
        removeAttributes(str, null);
    }

    public void removeAttributes(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        Iterator<GoogleBaseAttribute> it = this.attributes.iterator();
        while (it.hasNext()) {
            if (hasNameAndType(it.next(), str, googleBaseAttributeType)) {
                it.remove();
            }
        }
    }

    public void clearAttributes() {
        this.attributes.clear();
    }

    public String getTextAttribute(String str) {
        return getAttributeAsString(str, GoogleBaseAttributeType.TEXT);
    }

    public String getReferenceAttribute(String str) {
        return getAttributeAsString(str, GoogleBaseAttributeType.REFERENCE);
    }

    private String getAttributeAsString(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        GoogleBaseAttribute attribute = getAttribute(str, googleBaseAttributeType);
        if (attribute == null) {
            return null;
        }
        return attribute.getValueAsString();
    }

    public List<String> getTextAttributeValues(String str) {
        return getAttributeValuesAsString(str, GoogleBaseAttributeType.TEXT);
    }

    private List<String> getAttributeValuesAsString(String str, GoogleBaseAttributeType googleBaseAttributeType) {
        List<? extends GoogleBaseAttribute> attributes = getAttributes(str, googleBaseAttributeType);
        ArrayList arrayList = new ArrayList(attributes.size());
        Iterator<? extends GoogleBaseAttribute> it = attributes.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValueAsString());
        }
        return arrayList;
    }

    public Float getFloatAttribute(String str) {
        return ConversionUtil.toFloat(getAttributeAsString(str, GoogleBaseAttributeType.FLOAT));
    }

    public Integer getIntAttribute(String str) {
        return ConversionUtil.toInteger(getAttributeAsString(str, GoogleBaseAttributeType.INT));
    }

    public Number getNumberAttribute(String str) {
        return ConversionUtil.extractNumber(getAttribute(str, GoogleBaseAttributeType.NUMBER));
    }

    public Boolean getBooleanAttribute(String str) {
        return ConversionUtil.toBoolean(getAttributeAsString(str, GoogleBaseAttributeType.BOOLEAN));
    }

    public DateTime getDateTimeAttribute(String str) {
        return ConversionUtil.toDateOrDateTime(getAttributeAsString(str, GoogleBaseAttributeType.DATE_TIME));
    }

    public DateTime getDateAttribute(String str) {
        return ConversionUtil.toDateOrDateTime(getAttributeAsString(str, GoogleBaseAttributeType.DATE));
    }

    public DateTimeRange getDateRangeAttribute(String str) {
        return ConversionUtil.extractDateTimeRange(getAttribute(str, GoogleBaseAttributeType.DATE_TIME_RANGE));
    }

    public String getUrlAttribute(String str) {
        return getAttributeAsString(str, GoogleBaseAttributeType.URL);
    }

    public NumberUnit<Integer> getIntUnitAttribute(String str) {
        return ConversionUtil.toIntUnit(getAttributeAsString(str, GoogleBaseAttributeType.INT_UNIT));
    }

    public NumberUnit<Float> getFloatUnitAttribute(String str) {
        return ConversionUtil.toFloatUnit(getAttributeAsString(str, GoogleBaseAttributeType.FLOAT_UNIT));
    }

    public NumberUnit<? extends Number> getNumberUnitAttribute(String str) {
        return ConversionUtil.extractNumberUnit(getAttribute(str, GoogleBaseAttributeType.NUMBER_UNIT));
    }

    public GoogleBaseAttribute addTextAttribute(String str, String str2) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.TEXT, str2));
    }

    public GoogleBaseAttribute addReferenceAttribute(String str, String str2) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.REFERENCE, str2));
    }

    public GoogleBaseAttribute addIntAttribute(String str, int i) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.INT, Integer.toString(i)));
    }

    public GoogleBaseAttribute addFloatAttribute(String str, float f2) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.FLOAT, Float.toString(f2)));
    }

    public GoogleBaseAttribute addNumberAttribute(String str, Number number) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.NUMBER, number.toString()));
    }

    public GoogleBaseAttribute addIntUnitAttribute(String str, int i, String str2) {
        return addIntUnitAttribute(str, new NumberUnit<>(Integer.valueOf(i), str2));
    }

    public GoogleBaseAttribute addIntUnitAttribute(String str, NumberUnit<Integer> numberUnit) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.INT_UNIT, numberUnit.toString()));
    }

    public GoogleBaseAttribute addFloatUnitAttribute(String str, float f2, String str2) {
        return addFloatUnitAttribute(str, new NumberUnit<>(Float.valueOf(f2), str2));
    }

    public GoogleBaseAttribute addFloatUnitAttribute(String str, NumberUnit<Float> numberUnit) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.FLOAT_UNIT, numberUnit.toString()));
    }

    public GoogleBaseAttribute addNumberUnitAttribute(String str, Number number, String str2) {
        return addNumberUnitAttribute(str, new NumberUnit<>(number, str2));
    }

    public GoogleBaseAttribute addNumberUnitAttribute(String str, NumberUnit<Number> numberUnit) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.NUMBER_UNIT, numberUnit.toString()));
    }

    public GoogleBaseAttribute addDateAttribute(String str, DateTime dateTime) {
        if (!dateTime.isDateOnly()) {
            throw new IllegalArgumentException("DateTime should be only a date, NOT a date and a time. Call addDateTimeAttribute() instead.");
        }
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.DATE, dateTime.toString()));
    }

    public GoogleBaseAttribute addDateTimeAttribute(String str, DateTime dateTime) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.DATE_TIME, dateTime.toString()));
    }

    public GoogleBaseAttribute addUrlAttribute(String str, String str2) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.URL, str2));
    }

    public GoogleBaseAttribute addBooleanAttribute(String str, boolean z) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.BOOLEAN, Boolean.toString(z)));
    }

    public void addGroupAttribute(String str, Group group) {
        addAttribute(ConversionUtil.createAttribute(str, group));
    }

    public Group getGroupAttribute(String str) {
        GoogleBaseAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return ConversionUtil.extractGroup(attribute);
    }

    public Collection<? extends Group> getGroupAttributes(String str) {
        ArrayList arrayList = new ArrayList();
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, GoogleBaseAttributeType.GROUP)) {
                arrayList.add(ConversionUtil.extractGroup(googleBaseAttribute));
            }
        }
        return arrayList;
    }

    public Shipping getShippingAttribute(String str) {
        GoogleBaseAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return ConversionUtil.extractShipping(attribute);
    }

    public List<? extends Shipping> getShippingAttributes(String str) {
        ArrayList arrayList = new ArrayList();
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, GoogleBaseAttributeType.SHIPPING)) {
                arrayList.add(ConversionUtil.extractShipping(googleBaseAttribute));
            }
        }
        return arrayList;
    }

    public void addShippingAttribute(String str, Shipping shipping) {
        addAttribute(ConversionUtil.createAttribute(str, shipping));
    }

    public Tax getTaxAttribute(String str) {
        GoogleBaseAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return ConversionUtil.extractTax(attribute);
    }

    public List<? extends Tax> getTaxAttributes(String str) {
        ArrayList arrayList = new ArrayList();
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, GoogleBaseAttributeType.TAX)) {
                arrayList.add(ConversionUtil.extractTax(googleBaseAttribute));
            }
        }
        return arrayList;
    }

    public void addTaxAttribute(String str, Tax tax) {
        addAttribute(ConversionUtil.createAttribute(str, tax));
    }

    public String getLocationAttribute(String str) {
        return getAttributeAsString(str, GoogleBaseAttributeType.LOCATION);
    }

    public Location getLocationAttributeAsObject(String str) {
        GoogleBaseAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return ConversionUtil.extractLocation(attribute);
    }

    public List<? extends String> getLocationAttributes(String str) {
        return getAttributeValuesAsString(str, GoogleBaseAttributeType.LOCATION);
    }

    public List<Location> getLocationAttributesAsObjects(String str) {
        List<? extends GoogleBaseAttribute> attributes = getAttributes(str, GoogleBaseAttributeType.LOCATION);
        ArrayList arrayList = new ArrayList(attributes.size());
        Iterator<? extends GoogleBaseAttribute> it = attributes.iterator();
        while (it.hasNext()) {
            arrayList.add(ConversionUtil.extractLocation(it.next()));
        }
        return arrayList;
    }

    public GoogleBaseAttribute addLocationAttribute(String str, String str2) {
        return addAttribute(new GoogleBaseAttribute(str, GoogleBaseAttributeType.LOCATION, str2));
    }

    public GoogleBaseAttribute addLocationAttribute(String str, Location location) {
        return addAttribute(ConversionUtil.createAttribute(str, location));
    }

    public DateTimeRange getDateTimeRangeAttribute(String str) {
        GoogleBaseAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return null;
        }
        return ConversionUtil.extractDateTimeRange(attribute);
    }

    public List<? extends DateTimeRange> getDateTimeRangeAttributes(String str) {
        ArrayList arrayList = new ArrayList();
        for (GoogleBaseAttribute googleBaseAttribute : this.attributes) {
            if (hasNameAndType(googleBaseAttribute, str, GoogleBaseAttributeType.DATE_TIME_RANGE)) {
                arrayList.add(ConversionUtil.extractDateTimeRange(googleBaseAttribute));
            }
        }
        return arrayList;
    }

    public GoogleBaseAttribute addDateTimeRangeAttribute(String str, DateTimeRange dateTimeRange) {
        if (dateTimeRange.isDateTimeOnly()) {
            throw new IllegalArgumentException("Empty DateTimeRange. Add it as a single DateTime using addDateTimeAttribute() instead.");
        }
        return addAttribute(ConversionUtil.createAttribute(str, dateTimeRange));
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        Iterator<GoogleBaseAttribute> it = this.attributes.iterator();
        while (it.hasNext()) {
            generateAttribute(it.next(), xmlWriter);
        }
    }

    private void generateAttribute(GoogleBaseAttribute googleBaseAttribute, XmlWriter xmlWriter) throws IOException {
        xmlWriter.startElement(GoogleBaseNamespaces.G, convertToElementName(googleBaseAttribute.getAttributeId().getName()), getXmlAttributes(googleBaseAttribute), null);
        generateValue(googleBaseAttribute, xmlWriter);
        generateSubElements(googleBaseAttribute, xmlWriter);
        generateAdjustments(googleBaseAttribute, xmlWriter);
        generateSubAttributes(googleBaseAttribute, xmlWriter);
        xmlWriter.endElement();
    }

    private void generateValue(GoogleBaseAttribute googleBaseAttribute, XmlWriter xmlWriter) throws IOException {
        if (googleBaseAttribute.hasValue()) {
            xmlWriter.characters(googleBaseAttribute.getValueAsString());
        }
    }

    private void generateSubElements(GoogleBaseAttribute googleBaseAttribute, XmlWriter xmlWriter) throws IOException {
        if (googleBaseAttribute.hasSubElements()) {
            for (String str : googleBaseAttribute.getSubElementNames()) {
                Iterator<String> it = googleBaseAttribute.getSubElementValues(str).iterator();
                while (it.hasNext()) {
                    writeXmlNameValue(xmlWriter, GoogleBaseNamespaces.G, str, it.next());
                }
            }
        }
    }

    private void generateSubAttributes(GoogleBaseAttribute googleBaseAttribute, XmlWriter xmlWriter) throws IOException {
        if (googleBaseAttribute.hasSubAttributes()) {
            Iterator<GoogleBaseAttribute> it = googleBaseAttribute.getSubAttributes().iterator();
            while (it.hasNext()) {
                generateAttribute(it.next(), xmlWriter);
            }
        }
    }

    private void generateAdjustments(GoogleBaseAttribute googleBaseAttribute, XmlWriter xmlWriter) throws IOException {
        if (googleBaseAttribute.hasAdjustments()) {
            Adjustments adjustments = googleBaseAttribute.getAdjustments();
            if (adjustments.getName() != null) {
                writeXmlNameValue(xmlWriter, GoogleBaseNamespaces.GM, GM_ADJUSTED_NAME_ATTRIBUTE, adjustments.getName());
            }
            if (adjustments.getValue() != null) {
                writeXmlNameValue(xmlWriter, GoogleBaseNamespaces.GM, GM_ADJUSTED_VALUE_ATTRIBUTE, adjustments.getValue());
            }
        }
    }

    private void writeXmlNameValue(XmlWriter xmlWriter, XmlWriter.Namespace namespace, String str, String str2) throws IOException {
        xmlWriter.startElement(namespace, convertToElementName(str), null, null);
        xmlWriter.characters(str2);
        xmlWriter.endElement();
    }

    private String convertToElementName(String str) {
        return str.replace(' ', '_');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String convertToAttributeName(String str) {
        return str.replace('_', ' ');
    }

    private Collection<XmlWriter.Attribute> getXmlAttributes(GoogleBaseAttribute googleBaseAttribute) {
        GoogleBaseAttributeType type = googleBaseAttribute.getAttributeId().getType();
        if (type == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new XmlWriter.Attribute("type", type.toString()));
        if (googleBaseAttribute.isPrivate()) {
            arrayList.add(new XmlWriter.Attribute("access", GphotoAccess.Value.PRIVATE));
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GoogleBaseAttribute createExtensionAttribute(String str, Attributes attributes) {
        String value = attributes.getValue("type");
        return new GoogleBaseAttribute(str, GoogleBaseAttributeType.getInstance(value), GphotoAccess.Value.PRIVATE.equals(attributes.getValue("access")));
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new Handler(str2, attributes);
    }

    public String getApplication() {
        return getTextAttribute("application");
    }

    public void setApplication(String str) {
        removeAttributes("application", GoogleBaseAttributeType.TEXT);
        addTextAttribute("application", str);
    }

    /* JADX INFO: loaded from: classes3.dex */
    class Handler extends XmlParser.ElementHandler {
        private final GoogleBaseAttribute attribute;

        Handler(String str, Attributes attributes) {
            this.attribute = GoogleBaseAttributesExtension.this.createExtensionAttribute(GoogleBaseAttributesExtension.this.convertToAttributeName(str), attributes);
            GoogleBaseAttributesExtension.this.attributes.add(this.attribute);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.value != null) {
                this.attribute.setValue(this.value);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(final String str, final String str2, Attributes attributes) {
            GoogleBaseAttributeType type = this.attribute.getType();
            return (type == null || !GoogleBaseAttributeType.GROUP.isSupertypeOf(type)) ? new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.GoogleBaseAttributesExtension.Handler.1
                private int width = -1;
                private int height = -1;

                @Override // com.google.gdata.util.XmlParser.ElementHandler
                public void processEndElement() {
                    if (!GoogleBaseNamespaces.GM_URI.equals(str)) {
                        Handler.this.attribute.appendSubElement(str2, this.value);
                        return;
                    }
                    if (GoogleBaseAttributesExtension.GM_ADJUSTED_VALUE_ATTRIBUTE.equals(str2)) {
                        Handler.this.attribute.getAdjustments().setValue(this.value);
                        return;
                    }
                    if (GoogleBaseAttributesExtension.GM_ADJUSTED_NAME_ATTRIBUTE.equals(str2)) {
                        Handler.this.attribute.getAdjustments().setName(this.value);
                        return;
                    }
                    if (GoogleBaseAttributesExtension.GM_THUMBNAIL_ATTRIBUTE.equals(str2)) {
                        Thumbnail thumbnail = new Thumbnail();
                        thumbnail.setUrl(this.value.trim());
                        if (this.width > 0 && this.height > 0) {
                            thumbnail.setSize(this.width, this.height);
                        }
                        Handler.this.attribute.getThumbnails().add(thumbnail);
                    }
                }

                @Override // com.google.gdata.util.XmlParser.ElementHandler
                public void processAttribute(String str3, String str4, String str5) throws ParseException {
                    if ("width".equals(str4)) {
                        this.width = parseInteger(str5);
                    } else if ("height".equals(str4)) {
                        this.height = parseInteger(str5);
                    }
                }

                private int parseInteger(String str3) throws ParseException {
                    try {
                        return Integer.parseInt(str3);
                    } catch (NumberFormatException e2) {
                        throw new ParseException("Invalid size value '" + str3 + "'", e2);
                    }
                }
            } : GoogleBaseAttributesExtension.this.new GroupSubAttrHandler(str2, attributes);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class GroupSubAttrHandler extends XmlParser.ElementHandler {
        private final GoogleBaseAttribute attribute;

        GroupSubAttrHandler(String str, Attributes attributes) {
            this.attribute = GoogleBaseAttributesExtension.this.createExtensionAttribute(GoogleBaseAttributesExtension.this.convertToAttributeName(str), attributes);
            ((GoogleBaseAttribute) GoogleBaseAttributesExtension.this.attributes.get(GoogleBaseAttributesExtension.this.attributes.size() - 1)).addSubAttribute(this.attribute);
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            if (this.value != null) {
                this.attribute.setValue(this.value);
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public XmlParser.ElementHandler getChildHandler(final String str, final String str2, Attributes attributes) {
            return new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.GoogleBaseAttributesExtension.GroupSubAttrHandler.1
                @Override // com.google.gdata.util.XmlParser.ElementHandler
                public void processEndElement() {
                    if (!GoogleBaseNamespaces.GM_URI.equals(str)) {
                        GroupSubAttrHandler.this.attribute.appendSubElement(str2, this.value);
                    } else if (GoogleBaseAttributesExtension.GM_ADJUSTED_VALUE_ATTRIBUTE.equals(str2)) {
                        GroupSubAttrHandler.this.attribute.getAdjustments().setValue(this.value);
                    } else if (GoogleBaseAttributesExtension.GM_ADJUSTED_NAME_ATTRIBUTE.equals(str2)) {
                        GroupSubAttrHandler.this.attribute.getAdjustments().setName(this.value);
                    }
                }
            };
        }
    }
}
