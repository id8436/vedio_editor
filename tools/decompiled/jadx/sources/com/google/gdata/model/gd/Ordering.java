package com.google.gdata.model.gd;

import com.adobe.mobile.TargetLocationRequest;
import com.google.gdata.data.ILink;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Ordering extends Element {
    public static final ElementKey<Void, Ordering> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "ordering"), Void.class, Ordering.class);
    public static final AttributeKey<String> ORDER_ID = AttributeKey.of(new QName(null, TargetLocationRequest.TARGET_PARAMETER_ORDER_ID), String.class);
    public static final AttributeKey<String> REL = AttributeKey.of(new QName(null, "rel"), String.class);
    public static final AttributeKey<String> REF = AttributeKey.of(new QName(null, "ref"), String.class);
    public static final AttributeKey<String> PREV = AttributeKey.of(new QName(null, "prev"), String.class);
    public static final AttributeKey<String> NEXT = AttributeKey.of(new QName(null, ILink.Rel.NEXT), String.class);

    public final class Rel {
        public static final String COMESAFTER = "comesAfter";
        public static final String FIRST = "first";
        public static final String LAST = "last";
        private static final String[] ALL_VALUES = {COMESAFTER, FIRST, LAST};

        public static String[] values() {
            return ALL_VALUES;
        }

        private Rel() {
        }
    }

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(ORDER_ID);
            elementCreatorBuild.addAttribute(REL);
            elementCreatorBuild.addAttribute(REF);
            elementCreatorBuild.addAttribute(PREV);
            elementCreatorBuild.addAttribute(NEXT);
        }
    }

    public Ordering() {
        super(KEY);
    }

    protected Ordering(ElementKey<?, ? extends Ordering> elementKey) {
        super(elementKey);
    }

    protected Ordering(ElementKey<?, ? extends Ordering> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Ordering lock() {
        return (Ordering) super.lock();
    }

    public String getNext() {
        return (String) super.getAttributeValue(NEXT);
    }

    public Ordering setNext(String str) {
        super.setAttributeValue(NEXT, str);
        return this;
    }

    public boolean hasNext() {
        return super.hasAttribute(NEXT);
    }

    public String getOrderId() {
        return (String) super.getAttributeValue(ORDER_ID);
    }

    public Ordering setOrderId(String str) {
        super.setAttributeValue(ORDER_ID, str);
        return this;
    }

    public boolean hasOrderId() {
        return super.hasAttribute(ORDER_ID);
    }

    public String getPrev() {
        return (String) super.getAttributeValue(PREV);
    }

    public Ordering setPrev(String str) {
        super.setAttributeValue(PREV, str);
        return this;
    }

    public boolean hasPrev() {
        return super.hasAttribute(PREV);
    }

    public String getRef() {
        return (String) super.getAttributeValue(REF);
    }

    public Ordering setRef(String str) {
        super.setAttributeValue(REF, str);
        return this;
    }

    public boolean hasRef() {
        return super.hasAttribute(REF);
    }

    public String getRel() {
        return (String) super.getAttributeValue(REL);
    }

    public Ordering setRel(String str) {
        super.setAttributeValue(REL, str);
        return this;
    }

    public boolean hasRel() {
        return super.hasAttribute(REL);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Ordering ordering = (Ordering) obj;
        return eq(getNext(), ordering.getNext()) && eq(getOrderId(), ordering.getOrderId()) && eq(getPrev(), ordering.getPrev()) && eq(getRef(), ordering.getRef()) && eq(getRel(), ordering.getRel());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getNext() != null) {
            iHashCode = (iHashCode * 37) + getNext().hashCode();
        }
        if (getOrderId() != null) {
            iHashCode = (iHashCode * 37) + getOrderId().hashCode();
        }
        if (getPrev() != null) {
            iHashCode = (iHashCode * 37) + getPrev().hashCode();
        }
        if (getRef() != null) {
            iHashCode = (iHashCode * 37) + getRef().hashCode();
        }
        if (getRel() != null) {
            return (iHashCode * 37) + getRel().hashCode();
        }
        return iHashCode;
    }
}
