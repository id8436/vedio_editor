package com.google.gdata.data.finance;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "symbol", nsAlias = FinanceNamespace.GF_ALIAS, nsUri = FinanceNamespace.GF)
public class Symbol extends ExtensionPoint {
    private static final String EXCHANGE = "exchange";
    private static final String FULLNAME = "fullName";
    private static final String SYMBOL = "symbol";
    static final String XML_NAME = "symbol";
    private String exchange = null;
    private String fullName = null;
    private String symbol = null;

    public Symbol() {
    }

    public Symbol(String str, String str2, String str3) {
        setExchange(str);
        setFullName(str2);
        setSymbol(str3);
        setImmutable(true);
    }

    public String getExchange() {
        return this.exchange;
    }

    public void setExchange(String str) {
        throwExceptionIfImmutable();
        this.exchange = str;
    }

    public boolean hasExchange() {
        return getExchange() != null;
    }

    public String getFullName() {
        return this.fullName;
    }

    public void setFullName(String str) {
        throwExceptionIfImmutable();
        this.fullName = str;
    }

    public boolean hasFullName() {
        return getFullName() != null;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public void setSymbol(String str) {
        throwExceptionIfImmutable();
        this.symbol = str;
    }

    public boolean hasSymbol() {
        return getSymbol() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.exchange == null) {
            throwExceptionForMissingAttribute(EXCHANGE);
        }
        if (this.fullName == null) {
            throwExceptionForMissingAttribute(FULLNAME);
        }
        if (this.symbol == null) {
            throwExceptionForMissingAttribute("symbol");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Symbol.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(EXCHANGE, this.exchange);
        attributeGenerator.put(FULLNAME, this.fullName);
        attributeGenerator.put("symbol", this.symbol);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.exchange = attributeHelper.consume(EXCHANGE, true);
        this.fullName = attributeHelper.consume(FULLNAME, true);
        this.symbol = attributeHelper.consume("symbol", true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        Symbol symbol = (Symbol) obj;
        return eq(this.exchange, symbol.exchange) && eq(this.fullName, symbol.fullName) && eq(this.symbol, symbol.symbol);
    }

    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (this.exchange != null) {
            iHashCode = (iHashCode * 37) + this.exchange.hashCode();
        }
        if (this.fullName != null) {
            iHashCode = (iHashCode * 37) + this.fullName.hashCode();
        }
        if (this.symbol != null) {
            return (iHashCode * 37) + this.symbol.hashCode();
        }
        return iHashCode;
    }

    public String toString() {
        return "{Symbol exchange=" + this.exchange + " fullName=" + this.fullName + " symbol=" + this.symbol + "}";
    }
}
