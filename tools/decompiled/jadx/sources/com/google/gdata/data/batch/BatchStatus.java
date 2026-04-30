package com.google.gdata.data.batch;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.client.CoreErrorDomain;
import com.google.gdata.client.projecthosting.ProjectHostingService;
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
import org.mortbay.jetty.HttpStatus;
import org.xml.sax.Attributes;

/* JADX INFO: loaded from: classes3.dex */
public class BatchStatus extends ExtensionPoint implements Extension, IBatchStatus {
    private int code;
    private String content;
    private ContentType contentType;
    private String reason;

    public BatchStatus() {
    }

    public BatchStatus(ServiceException serviceException) {
        this.code = serviceException.getHttpErrorCodeOverride();
        if (this.code == -1) {
            this.code = 500;
        }
        this.reason = serviceException.getMessage();
        this.contentType = serviceException.getResponseContentType();
        this.content = serviceException.getResponseBody();
    }

    public static BatchStatus createSuccessStatus() {
        BatchStatus batchStatus = new BatchStatus();
        batchStatus.setCode(200);
        batchStatus.setReason("Success");
        return batchStatus;
    }

    public static BatchStatus createCreatedStatus() {
        BatchStatus batchStatus = new BatchStatus();
        batchStatus.setCode(201);
        batchStatus.setReason(HttpStatus.Created);
        return batchStatus;
    }

    public static ExtensionDescription getDefaultDescription() {
        ExtensionDescription extensionDescription = new ExtensionDescription();
        extensionDescription.setExtensionClass(BatchStatus.class);
        extensionDescription.setNamespace(Namespaces.batchNs);
        extensionDescription.setLocalName(NotificationCompat.CATEGORY_STATUS);
        extensionDescription.setRepeatable(false);
        return extensionDescription;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public String getReason() {
        return this.reason;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public ContentType getContentType() {
        return this.contentType;
    }

    public void setContentType(ContentType contentType) {
        this.contentType = contentType;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    @Override // com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public void generate(XmlWriter xmlWriter, ExtensionProfile extensionProfile) throws IOException {
        ArrayList arrayList = new ArrayList(4);
        if (this.code > 0) {
            arrayList.add(new XmlWriter.Attribute(ProjectHostingService.PROJECTHOSTING_SERVICE, Integer.toString(this.code)));
        }
        if (this.reason != null) {
            arrayList.add(new XmlWriter.Attribute("reason", this.reason));
        }
        if (this.contentType != null) {
            this.contentType.getAttributes().remove(ContentType.ATTR_CHARSET);
            arrayList.add(new XmlWriter.Attribute("content-type", this.contentType.toString()));
        }
        generateStartElement(xmlWriter, Namespaces.batchNs, NotificationCompat.CATEGORY_STATUS, arrayList, null);
        generateExtensions(xmlWriter, extensionProfile);
        if (this.content != null) {
            xmlWriter.characters(this.content);
        }
        xmlWriter.endElement(Namespaces.batchNs, NotificationCompat.CATEGORY_STATUS);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.AbstractExtension, com.google.gdata.data.Extension
    public XmlParser.ElementHandler getHandler(ExtensionProfile extensionProfile, String str, String str2, Attributes attributes) throws ParseException {
        return new BatchStatusElementHandler(extensionProfile, attributes);
    }

    class BatchStatusElementHandler extends ExtensionPoint.ExtensionHandler {
        private BatchStatusElementHandler(ExtensionProfile extensionProfile, Attributes attributes) throws ParseException {
            super(BatchStatus.this, extensionProfile, BatchStatus.class);
            String value = attributes.getValue(ProjectHostingService.PROJECTHOSTING_SERVICE);
            if (value != null) {
                try {
                    BatchStatus.this.setCode(Integer.parseInt(value));
                } catch (NumberFormatException e2) {
                    ParseException parseException = new ParseException(CoreErrorDomain.ERR.invalidIntegerAttribute, e2);
                    parseException.setInternalReason("Invalid integer value for code attribute : '" + value + "'");
                    throw parseException;
                }
            }
            String value2 = attributes.getValue("reason");
            if (value2 != null) {
                BatchStatus.this.setReason(value2);
            }
            String value3 = attributes.getValue("content-type");
            if (value3 != null) {
                try {
                    BatchStatus.this.setContentType(new ContentType(value3));
                } catch (IllegalArgumentException e3) {
                    ParseException parseException2 = new ParseException(CoreErrorDomain.ERR.invalidContentType, e3);
                    parseException2.setInternalReason("Invalid content type: " + value3);
                    throw parseException2;
                }
            }
        }

        @Override // com.google.gdata.data.ExtensionPoint.ExtensionHandler, com.google.gdata.data.AbstractExtension.AttributesHandler, com.google.gdata.util.XmlParser.ElementHandler
        public void processEndElement() {
            if (this.value != null) {
                BatchStatus.this.setContent(this.value);
            }
        }
    }
}
