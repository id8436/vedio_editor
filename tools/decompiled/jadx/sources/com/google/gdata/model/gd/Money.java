package com.google.gdata.model.gd;

import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;

/* JADX INFO: loaded from: classes3.dex */
public class Money extends Element {
    public static final ElementKey<Void, Money> KEY = ElementKey.of(new QName(com.google.gdata.util.Namespaces.gNs, "money"), Void.class, Money.class);
    public static final AttributeKey<Double> AMOUNT = AttributeKey.of(new QName(null, "amount"), Double.class);
    public static final AttributeKey<String> CURRENCY_CODE = AttributeKey.of(new QName(null, "currencyCode"), String.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator elementCreatorBuild = metadataRegistry.build(KEY);
            elementCreatorBuild.addAttribute(AMOUNT).setRequired(true);
            elementCreatorBuild.addAttribute(CURRENCY_CODE).setRequired(true);
        }
    }

    public Money() {
        super(KEY);
    }

    protected Money(ElementKey<?, ? extends Money> elementKey) {
        super(elementKey);
    }

    protected Money(ElementKey<?, ? extends Money> elementKey, Element element) {
        super(elementKey, element);
    }

    @Override // com.google.gdata.model.Element
    public Money lock() {
        return (Money) super.lock();
    }

    public Double getAmount() {
        return (Double) super.getAttributeValue(AMOUNT);
    }

    public Money setAmount(Double d2) {
        super.setAttributeValue(AMOUNT, d2);
        return this;
    }

    public boolean hasAmount() {
        return super.hasAttribute(AMOUNT);
    }

    public String getCurrencyCode() {
        return (String) super.getAttributeValue(CURRENCY_CODE);
    }

    public Money setCurrencyCode(String str) {
        super.setAttributeValue(CURRENCY_CODE, str);
        return this;
    }

    public boolean hasCurrencyCode() {
        return super.hasAttribute(CURRENCY_CODE);
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Money money = (Money) obj;
        return eq(getAmount(), money.getAmount()) && eq(getCurrencyCode(), money.getCurrencyCode());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getAmount() != null) {
            iHashCode = (iHashCode * 37) + getAmount().hashCode();
        }
        if (getCurrencyCode() != null) {
            return (iHashCode * 37) + getCurrencyCode().hashCode();
        }
        return iHashCode;
    }
}
