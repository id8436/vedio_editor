package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Cell implements Extension {
    private int col;
    private String inputValue;
    private Number numericValue;
    private int row;
    private String value;

    public Cell() {
        this.row = -1;
        this.col = -1;
        this.inputValue = null;
        this.numericValue = null;
        this.value = null;
    }

    private Cell(int i, int i2, String str, Number number, String str2) {
        this.row = -1;
        this.col = -1;
        this.inputValue = null;
        this.numericValue = null;
        this.value = null;
        this.row = i;
        this.col = i2;
        this.inputValue = str;
        this.value = str2;
        this.numericValue = number;
    }

    public Cell(int i, int i2, String str) {
        this(i, i2, str, null, null);
    }

    public static Cell createFullCell(int i, int i2, String str, Number number, String str2) {
        return new Cell(i, i2, str, number, str2);
    }

    public int getRow() {
        return this.row;
    }

    public int getCol() {
        return this.col;
    }

    public String getInputValue() {
        return this.inputValue;
    }

    public Number getNumericValue() {
        return this.numericValue;
    }

    public double getDoubleValue() {
        if (this.numericValue == null) {
            return Double.NaN;
        }
        return this.numericValue.doubleValue();
    }

    public String getValue() {
        return this.value;
    }

    public Cell withNewInputValue(String str) {
        return new Cell(this.row, this.col, str, null, null);
    }

    public static ExtensionDescription getDefaultDescription(boolean z) {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Cell.class);
        extensionDescription.setNamespace(Namespaces.gSpreadNs);
        extensionDescription.setLocalName("cell");
        extensionDescription.setRepeatable(z);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (this.row > 0) {
            arrayList.add(new XmlWriter.Attribute("row", String.valueOf(this.row)));
        }
        if (this.col > 0) {
            arrayList.add(new XmlWriter.Attribute("col", String.valueOf(this.col)));
        }
        if (this.inputValue != null) {
            arrayList.add(new XmlWriter.Attribute("inputValue", this.inputValue));
        }
        if (this.numericValue != null) {
            arrayList.add(new XmlWriter.Attribute("numericValue", this.numericValue.toString()));
        }
        xmlWriter.simpleElement(Namespaces.gSpreadNs, "cell", arrayList, this.value);
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new Handler();
    }

    class Handler extends XmlParser.ElementHandler {
        public Handler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
            if (str.equals("")) {
                if (str2.equals("row")) {
                    Cell.this.row = Integer.parseInt(str3);
                    return;
                }
                if (str2.equals("col")) {
                    Cell.this.col = Integer.parseInt(str3);
                } else if (str2.equals("inputValue")) {
                    Cell.this.inputValue = str3;
                } else if (str2.equals("numericValue")) {
                    try {
                        Cell.this.numericValue = Double.valueOf(str3);
                    } catch (NumberFormatException e2) {
                        throw new ParseException("Invalid numericValue.");
                    }
                }
            }
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            Cell.this.value = this.value;
            if (Cell.this.value != null && Cell.this.value.equals("")) {
                Cell.this.value = null;
            }
        }
    }
}
