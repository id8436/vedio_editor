package com.google.gdata.data.batch;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class BatchId implements Extension {
    private String id;

    public BatchId(String str) {
        this.id = str;
    }

    public BatchId() {
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(BatchId.class);
        extensionDescription.setNamespace(Namespaces.batchNs);
        extensionDescription.setLocalName("id");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    public static String getIdFrom(BaseEntry<?> baseEntry) {
        BatchId batchId = (BatchId) baseEntry.getExtension(BatchId.class);
        if (batchId == null) {
            return null;
        }
        return batchId.getId();
    }

    @Override // com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        xmlWriter.simpleElement(Namespaces.batchNs, "id", null, this.id);
    }

    @Override // com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) {
        return new XmlParser.ElementHandler() { // from class: com.google.gdata.data.batch.BatchId.1
            @Override // com.google.gdata.util.XmlParser.ElementHandler
            public void processEndElement() {
                BatchId.this.id = this.value;
            }
        };
    }
}
