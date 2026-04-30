package com.google.gdata.model.gd;

import com.google.gdata.data.DateTime;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class GeoPt extends Element {
    public static final ElementKey<Void, GeoPt> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "geoPt"), Void.class, GeoPt.class);
    public static final AttributeKey<Float> ELEV = AttributeKey.of(new QName(null, "elev"), Float.class);
    public static final AttributeKey<String> LABEL = AttributeKey.of(new QName(null, "label"), String.class);
    public static final AttributeKey<Float> LAT = AttributeKey.of(new QName(null, "lat"), Float.class);
    public static final AttributeKey<Float> LON = AttributeKey.of(new QName(null, "lon"), Float.class);
    public static final AttributeKey<DateTime> TIME = AttributeKey.of(new QName(null, "time"), DateTime.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(ELEV);
            elementCreatorBuild.addAttribute(LABEL);
            elementCreatorBuild.addAttribute(LAT);
            elementCreatorBuild.addAttribute(LON);
            elementCreatorBuild.addAttribute(TIME);
        }
    }

    public GeoPt() {
        super(KEY);
    }

    protected GeoPt(ElementKey<?, ? extends GeoPt> elementKey) {
        super(elementKey);
    }

    protected GeoPt(ElementKey<?, ? extends GeoPt> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public GeoPt lock() {
        return (GeoPt) super.lock();
    }

    public Float getElev() {
        return (Float) super.getAttributeValue(ELEV);
    }

    public GeoPt setElev(Float f2) {
        super.setAttributeValue(ELEV, f2);
        return this;
    }

    public boolean hasElev() {
        return super.hasAttribute(ELEV);
    }

    public String getLabel() {
        return (String) super.getAttributeValue(LABEL);
    }

    public GeoPt setLabel(String str) {
        super.setAttributeValue(LABEL, str);
        return this;
    }

    public boolean hasLabel() {
        return super.hasAttribute(LABEL);
    }

    public Float getLat() {
        return (Float) super.getAttributeValue(LAT);
    }

    public GeoPt setLat(Float f2) {
        super.setAttributeValue(LAT, f2);
        return this;
    }

    public boolean hasLat() {
        return super.hasAttribute(LAT);
    }

    public Float getLon() {
        return (Float) super.getAttributeValue(LON);
    }

    public GeoPt setLon(Float f2) {
        super.setAttributeValue(LON, f2);
        return this;
    }

    public boolean hasLon() {
        return super.hasAttribute(LON);
    }

    public DateTime getTime() {
        return (DateTime) super.getAttributeValue(TIME);
    }

    public GeoPt setTime(DateTime dateTime) {
        super.setAttributeValue(TIME, dateTime);
        return this;
    }

    public boolean hasTime() {
        return super.hasAttribute(TIME);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        GeoPt geoPt = (GeoPt) obj;
        return eq(getElev(), geoPt.getElev()) && eq(getLabel(), geoPt.getLabel()) && eq(getLat(), geoPt.getLat()) && eq(getLon(), geoPt.getLon()) && eq(getTime(), geoPt.getTime());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getElev() != null) {
            iHashCode = (iHashCode * 37) + getElev().hashCode();
        }
        if (getLabel() != null) {
            iHashCode = (iHashCode * 37) + getLabel().hashCode();
        }
        if (getLat() != null) {
            iHashCode = (iHashCode * 37) + getLat().hashCode();
        }
        if (getLon() != null) {
            iHashCode = (iHashCode * 37) + getLon().hashCode();
        }
        if (getTime() != null) {
            return (iHashCode * 37) + getTime().hashCode();
        }
        return iHashCode;
    }
}
