package com.dropbox.core.v2.files;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.GetThumbnailBatchResultData;
import com.dropbox.core.v2.files.ThumbnailError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetThumbnailBatchResultEntry {
    public static final GetThumbnailBatchResultEntry OTHER = new GetThumbnailBatchResultEntry().withTag(Tag.OTHER);
    private Tag _tag;
    private ThumbnailError failureValue;
    private GetThumbnailBatchResultData successValue;

    public enum Tag {
        SUCCESS,
        FAILURE,
        OTHER
    }

    private GetThumbnailBatchResultEntry() {
    }

    private GetThumbnailBatchResultEntry withTag(Tag tag) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry._tag = tag;
        return getThumbnailBatchResultEntry;
    }

    private GetThumbnailBatchResultEntry withTagAndSuccess(Tag tag, GetThumbnailBatchResultData getThumbnailBatchResultData) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry._tag = tag;
        getThumbnailBatchResultEntry.successValue = getThumbnailBatchResultData;
        return getThumbnailBatchResultEntry;
    }

    private GetThumbnailBatchResultEntry withTagAndFailure(Tag tag, ThumbnailError thumbnailError) {
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = new GetThumbnailBatchResultEntry();
        getThumbnailBatchResultEntry._tag = tag;
        getThumbnailBatchResultEntry.failureValue = thumbnailError;
        return getThumbnailBatchResultEntry;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isSuccess() {
        return this._tag == Tag.SUCCESS;
    }

    public static GetThumbnailBatchResultEntry success(GetThumbnailBatchResultData getThumbnailBatchResultData) {
        if (getThumbnailBatchResultData == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetThumbnailBatchResultEntry().withTagAndSuccess(Tag.SUCCESS, getThumbnailBatchResultData);
    }

    public GetThumbnailBatchResultData getSuccessValue() {
        if (this._tag != Tag.SUCCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this._tag.name());
        }
        return this.successValue;
    }

    public boolean isFailure() {
        return this._tag == Tag.FAILURE;
    }

    public static GetThumbnailBatchResultEntry failure(ThumbnailError thumbnailError) {
        if (thumbnailError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetThumbnailBatchResultEntry().withTagAndFailure(Tag.FAILURE, thumbnailError);
    }

    public ThumbnailError getFailureValue() {
        if (this._tag != Tag.FAILURE) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this._tag.name());
        }
        return this.failureValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.successValue, this.failureValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetThumbnailBatchResultEntry)) {
            return false;
        }
        GetThumbnailBatchResultEntry getThumbnailBatchResultEntry = (GetThumbnailBatchResultEntry) obj;
        if (this._tag != getThumbnailBatchResultEntry._tag) {
            return false;
        }
        switch (this._tag) {
            case SUCCESS:
                return this.successValue == getThumbnailBatchResultEntry.successValue || this.successValue.equals(getThumbnailBatchResultEntry.successValue);
            case FAILURE:
                return this.failureValue == getThumbnailBatchResultEntry.failureValue || this.failureValue.equals(getThumbnailBatchResultEntry.failureValue);
            case OTHER:
                return true;
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

    class Serializer extends UnionSerializer<GetThumbnailBatchResultEntry> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetThumbnailBatchResultEntry getThumbnailBatchResultEntry, g gVar) throws IOException {
            switch (getThumbnailBatchResultEntry.tag()) {
                case SUCCESS:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS, gVar);
                    GetThumbnailBatchResultData.Serializer.INSTANCE.serialize(getThumbnailBatchResultEntry.successValue, gVar, true);
                    gVar.f();
                    break;
                case FAILURE:
                    gVar.e();
                    writeTag(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, gVar);
                    gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    ThumbnailError.Serializer.INSTANCE.serialize(getThumbnailBatchResultEntry.failureValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetThumbnailBatchResultEntry deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetThumbnailBatchResultEntry getThumbnailBatchResultEntryFailure;
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
                getThumbnailBatchResultEntryFailure = GetThumbnailBatchResultEntry.success(GetThumbnailBatchResultData.Serializer.INSTANCE.deserialize(kVar, true));
            } else if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL.equals(tag)) {
                expectField(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL, kVar);
                getThumbnailBatchResultEntryFailure = GetThumbnailBatchResultEntry.failure(ThumbnailError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                getThumbnailBatchResultEntryFailure = GetThumbnailBatchResultEntry.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getThumbnailBatchResultEntryFailure;
        }
    }
}
