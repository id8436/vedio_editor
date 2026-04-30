package com.google.api.gbase.client;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class GmPublishingPriority implements Extension {
    private static final String ATTRIBUTE_NAME = "publishing_priority";
    private Value value;

    public enum Value {
        HIGH("high"),
        LOW("low");

        private final String value;

        Value(String str) {
            this.value = str;
        }

        public String getTextValue() {
            return this.value;
        }

        public static Value getByText(String str) {
            for (Value value : values()) {
                if (value.getTextValue().equals(str)) {
                    return value;
                }
            }
            return null;
        }
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(GmPublishingPriority.class);
        extensionDescription.setNamespace(GoogleBaseNamespaces.GM);
        extensionDescription.setLocalName(ATTRIBUTE_NAME);
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    public Value getValue() {
        return this.value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.simpleElement(GoogleBaseNamespaces.GM, ATTRIBUTE_NAME, null, this.value.getTextValue());
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new XmlParser.ElementHandler() { // from class: com.google.api.gbase.client.GmPublishingPriority.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() throws ParseException {
                if (this.value == null) {
                    throw new ParseException("No value specified for publishing_priority element.");
                }
                String lowerCase = this.value.trim().toLowerCase();
                Value byText = Value.getByText(lowerCase);
                if (byText != null) {
                    GmPublishingPriority.this.value = byText;
                    return;
                }
                throw new ParseException("Invalid value specified for publishing_priority element: '" + lowerCase + "'");
            }
        };
    }
}
