package com.google.gdata.data.spreadsheet;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class CustomElementCollection implements Extension {
    private Map<String, CustomElement> values = new LinkedHashMap();

    class CustomElement {
        private String value;

        public CustomElement(String str) {
            this.value = str;
        }

        public CustomElement(String str, String str2) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public String getValue(String str) {
        CustomElement customElement = this.values.get(str.toLowerCase());
        if (customElement == null) {
            return null;
        }
        return customElement.getValue();
    }

    public void setValueLocal(String str, String str2) {
        if (str2.startsWith(Engagement.Comparison.EQ)) {
            throw new IllegalArgumentException("Formulas are not supported.");
        }
        this.values.put(str.toLowerCase(), new CustomElement(str2));
    }

    public void clearValueLocal(String str) {
        this.values.remove(str.toLowerCase());
    }

    public void replaceWithLocal(CustomElementCollection customElementCollection) {
        this.values.clear();
        this.values.putAll(customElementCollection.values);
    }

    public Set<String> getTags() {
        return this.values.keySet();
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(CustomElementCollection.class);
        extensionDescription.setNamespace(Namespaces.gSpreadCustomNs);
        extensionDescription.setLocalName("*");
        extensionDescription.setAggregate(true);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        for (Map.Entry<String, CustomElement> entry : this.values.entrySet()) {
            xmlWriter.simpleElement(Namespaces.gSpreadCustomNs, entry.getKey(), new ArrayList(), entry.getValue().getValue());
        }
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException, IOException {
        return new CustomElementHandler(str2);
    }

    class CustomElementHandler extends XmlParser.ElementHandler {
        private String tagName;

        public CustomElementHandler(String str) {
            this.tagName = str;
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processAttribute(String str, String str2, String str3) throws ParseException {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() throws ParseException {
            if (this.value == null) {
                CustomElementCollection.this.values.put(this.tagName, CustomElementCollection.this.new CustomElement(null));
            } else {
                CustomElementCollection.this.values.put(this.tagName, CustomElementCollection.this.new CustomElement(this.value));
            }
        }
    }
}
