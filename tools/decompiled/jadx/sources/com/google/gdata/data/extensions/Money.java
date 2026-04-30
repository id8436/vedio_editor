package com.google.gdata.data.extensions;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = Money.XML_NAME, nsAlias = "gd", nsUri = "http://schemas.google.com/g/2005")
public class Money extends ExtensionPoint {
    private static final String AMOUNT = "amount";
    private static final String CURRENCYCODE = "currencyCode";
    static final String XML_NAME = "money";
    private Double amount = null;
    private String currencyCode = null;

    public Money() {
    }

    public Money(Double d2, String str) {
        setAmount(d2);
        setCurrencyCode(str);
        setImmutable(true);
    }

    public Double getAmount() {
        return this.amount;
    }

    public void setAmount(Double d2) {
        throwExceptionIfImmutable();
        this.amount = d2;
    }

    public boolean hasAmount() {
        return getAmount() != null;
    }

    public String getCurrencyCode() {
        return this.currencyCode;
    }

    public void setCurrencyCode(String str) {
        throwExceptionIfImmutable();
        this.currencyCode = str;
    }

    public boolean hasCurrencyCode() {
        return getCurrencyCode() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.amount == null) {
            throwExceptionForMissingAttribute(AMOUNT);
        }
        if (this.currencyCode == null) {
            throwExceptionForMissingAttribute(CURRENCYCODE);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Money.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(AMOUNT, (Object) this.amount);
        attributeGenerator.put(CURRENCYCODE, this.currencyCode);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.amount = Double.valueOf(attributeHelper.consumeDouble(AMOUNT, true));
        this.currencyCode = attributeHelper.consume(CURRENCYCODE, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Money money = (Money) obj;
        return eq(this.amount, money.amount) && eq(this.currencyCode, money.currencyCode);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.amount != null) {
            iHashCode = (iHashCode * 37) + this.amount.hashCode();
        }
        if (this.currencyCode != null) {
            return (iHashCode * 37) + this.currencyCode.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Money amount=" + this.amount + " currencyCode=" + this.currencyCode + "}";
    }
}
