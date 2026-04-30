package com.google.gdata.model.batch;

import com.google.gdata.client.batch.BatchInterruptedException;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.batch.BatchOperationType;
import com.google.gdata.data.batch.IBatchInterrupted;
import com.google.gdata.data.batch.IBatchStatus;
import com.google.gdata.model.Element;
import com.google.gdata.model.atom.Entry;

/* JADX INFO: loaded from: classes3.dex */
public class BatchUtils {
    public static String getBatchId(IEntry iEntry) {
        return iEntry instanceof Entry ? BatchId.getIdFrom((Entry) iEntry) : com.google.gdata.data.batch.BatchUtils.getBatchId((BaseEntry) iEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setBatchId(IEntry iEntry, String str) {
        if (iEntry instanceof Element) {
            ((Element) iEntry).setElement(BatchId.KEY, str == null ? null : new BatchId(str));
        } else {
            com.google.gdata.data.batch.BatchUtils.setBatchId((ExtensionPoint) iEntry, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BatchOperationType getBatchOperationType(IEntry iEntry) {
        return iEntry instanceof Element ? getBatchOperationType((Element) iEntry) : com.google.gdata.data.batch.BatchUtils.getBatchOperationType((ExtensionPoint) iEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BatchOperationType getBatchOperationType(IFeed iFeed) {
        return iFeed instanceof Element ? getBatchOperationType((Element) iFeed) : com.google.gdata.data.batch.BatchUtils.getBatchOperationType((ExtensionPoint) iFeed);
    }

    private static BatchOperationType getBatchOperationType(Element element) {
        BatchOperation batchOperation = (BatchOperation) element.getElement(BatchOperation.KEY);
        if (batchOperation == null) {
            return null;
        }
        return batchOperation.getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setBatchOperationType(IEntry iEntry, BatchOperationType batchOperationType) {
        if (iEntry instanceof Element) {
            setBatchOperationType((Element) iEntry, batchOperationType);
        } else {
            com.google.gdata.data.batch.BatchUtils.setBatchOperationType((ExtensionPoint) iEntry, batchOperationType);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void setBatchOperationType(IFeed iFeed, BatchOperationType batchOperationType) {
        if (iFeed instanceof Element) {
            setBatchOperationType((Element) iFeed, batchOperationType);
        } else {
            com.google.gdata.data.batch.BatchUtils.setBatchOperationType((ExtensionPoint) iFeed, batchOperationType);
        }
    }

    private static void setBatchOperationType(Element element, BatchOperationType batchOperationType) {
        element.setElement(BatchOperation.KEY, batchOperationType == null ? null : new BatchOperation(batchOperationType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IBatchInterrupted getInterrupted(IEntry iEntry) {
        return iEntry instanceof Element ? (IBatchInterrupted) ((Element) iEntry).getElement(BatchInterrupted.KEY) : com.google.gdata.data.batch.BatchUtils.getBatchInterrupted((ExtensionPoint) iEntry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IBatchStatus getStatus(IEntry iEntry) {
        return iEntry instanceof Element ? (IBatchStatus) ((Element) iEntry).getElement(BatchStatus.KEY) : com.google.gdata.data.batch.BatchUtils.getBatchStatus((ExtensionPoint) iEntry);
    }

    public static boolean isSuccess(IEntry iEntry) {
        int requiredBatchStatusCode = getRequiredBatchStatusCode(iEntry);
        return requiredBatchStatusCode >= 200 && requiredBatchStatusCode < 300;
    }

    public static boolean isFailure(IEntry iEntry) {
        return !isSuccess(iEntry);
    }

    private static int getRequiredBatchStatusCode(IEntry iEntry) {
        IBatchStatus status = getStatus(iEntry);
        if (status == null) {
            throw new IllegalArgumentException("Not a batch response entry; Missing BatchStatus extension.");
        }
        return status.getCode();
    }

    public static void throwIfInterrupted(IFeed iFeed) throws BatchInterruptedException {
        IBatchInterrupted batchInterrupted;
        int size = iFeed.getEntries().size();
        if (size > 0) {
            IEntry iEntry = iFeed.getEntries().get(size - 1);
            if (iEntry instanceof Entry) {
                batchInterrupted = (IBatchInterrupted) ((Entry) iEntry).getElement(BatchInterrupted.KEY);
            } else if (iEntry instanceof BaseEntry) {
                batchInterrupted = com.google.gdata.data.batch.BatchUtils.getBatchInterrupted((BaseEntry) iEntry);
            } else {
                throw new IllegalStateException("Unrecognized entry type:" + iEntry.getClass());
            }
            if (batchInterrupted != null) {
                throw new BatchInterruptedException(iFeed, batchInterrupted);
            }
        }
    }

    private BatchUtils() {
    }
}
