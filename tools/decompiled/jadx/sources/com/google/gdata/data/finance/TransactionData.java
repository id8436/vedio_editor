package com.google.gdata.data.finance;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = TransactionData.XML_NAME, nsAlias = FinanceNamespace.GF_ALIAS, nsUri = FinanceNamespace.GF)
public class TransactionData extends ExtensionPoint {
    private static final String DATE = "date";
    private static final String NOTES = "notes";
    private static final String SHARES = "shares";
    private static final String TYPE = "type";
    static final String XML_NAME = "transactionData";
    private DateTime date = null;
    private String notes = null;
    private Double shares = null;
    private String type = null;

    public TransactionData() {
    }

    public TransactionData(DateTime dateTime, String str, Double d2, String str2) {
        setDate(dateTime);
        setNotes(str);
        setShares(d2);
        setType(str2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(TransactionData.class)) {
            extensionProfile.declare(TransactionData.class, Commission.class);
            new Commission().declareExtensions(extensionProfile);
            extensionProfile.declare(TransactionData.class, Price.class);
            new Price().declareExtensions(extensionProfile);
        }
    }

    public Commission getCommission() {
        return (Commission) getExtension(Commission.class);
    }

    public void setCommission(Commission commission) {
        if (commission == null) {
            removeExtension(Commission.class);
        } else {
            setExtension(commission);
        }
    }

    public boolean hasCommission() {
        return hasExtension(Commission.class);
    }

    public DateTime getDate() {
        return this.date;
    }

    public void setDate(DateTime dateTime) {
        throwExceptionIfImmutable();
        this.date = dateTime;
    }

    public boolean hasDate() {
        return getDate() != null;
    }

    public String getNotes() {
        return this.notes;
    }

    public void setNotes(String str) {
        throwExceptionIfImmutable();
        this.notes = str;
    }

    public boolean hasNotes() {
        return getNotes() != null;
    }

    public Price getPrice() {
        return (Price) getExtension(Price.class);
    }

    public void setPrice(Price price) {
        if (price == null) {
            removeExtension(Price.class);
        } else {
            setExtension(price);
        }
    }

    public boolean hasPrice() {
        return hasExtension(Price.class);
    }

    public Double getShares() {
        return this.shares;
    }

    public void setShares(Double d2) {
        throwExceptionIfImmutable();
        this.shares = d2;
    }

    public boolean hasShares() {
        return getShares() != null;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        throwExceptionIfImmutable();
        this.type = str;
    }

    public boolean hasType() {
        return getType() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.type == null) {
            throwExceptionForMissingAttribute("type");
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(TransactionData.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(DATE, (Object) this.date);
        attributeGenerator.put(NOTES, this.notes);
        attributeGenerator.put(SHARES, (Object) this.shares);
        attributeGenerator.put("type", this.type);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.date = attributeHelper.consumeDateTime(DATE, false);
        this.notes = attributeHelper.consume(NOTES, false);
        this.shares = Double.valueOf(attributeHelper.consumeDouble(SHARES, false));
        this.type = attributeHelper.consume("type", true);
    }

    public String toString() {
        return "{TransactionData date=" + this.date + " notes=" + this.notes + " shares=" + this.shares + " type=" + this.type + "}";
    }
}
