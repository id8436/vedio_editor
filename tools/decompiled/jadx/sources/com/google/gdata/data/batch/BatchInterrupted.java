package com.google.gdata.data.batch;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ParseException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.XmlParser;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.util.ArrayList;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class BatchInterrupted extends ExtensionPoint implements Extension, IBatchInterrupted {
    private String content;
    private ContentType contentType;
    private int errorCount;
    private String reason;
    private int successCount;
    private int totalCount;

    public BatchInterrupted(String str, int i, int i2, int i3) {
        this.reason = str;
        this.totalCount = i;
        this.successCount = i2;
        this.errorCount = i3;
        if (i < i2 - i3) {
            throw new IllegalArgumentException("total < success + error. total = " + i + " success=" + i2 + " error=" + i3);
        }
    }

    public BatchInterrupted() {
    }

    public BatchInterrupted(Throwable th, int i, int i2, int i3) {
        this(getReasonFromException(th), i, i2, i3);
        if (th instanceof ServiceException) {
            ServiceException serviceException = (ServiceException) th;
            this.content = serviceException.getResponseBody();
            this.contentType = serviceException.getResponseContentType();
        }
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(BatchInterrupted.class);
        extensionDescription.setNamespace(Namespaces.batchNs);
        extensionDescription.setLocalName("interrupted");
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    private static String getReasonFromException(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "Unexpected error";
        }
        return message;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public String getReason() {
        return this.reason;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getTotalCount() {
        return this.totalCount;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getSuccessCount() {
        return this.successCount;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getErrorCount() {
        return this.errorCount;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getSkippedCount() {
        return this.totalCount - (this.successCount + this.errorCount);
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public ContentType getContentType() {
        return this.contentType;
    }

    public void setContentType(ContentType contentType) {
        this.contentType = contentType;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(6);
        if (this.reason != null) {
            arrayList.add(new XmlWriter.Attribute("reason", this.reason));
        }
        arrayList.add(new XmlWriter.Attribute("parsed", Integer.toString(this.totalCount)));
        arrayList.add(new XmlWriter.Attribute(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, Integer.toString(this.successCount)));
        arrayList.add(new XmlWriter.Attribute(Adobe360Constants.kAdobe360SatusError, Integer.toString(this.errorCount)));
        arrayList.add(new XmlWriter.Attribute("unprocessed", Integer.toString(this.totalCount - (this.successCount + this.errorCount))));
        if (this.contentType != null) {
            this.contentType.getAttributes().remove(ContentType.ATTR_CHARSET);
            arrayList.add(new XmlWriter.Attribute("content-type", this.contentType.toString()));
        }
        generateStartElement(xmlWriter, Namespaces.batchNs, "interrupted", arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        if (this.content != null) {
            xmlWriter.characters(this.content);
        }
        xmlWriter.endElement(Namespaces.batchNs, "interrupted");
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new BatchInterruptedElementHandler(extensionProfile, attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getIntegerAttribute(Attributes attributes, String str, int i) throws ParseException {
        String value = attributes.getValue(str);
        if (value == null) {
            return i;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e2) {
            ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidIntegerAttribute, e2);
            parseException.setInternalReason("Invalid integer in value of attribute " + str + ": '" + value + "'");
            throw parseException;
        }
    }

    class BatchInterruptedElementHandler extends ExtensionPoint.ExtensionHandler {
        public BatchInterruptedElementHandler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException {
            super(BatchInterrupted.this, extensionProfile, BatchInterrupted.class);
            BatchInterrupted.this.totalCount = BatchInterrupted.getIntegerAttribute(attributes, "parsed", 0);
            BatchInterrupted.this.successCount = BatchInterrupted.getIntegerAttribute(attributes, AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, 0);
            BatchInterrupted.this.errorCount = BatchInterrupted.getIntegerAttribute(attributes, Adobe360Constants.kAdobe360SatusError, 0);
            BatchInterrupted.this.reason = attributes.getValue("reason");
            String value = attributes.getValue("content-type");
            if (value != null) {
                try {
                    BatchInterrupted.this.contentType = new ContentType(value);
                } catch (IllegalArgumentException e2) {
                    ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidContentType, e2);
                    parseException.setInternalReason("Invalid content type: '" + value + "'");
                    throw parseException;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            BatchInterrupted.this.content = this.value;
        }
    }
}
