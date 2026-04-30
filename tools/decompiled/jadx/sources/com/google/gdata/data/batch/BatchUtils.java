package com.google.gdata.data.batch;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.Namespaces;

/* JADX INFO: loaded from: classes3.dex */
public class BatchUtils {
    public static void declareExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declareAdditionalNamespace(Namespaces.batchNs);
        declareEntryExtensions(extensionProfile);
        declareFeedExtensions(extensionProfile);
    }

    public static void declareFeedExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(BaseFeed.class, BatchOperation.getDefaultDescription());
    }

    public static void declareEntryExtensions(ExtensionProfile extensionProfile) {
        extensionProfile.declare(BaseEntry.class, BatchId.getDefaultDescription());
        extensionProfile.declare(BaseEntry.class, BatchOperation.getDefaultDescription());
        extensionProfile.declare(BaseEntry.class, BatchInterrupted.getDefaultDescription());
        extensionProfile.declare(BaseEntry.class, BatchStatus.getDefaultDescription());
    }

    public static String getBatchId(BaseEntry<?> baseEntry) {
        return BatchId.getIdFrom(baseEntry);
    }

    public static void setBatchId(ExtensionPoint extensionPoint, String str) {
        if (str == null) {
            extensionPoint.removeExtension(BatchId.class);
        } else {
            extensionPoint.setExtension(new BatchId(str));
        }
    }

    public static BatchOperationType getBatchOperationType(ExtensionPoint extensionPoint) {
        BatchOperation batchOperation = (BatchOperation) extensionPoint.getExtension(BatchOperation.class);
        if (batchOperation == null) {
            return null;
        }
        return batchOperation.getType();
    }

    public static void setBatchOperationType(ExtensionPoint extensionPoint, BatchOperationType batchOperationType) {
        if (batchOperationType == null) {
            extensionPoint.removeExtension(BatchOperation.class);
        } else {
            extensionPoint.setExtension(new BatchOperation(batchOperationType));
        }
    }

    public static BatchInterrupted getBatchInterrupted(ExtensionPoint extensionPoint) {
        return (BatchInterrupted) extensionPoint.getExtension(BatchInterrupted.class);
    }

    public static BatchStatus getBatchStatus(ExtensionPoint extensionPoint) {
        return (BatchStatus) extensionPoint.getExtension(BatchStatus.class);
    }

    public static boolean isSuccess(ExtensionPoint extensionPoint) {
        int requiredBatchStatusCode = getRequiredBatchStatusCode(extensionPoint);
        return requiredBatchStatusCode >= 200 && requiredBatchStatusCode < 300;
    }

    public static boolean isFailure(ExtensionPoint extensionPoint) {
        return !isSuccess(extensionPoint);
    }

    private static int getRequiredBatchStatusCode(ExtensionPoint extensionPoint) {
        BatchStatus batchStatus = getBatchStatus(extensionPoint);
        if (batchStatus == null) {
            throw new IllegalArgumentException("Not a batch response entry; Missing BatchStatus extension.");
        }
        return batchStatus.getCode();
    }
}
