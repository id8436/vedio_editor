package com.google.gdata.model.batch;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import com.google.gdata.data.batch.IBatchStatus;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ServiceException;
import org.mortbay.jetty.HttpStatus;

/* JADX INFO: loaded from: classes3.dex */
public class BatchStatus extends Element implements IBatchStatus {
    public static final ElementKey<String, BatchStatus> KEY = ElementKey.of(new QName(Namespaces.batchNs, NotificationCompat.CATEGORY_STATUS), String.class, BatchStatus.class);
    public static final AttributeKey<Integer> CODE = AttributeKey.of(new QName(ProjectHostingService.PROJECTHOSTING_SERVICE), Integer.class);
    public static final AttributeKey<ContentType> CONTENT_TYPE = AttributeKey.of(new QName("content-type"), ContentType.class);
    public static final AttributeKey<String> REASON = AttributeKey.of(new QName("reason"));

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator contentRequired = metadataRegistry.build(KEY).setContentRequired(false);
            contentRequired.addAttribute(CODE).setRequired(true);
            contentRequired.addAttribute(CONTENT_TYPE);
            contentRequired.addAttribute(REASON).setRequired(true);
        }
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

    public BatchStatus() {
        super(KEY);
    }

    public BatchStatus(ServiceException serviceException) {
        this();
        int httpErrorCodeOverride = serviceException.getHttpErrorCodeOverride();
        setCode(Integer.valueOf(httpErrorCodeOverride == -1 ? 500 : httpErrorCodeOverride));
        setReason(serviceException.getMessage());
        setContentType(serviceException.getResponseContentType());
        setContent(serviceException.getResponseBody());
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public int getCode() {
        Integer num = (Integer) getAttributeValue(CODE);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public BatchStatus setCode(Integer num) {
        setAttributeValue(CODE, num);
        return this;
    }

    public boolean hasCode() {
        return getCode() != 0;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public String getContent() {
        return (String) getTextValue(KEY);
    }

    public BatchStatus setContent(String str) {
        setTextValue(str);
        return this;
    }

    public boolean hasContent() {
        return hasTextValue();
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public ContentType getContentType() {
        return (ContentType) getAttributeValue(CONTENT_TYPE);
    }

    public BatchStatus setContentType(ContentType contentType) {
        setAttributeValue(CONTENT_TYPE, contentType == null ? null : new ContentType(contentType.getMediaType()));
        return this;
    }

    public boolean hasContentType() {
        return getContentType() != null;
    }

    @Override // com.google.gdata.data.batch.IBatchStatus
    public String getReason() {
        return (String) getAttributeValue(REASON);
    }

    public BatchStatus setReason(String str) {
        setAttributeValue(REASON, str);
        return this;
    }

    public boolean hasReason() {
        return getReason() != null;
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        BatchStatus batchStatus = (BatchStatus) obj;
        return eq(Integer.valueOf(getCode()), Integer.valueOf(batchStatus.getCode())) && eq(getContent(), batchStatus.getContent()) && eq(getContentType(), batchStatus.getContentType()) && eq(getReason(), batchStatus.getReason());
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = (getClass().hashCode() * 37) + getCode();
        if (getContent() != null) {
            iHashCode = (iHashCode * 37) + getContent().hashCode();
        }
        if (getContentType() != null) {
            iHashCode = (iHashCode * 37) + getContentType().hashCode();
        }
        if (getReason() != null) {
            return (iHashCode * 37) + getReason().hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{BatchStatus code=" + getAttributeValue(CODE) + " content=" + getTextValue() + " contentType=" + getAttributeValue(CONTENT_TYPE) + " reason=" + ((String) getAttributeValue(REASON)) + "}";
    }
}
