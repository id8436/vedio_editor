package com.google.gdata.model.batch;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.google.gdata.data.batch.IBatchInterrupted;
import com.google.gdata.model.AttributeKey;
import com.google.gdata.model.Element;
import com.google.gdata.model.ElementCreator;
import com.google.gdata.model.ElementKey;
import com.google.gdata.model.MetadataRegistry;
import com.google.gdata.model.QName;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.Namespaces;
import com.google.gdata.util.ServiceException;

/* JADX INFO: loaded from: classes3.dex */
public class BatchInterrupted extends Element implements IBatchInterrupted {
    public static final ElementKey<String, BatchInterrupted> KEY = ElementKey.of(new QName(Namespaces.batchNs, "interrupted"), String.class, BatchInterrupted.class);
    public static final AttributeKey<ContentType> CONTENT_TYPE = AttributeKey.of(new QName("content-type"), ContentType.class);
    public static final AttributeKey<Integer> ERROR_COUNT = AttributeKey.of(new QName(Adobe360Constants.kAdobe360SatusError), Integer.class);
    public static final AttributeKey<String> REASON = AttributeKey.of(new QName("reason"));
    public static final AttributeKey<Integer> SKIPPED_COUNT = AttributeKey.of(new QName("unprocessed"), Integer.class);
    public static final AttributeKey<Integer> SUCCESS_COUNT = AttributeKey.of(new QName(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS), Integer.class);
    public static final AttributeKey<Integer> TOTAL_COUNT = AttributeKey.of(new QName("parsed"), Integer.class);

    public static void registerMetadata(MetadataRegistry metadataRegistry) {
        if (!metadataRegistry.isRegistered(KEY)) {
            ElementCreator contentRequired = metadataRegistry.build(KEY).setContentRequired(false);
            contentRequired.addAttribute(CONTENT_TYPE);
            contentRequired.addAttribute(ERROR_COUNT).setRequired(true);
            contentRequired.addAttribute(TOTAL_COUNT).setRequired(true);
            contentRequired.addAttribute(REASON);
            contentRequired.addAttribute(SUCCESS_COUNT).setRequired(true);
            contentRequired.addAttribute(SKIPPED_COUNT).setRequired(true);
        }
    }

    public BatchInterrupted() {
        super(KEY);
    }

    public BatchInterrupted(String str, int i, int i2, int i3) {
        this();
        if (i < i2 - i3) {
            throw new IllegalArgumentException("total < success + error. total = " + i + " success=" + i2 + " error=" + i3);
        }
        setReason(str);
        setTotalCount(Integer.valueOf(i));
        setSuccessCount(Integer.valueOf(i2));
        setErrorCount(Integer.valueOf(i3));
        setSkippedCount(Integer.valueOf(i - (i2 + i3)));
    }

    public BatchInterrupted(Throwable th, int i, int i2, int i3) {
        this(getReasonFromException(th), i, i2, i3);
        if (th instanceof ServiceException) {
            ServiceException serviceException = (ServiceException) th;
            setContent(serviceException.getResponseBody());
            setContentType(serviceException.getResponseContentType());
        }
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public String getContent() {
        return (String) getTextValue(KEY);
    }

    public BatchInterrupted setContent(String str) {
        setTextValue(str);
        return this;
    }

    public boolean hasContent() {
        return hasTextValue();
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public ContentType getContentType() {
        return (ContentType) getAttributeValue(CONTENT_TYPE);
    }

    public BatchInterrupted setContentType(ContentType contentType) {
        setAttributeValue(CONTENT_TYPE, contentType == null ? null : new ContentType(contentType.getMediaType()));
        return this;
    }

    public boolean hasContentType() {
        return getContentType() != null;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getErrorCount() {
        Integer num = (Integer) getAttributeValue(ERROR_COUNT);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public BatchInterrupted setErrorCount(Integer num) {
        setAttributeValue(ERROR_COUNT, num);
        return this;
    }

    public boolean hasErrorCount() {
        return getErrorCount() != 0;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public String getReason() {
        return (String) getAttributeValue(REASON);
    }

    public BatchInterrupted setReason(String str) {
        setAttributeValue(REASON, str);
        return this;
    }

    public boolean hasReason() {
        return getReason() != null;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getSkippedCount() {
        Integer num = (Integer) getAttributeValue(SKIPPED_COUNT);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public BatchInterrupted setSkippedCount(Integer num) {
        setAttributeValue(SKIPPED_COUNT, num);
        return this;
    }

    public boolean hasSkippedCount() {
        return getSkippedCount() != 0;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getSuccessCount() {
        Integer num = (Integer) getAttributeValue(SUCCESS_COUNT);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public BatchInterrupted setSuccessCount(Integer num) {
        setAttributeValue(SUCCESS_COUNT, num);
        return this;
    }

    public boolean hasSuccessCount() {
        return getSuccessCount() != 0;
    }

    @Override // com.google.gdata.data.batch.IBatchInterrupted
    public int getTotalCount() {
        Integer num = (Integer) getAttributeValue(TOTAL_COUNT);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public BatchInterrupted setTotalCount(Integer num) {
        setAttributeValue(TOTAL_COUNT, num);
        return this;
    }

    public boolean hasTotalCount() {
        return getTotalCount() != 0;
    }

    @Override // com.google.gdata.model.Element
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!sameClassAs(obj)) {
            return false;
        }
        BatchInterrupted batchInterrupted = (BatchInterrupted) obj;
        return eq(getContent(), batchInterrupted.getContent()) && eq(getContentType(), batchInterrupted.getContentType()) && eq(Integer.valueOf(getErrorCount()), Integer.valueOf(batchInterrupted.getErrorCount())) && eq(getReason(), batchInterrupted.getReason()) && eq(Integer.valueOf(getSkippedCount()), Integer.valueOf(batchInterrupted.getSkippedCount())) && eq(Integer.valueOf(getSuccessCount()), Integer.valueOf(batchInterrupted.getSuccessCount())) && eq(Integer.valueOf(getTotalCount()), Integer.valueOf(batchInterrupted.getTotalCount()));
    }

    @Override // com.google.gdata.model.Element
    public int hashCode() {
        int iHashCode = getClass().hashCode();
        if (getContent() != null) {
            iHashCode = (iHashCode * 37) + getContent().hashCode();
        }
        if (getContentType() != null) {
            iHashCode = (iHashCode * 37) + getContentType().hashCode();
        }
        int errorCount = (iHashCode * 37) + getErrorCount();
        if (getReason() != null) {
            errorCount = (errorCount * 37) + getReason().hashCode();
        }
        return (((((errorCount * 37) + getSkippedCount()) * 37) + getSuccessCount()) * 37) + getTotalCount();
    }

    @Override // com.google.gdata.model.Element
    public String toString() {
        return "{BatchInterrupted content=" + getTextValue() + " contentType=" + getAttributeValue(CONTENT_TYPE) + " errorCount=" + getAttributeValue(ERROR_COUNT) + " reason=" + ((String) getAttributeValue(REASON)) + " skippedCount=" + getAttributeValue(SKIPPED_COUNT) + " successCount=" + getAttributeValue(SUCCESS_COUNT) + " totalCount=" + getAttributeValue(TOTAL_COUNT) + "}";
    }

    private static String getReasonFromException(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "Unexpected error";
        }
        return message;
    }
}
