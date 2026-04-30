package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.DeleteBatchResultData;
import com.dropbox.core.v2.files.DeleteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DeleteBatchResultEntry {
    private Tag _tag;
    private DeleteError failureValue;
    private DeleteBatchResultData successValue;

    public enum Tag {
        SUCCESS,
        FAILURE
    }

    private DeleteBatchResultEntry() {
    }

    private DeleteBatchResultEntry withTag(Tag tag) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry._tag = tag;
        return deleteBatchResultEntry;
    }

    private DeleteBatchResultEntry withTagAndSuccess(Tag tag, DeleteBatchResultData deleteBatchResultData) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry._tag = tag;
        deleteBatchResultEntry.successValue = deleteBatchResultData;
        return deleteBatchResultEntry;
    }

    private DeleteBatchResultEntry withTagAndFailure(Tag tag, DeleteError deleteError) {
        DeleteBatchResultEntry deleteBatchResultEntry = new DeleteBatchResultEntry();
        deleteBatchResultEntry._tag = tag;
        deleteBatchResultEntry.failureValue = deleteError;
        return deleteBatchResultEntry;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static DeleteBatchResultEntry success(DeleteBatchResultData deleteBatchResultData) {
        if (deleteBatchResultData == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteBatchResultEntry().withTagAndSuccess(Tag.SUCCESS, deleteBatchResultData);
    }

    public DeleteBatchResultData getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isFailure() {
        return this._tag == Tag.FAILURE;
    }

    public static DeleteBatchResultEntry failure(DeleteError deleteError) {
        if (deleteError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new DeleteBatchResultEntry().withTagAndFailure(Tag.FAILURE, deleteError);
    }

    public DeleteError getFailureValue() {
        if (this._tag != Tag.FAILURE) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this._tag.name());
        }
        return this.failureValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.failureValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchResultEntry)) {
            return false;
        }
        DeleteBatchResultEntry deleteBatchResultEntry = (DeleteBatchResultEntry) obj;
        if (this._tag != deleteBatchResultEntry._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == deleteBatchResultEntry.successValue || this.successValue.equals(deleteBatchResultEntry.successValue);
            case FAILURE:
                return this.failureValue == deleteBatchResultEntry.failureValue || this.failureValue.equals(deleteBatchResultEntry.failureValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<DeleteBatchResultEntry> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(DeleteBatchResultEntry deleteBatchResultEntry, g gVar) throws IOException {
            switch (deleteBatchResultEntry.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    DeleteBatchResultData.Serializer.INSTANCE.serialize(deleteBatchResultEntry.successValue, gVar, true);
                    gVar.f();
                    return;
                case FAILURE:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, gVar);
                    gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    DeleteError.Serializer.INSTANCE.serialize(deleteBatchResultEntry.failureValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + deleteBatchResultEntry.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public DeleteBatchResultEntry deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            DeleteBatchResultEntry deleteBatchResultEntryFailure;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(tag)) {
                deleteBatchResultEntryFailure = DeleteBatchResultEntry.success(DeleteBatchResultData.Serializer.INSTANCE.deserialize(kVar, true));
            } else if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL.equals(tag)) {
                expectField(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, kVar);
                deleteBatchResultEntryFailure = DeleteBatchResultEntry.failure(DeleteError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return deleteBatchResultEntryFailure;
        }
    }
}
