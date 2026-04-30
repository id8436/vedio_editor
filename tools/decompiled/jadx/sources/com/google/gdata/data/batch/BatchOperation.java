package com.google.gdata.data.batch;

import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.Collections;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class BatchOperation extends ExtensionPoint implements Extension {
    private BatchOperationType type;

    public BatchOperation(BatchOperationType batchOperationType) {
        this.type = batchOperationType;
    }

    public BatchOperation() {
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(BatchOperation.class);
        extensionDescription.setNamespace(Namespaces.batchNs);
        extensionDescription.setLocalName("operation");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    public BatchOperationType getType() {
        return this.type;
    }

    public void setType(BatchOperationType batchOperationType) {
        this.type = batchOperationType;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        generateStartElement(xmlWriter, Namespaces.batchNs, "operation", this.type != null ? Collections.singletonList(new XmlWriter.Attribute("type", this.type.getName())) : null, null);
        generateExtensions(xmlWriter, extensionProfile);
        xmlWriter.endElement(Namespaces.batchNs, "operation");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new BatchOperationHandler(extensionProfile, attributes);
    }

    class BatchOperationHandler extends ExtensionPoint.ExtensionHandler {
        public BatchOperationHandler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException {
            super(BatchOperation.this, extensionProfile, BatchOperation.class);
            String value = attributes.getValue("type");
            BatchOperationType batchOperationTypeForName = BatchOperationType.forName(value);
            if (batchOperationTypeForName != null) {
                BatchOperation.this.type = batchOperationTypeForName;
            } else {
                ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidBatchOperationType);
                parseException.setInternalReason("Invalid type for batch:operation: '" + value + "'");
                throw parseException;
            }
        }
    }
}
