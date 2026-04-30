package com.google.gdata.data.finance;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = PortfolioData.XML_NAME, nsAlias = FinanceNamespace.GF_ALIAS, nsUri = FinanceNamespace.GF)
public class PortfolioData extends ExtensionPoint {
    private static final String CURRENCYCODE = "currencyCode";
    private static final String GAINPERCENTAGE = "gainPercentage";
    private static final String RETURN1W = "return1w";
    private static final String RETURN1Y = "return1y";
    private static final String RETURN3M = "return3m";
    private static final String RETURN3Y = "return3y";
    private static final String RETURN4W = "return4w";
    private static final String RETURN5Y = "return5y";
    private static final String RETURNOVERALL = "returnOverall";
    private static final String RETURNYTD = "returnYTD";
    static final String XML_NAME = "portfolioData";
    private String currencyCode = null;
    private Double gainPercentage = null;
    private Double return1w = null;
    private Double return1y = null;
    private Double return3m = null;
    private Double return3y = null;
    private Double return4w = null;
    private Double return5y = null;
    private Double returnOverall = null;
    private Double returnYTD = null;

    public PortfolioData() {
    }

    public PortfolioData(String str, Double d2, Double d3, Double d4, Double d5, Double d6, Double d7, Double d8, Double d9, Double d10) {
        setCurrencyCode(str);
        setGainPercentage(d2);
        setReturn1w(d3);
        setReturn1y(d4);
        setReturn3m(d5);
        setReturn3y(d6);
        setReturn4w(d7);
        setReturn5y(d8);
        setReturnOverall(d9);
        setReturnYTD(d10);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PortfolioData.class)) {
            extensionProfile.declare(PortfolioData.class, CostBasis.class);
            new CostBasis().declareExtensions(extensionProfile);
            extensionProfile.declare(PortfolioData.class, DaysGain.class);
            new DaysGain().declareExtensions(extensionProfile);
            extensionProfile.declare(PortfolioData.class, Gain.class);
            new Gain().declareExtensions(extensionProfile);
            extensionProfile.declare(PortfolioData.class, MarketValue.class);
            new MarketValue().declareExtensions(extensionProfile);
        }
    }

    public CostBasis getCostBasis() {
        return (CostBasis) getExtension(CostBasis.class);
    }

    public void setCostBasis(CostBasis costBasis) {
        if (costBasis == null) {
            removeExtension(CostBasis.class);
        } else {
            setExtension(costBasis);
        }
    }

    public boolean hasCostBasis() {
        return hasExtension(CostBasis.class);
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

    public DaysGain getDaysGain() {
        return (DaysGain) getExtension(DaysGain.class);
    }

    public void setDaysGain(DaysGain daysGain) {
        if (daysGain == null) {
            removeExtension(DaysGain.class);
        } else {
            setExtension(daysGain);
        }
    }

    public boolean hasDaysGain() {
        return hasExtension(DaysGain.class);
    }

    public Gain getGain() {
        return (Gain) getExtension(Gain.class);
    }

    public void setGain(Gain gain) {
        if (gain == null) {
            removeExtension(Gain.class);
        } else {
            setExtension(gain);
        }
    }

    public boolean hasGain() {
        return hasExtension(Gain.class);
    }

    public Double getGainPercentage() {
        return this.gainPercentage;
    }

    public void setGainPercentage(Double d2) {
        throwExceptionIfImmutable();
        this.gainPercentage = d2;
    }

    public boolean hasGainPercentage() {
        return getGainPercentage() != null;
    }

    public MarketValue getMarketValue() {
        return (MarketValue) getExtension(MarketValue.class);
    }

    public void setMarketValue(MarketValue marketValue) {
        if (marketValue == null) {
            removeExtension(MarketValue.class);
        } else {
            setExtension(marketValue);
        }
    }

    public boolean hasMarketValue() {
        return hasExtension(MarketValue.class);
    }

    public Double getReturn1w() {
        return this.return1w;
    }

    public void setReturn1w(Double d2) {
        throwExceptionIfImmutable();
        this.return1w = d2;
    }

    public boolean hasReturn1w() {
        return getReturn1w() != null;
    }

    public Double getReturn1y() {
        return this.return1y;
    }

    public void setReturn1y(Double d2) {
        throwExceptionIfImmutable();
        this.return1y = d2;
    }

    public boolean hasReturn1y() {
        return getReturn1y() != null;
    }

    public Double getReturn3m() {
        return this.return3m;
    }

    public void setReturn3m(Double d2) {
        throwExceptionIfImmutable();
        this.return3m = d2;
    }

    public boolean hasReturn3m() {
        return getReturn3m() != null;
    }

    public Double getReturn3y() {
        return this.return3y;
    }

    public void setReturn3y(Double d2) {
        throwExceptionIfImmutable();
        this.return3y = d2;
    }

    public boolean hasReturn3y() {
        return getReturn3y() != null;
    }

    public Double getReturn4w() {
        return this.return4w;
    }

    public void setReturn4w(Double d2) {
        throwExceptionIfImmutable();
        this.return4w = d2;
    }

    public boolean hasReturn4w() {
        return getReturn4w() != null;
    }

    public Double getReturn5y() {
        return this.return5y;
    }

    public void setReturn5y(Double d2) {
        throwExceptionIfImmutable();
        this.return5y = d2;
    }

    public boolean hasReturn5y() {
        return getReturn5y() != null;
    }

    public Double getReturnOverall() {
        return this.returnOverall;
    }

    public void setReturnOverall(Double d2) {
        throwExceptionIfImmutable();
        this.returnOverall = d2;
    }

    public boolean hasReturnOverall() {
        return getReturnOverall() != null;
    }

    public Double getReturnYTD() {
        return this.returnYTD;
    }

    public void setReturnYTD(Double d2) {
        throwExceptionIfImmutable();
        this.returnYTD = d2;
    }

    public boolean hasReturnYTD() {
        return getReturnYTD() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(PortfolioData.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(CURRENCYCODE, this.currencyCode);
        attributeGenerator.put(GAINPERCENTAGE, (Object) this.gainPercentage);
        attributeGenerator.put(RETURN1W, (Object) this.return1w);
        attributeGenerator.put(RETURN1Y, (Object) this.return1y);
        attributeGenerator.put(RETURN3M, (Object) this.return3m);
        attributeGenerator.put(RETURN3Y, (Object) this.return3y);
        attributeGenerator.put(RETURN4W, (Object) this.return4w);
        attributeGenerator.put(RETURN5Y, (Object) this.return5y);
        attributeGenerator.put(RETURNOVERALL, (Object) this.returnOverall);
        attributeGenerator.put(RETURNYTD, (Object) this.returnYTD);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.currencyCode = attributeHelper.consume(CURRENCYCODE, false);
        this.gainPercentage = Double.valueOf(attributeHelper.consumeDouble(GAINPERCENTAGE, false));
        this.return1w = Double.valueOf(attributeHelper.consumeDouble(RETURN1W, false));
        this.return1y = Double.valueOf(attributeHelper.consumeDouble(RETURN1Y, false));
        this.return3m = Double.valueOf(attributeHelper.consumeDouble(RETURN3M, false));
        this.return3y = Double.valueOf(attributeHelper.consumeDouble(RETURN3Y, false));
        this.return4w = Double.valueOf(attributeHelper.consumeDouble(RETURN4W, false));
        this.return5y = Double.valueOf(attributeHelper.consumeDouble(RETURN5Y, false));
        this.returnOverall = Double.valueOf(attributeHelper.consumeDouble(RETURNOVERALL, false));
        this.returnYTD = Double.valueOf(attributeHelper.consumeDouble(RETURNYTD, false));
    }

    public String toString() {
        return "{PortfolioData currencyCode=" + this.currencyCode + " gainPercentage=" + this.gainPercentage + " return1w=" + this.return1w + " return1y=" + this.return1y + " return3m=" + this.return3m + " return3y=" + this.return3y + " return4w=" + this.return4w + " return5y=" + this.return5y + " returnOverall=" + this.returnOverall + " returnYTD=" + this.returnYTD + "}";
    }
}
