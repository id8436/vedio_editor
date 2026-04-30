package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class RowCount implements Extension {
    public static final String TAG_NAME = "rowCount";
    private int count;

    public RowCount() {
        this.count = -1;
    }

    public RowCount(int i) {
        this.count = -1;
        this.count = i;
    }

    public int getCount() {
        return this.count;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(RowCount.class);
        extensionDescription.setNamespace(Namespaces.gSpreadNs);
        extensionDescription.setLocalName(TAG_NAME);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.simpleElement(Namespaces.gSpreadNs, TAG_NAME, null, String.valueOf(this.count));
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new XmlParser.ElementHandler() { // from class: com.google.gdata.data.spreadsheet.RowCount.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (this.value != null) {
                    try {
                        RowCount.this.count = Integer.parseInt(this.value);
                    } catch (NumberFormatException e2) {
                    }
                }
                if (RowCount.this.count <= 0) {
                    throw new ParseException("The count must be specified.");
                }
            }
        };
    }
}
