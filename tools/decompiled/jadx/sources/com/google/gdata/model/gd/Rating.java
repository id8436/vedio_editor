package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Rating extends Element {
    public static final ElementKey<Void, Rating> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "rating"), Void.class, Rating.class);
    public static final AttributeKey<Float> AVERAGE = AttributeKey.of(new QName(null, "average"), Float.class);
    public static final AttributeKey<Integer> MAX = AttributeKey.of(new QName(null, "max"), Integer.class);
    public static final AttributeKey<Integer> MIN = AttributeKey.of(new QName(null, "min"), Integer.class);
    public static final AttributeKey<Integer> NUM_RATERS = AttributeKey.of(new QName(null, "numRaters"), Integer.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<Integer> VALUE = AttributeKey.of(new QName(null, "value"), Integer.class);

    public final class Rel {
        public static final String PRICE = "http://schemas.google.com/g/2005#price";
        public static final String QUALITY = "http://schemas.google.com/g/2005#quality";
        public static final String OVERALL = "http://schemas.google.com/g/2005#overall";
        private static final String[] ALL_VALUES = {OVERALL, "http://schemas.google.com/g/2005#price", "http://schemas.google.com/g/2005#quality"};

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(AVERAGE);
            elementCreatorBuild.addAttribute(MAX);
            elementCreatorBuild.addAttribute(MIN);
            elementCreatorBuild.addAttribute(NUM_RATERS);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(VALUE);
        }
    }

    public Rating() {
        super(KEY);
    }

    protected Rating(ElementKey<?, ? extends Rating> elementKey) {
        super(elementKey);
    }

    protected Rating(ElementKey<?, ? extends Rating> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Rating lock() {
        return (Rating) super.lock();
    }

    public Float getAverage() {
        return (Float) super.getAttributeValue(AVERAGE);
    }

    public Rating setAverage(Float f2) {
        super.setAttributeValue(AVERAGE, f2);
        return this;
    }

    public boolean hasAverage() {
        return super.hasAttribute(AVERAGE);
    }

    public Integer getMax() {
        return (Integer) super.getAttributeValue(MAX);
    }

    public Rating setMax(Integer num) {
        super.setAttributeValue(MAX, num);
        return this;
    }

    public boolean hasMax() {
        return super.hasAttribute(MAX);
    }

    public Integer getMin() {
        return (Integer) super.getAttributeValue(MIN);
    }

    public Rating setMin(Integer num) {
        super.setAttributeValue(MIN, num);
        return this;
    }

    public boolean hasMin() {
        return super.hasAttribute(MIN);
    }

    public Integer getNumRaters() {
        return (Integer) super.getAttributeValue(NUM_RATERS);
    }

    public Rating setNumRaters(Integer num) {
        super.setAttributeValue(NUM_RATERS, num);
        return this;
    }

    public boolean hasNumRaters() {
        return super.hasAttribute(NUM_RATERS);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Rating setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    public Integer getValue() {
        return (Integer) super.getAttributeValue(VALUE);
    }

    public Rating setValue(Integer num) {
        super.setAttributeValue(VALUE, num);
        return this;
    }

    public boolean hasValue() {
        return super.hasAttribute(VALUE);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Rating rating = (Rating) obj;
        return eq(getAverage(), rating.getAverage()) && eq(getMax(), rating.getMax()) && eq(getMin(), rating.getMin()) && eq(getNumRaters(), rating.getNumRaters()) && eq(getRel(), rating.getRel()) && eq(getValue(), rating.getValue());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getAverage() != null) {
            iHashCode = (iHashCode * 37) + getAverage().hashCode();
        }
        if (getMax() != null) {
            iHashCode = (iHashCode * 37) + getMax().hashCode();
        }
        if (getMin() != null) {
            iHashCode = (iHashCode * 37) + getMin().hashCode();
        }
        if (getNumRaters() != null) {
            iHashCode = (iHashCode * 37) + getNumRaters().hashCode();
        }
        if (getRel() != null) {
            iHashCode = (iHashCode * 37) + getRel().hashCode();
        }
        if (getValue() != null) {
            return (iHashCode * 37) + getValue().hashCode();
        }
        return iHashCode;
    }
}
