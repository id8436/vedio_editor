package com.google.gdata.data.extensions;

import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class Recurrence implements Extension {
    protected String value;

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(Recurrence.class);
        extensionDescription.setNamespace(Namespaces.gNs);
        extensionDescription.setLocalName("recurrence");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.simpleElement(Namespaces.gNs, "recurrence", null, this.value);
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new Handler();
    }

    class Handler extends XmlParser.ElementHandler {
        private Handler() {
        }

        @Override // com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            Recurrence.this.value = this.value.trim();
        }
    }
}
