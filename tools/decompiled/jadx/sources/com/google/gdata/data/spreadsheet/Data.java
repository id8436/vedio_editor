package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "data", nsAlias = Namespaces.gSpreadAlias, nsUri = Namespaces.gSpread)
public class Data extends ExtensionPoint {
    private static final String INSERTIONMODE = "insertionMode";
    private static final AttributeHelper.EnumToAttributeValue<InsertionMode> INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE = new AttributeHelper.LowerCaseEnumToAttributeValue();
    private static final String NUMROWS = "numRows";
    private static final String STARTROW = "startRow";
    static final String XML_NAME = "data";
    private InsertionMode insertionMode = null;
    private Integer numberOfRows = null;
    private Integer startIndex = null;

    /* JADX INFO: loaded from: classes3.dex */
    public enum InsertionMode {
        INSERT,
        OVERWRITE
    }

    public Data() {
    }

    public Data(InsertionMode insertionMode, Integer num, Integer num2) {
        setInsertionMode(insertionMode);
        setNumberOfRows(num);
        setStartIndex(num2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Data.class)) {
            extensionProfile.declare(Data.class, Column.getDefaultDescription(false, true));
        }
    }

    public List<Column> getColumns() {
        return getRepeatingExtension(Column.class);
    }

    public void addColumn(Column column) {
        getColumns().add(column);
    }

    public boolean hasColumns() {
        return hasRepeatingExtension(Column.class);
    }

    public InsertionMode getInsertionMode() {
        return this.insertionMode;
    }

    public void setInsertionMode(InsertionMode insertionMode) {
        throwExceptionIfImmutable();
        this.insertionMode = insertionMode;
    }

    public boolean hasInsertionMode() {
        return getInsertionMode() != null;
    }

    public Integer getNumberOfRows() {
        return this.numberOfRows;
    }

    public void setNumberOfRows(Integer num) {
        throwExceptionIfImmutable();
        this.numberOfRows = num;
    }

    public boolean hasNumberOfRows() {
        return getNumberOfRows() != null;
    }

    public Integer getStartIndex() {
        return this.startIndex;
    }

    public void setStartIndex(Integer num) {
        throwExceptionIfImmutable();
        this.startIndex = num;
    }

    public boolean hasStartIndex() {
        return getStartIndex() != null;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.startIndex == null) {
            throwExceptionForMissingAttribute(STARTROW);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Data.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(INSERTIONMODE, this.insertionMode, INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE);
        attributeGenerator.put(NUMROWS, (Object) this.numberOfRows);
        attributeGenerator.put(STARTROW, (Object) this.startIndex);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.insertionMode = (InsertionMode) attributeHelper.consumeEnum(INSERTIONMODE, false, InsertionMode.class, null, INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE);
        this.numberOfRows = Integer.valueOf(attributeHelper.consumeInteger(NUMROWS, false));
        this.startIndex = Integer.valueOf(attributeHelper.consumeInteger(STARTROW, true));
    }

    public String toString() {
        return "{Data insertionMode=" + this.insertionMode + " numberOfRows=" + this.numberOfRows + " startIndex=" + this.startIndex + "}";
    }
}
