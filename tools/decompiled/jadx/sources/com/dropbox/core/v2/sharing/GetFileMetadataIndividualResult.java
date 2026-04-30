package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFileMetadata;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetFileMetadataIndividualResult {
    public static final GetFileMetadataIndividualResult OTHER = new GetFileMetadataIndividualResult().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharedFileMetadata metadataValue;

    public enum Tag {
        METADATA,
        ACCESS_ERROR,
        OTHER
    }

    private GetFileMetadataIndividualResult() {
    }

    private GetFileMetadataIndividualResult withTag(Tag tag) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult._tag = tag;
        return getFileMetadataIndividualResult;
    }

    private GetFileMetadataIndividualResult withTagAndMetadata(Tag tag, SharedFileMetadata sharedFileMetadata) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult._tag = tag;
        getFileMetadataIndividualResult.metadataValue = sharedFileMetadata;
        return getFileMetadataIndividualResult;
    }

    private GetFileMetadataIndividualResult withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = new GetFileMetadataIndividualResult();
        getFileMetadataIndividualResult._tag = tag;
        getFileMetadataIndividualResult.accessErrorValue = sharingFileAccessError;
        return getFileMetadataIndividualResult;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isMetadata() {
        return this._tag == Tag.METADATA;
    }

    public static GetFileMetadataIndividualResult metadata(SharedFileMetadata sharedFileMetadata) {
        if (sharedFileMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetFileMetadataIndividualResult().withTagAndMetadata(Tag.METADATA, sharedFileMetadata);
    }

    public SharedFileMetadata getMetadataValue() {
        if (this._tag != Tag.METADATA) {
            throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this._tag.name());
        }
        return this.metadataValue;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static GetFileMetadataIndividualResult accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetFileMetadataIndividualResult().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.metadataValue, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFileMetadataIndividualResult)) {
            return false;
        }
        GetFileMetadataIndividualResult getFileMetadataIndividualResult = (GetFileMetadataIndividualResult) obj;
        if (this._tag != getFileMetadataIndividualResult._tag) {
            return false;
        }
        switch (this._tag) {
            case METADATA:
                return this.metadataValue == getFileMetadataIndividualResult.metadataValue || this.metadataValue.equals(getFileMetadataIndividualResult.metadataValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == getFileMetadataIndividualResult.accessErrorValue || this.accessErrorValue.equals(getFileMetadataIndividualResult.accessErrorValue);
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

    class Serializer extends UnionSerializer<GetFileMetadataIndividualResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetFileMetadataIndividualResult getFileMetadataIndividualResult, g gVar) throws IOException {
            switch (getFileMetadataIndividualResult.tag()) {
                case METADATA:
                    gVar.e();
                    writeTag("metadata", gVar);
                    SharedFileMetadata.Serializer.INSTANCE.serialize(getFileMetadataIndividualResult.metadataValue, gVar, true);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(getFileMetadataIndividualResult.accessErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetFileMetadataIndividualResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetFileMetadataIndividualResult getFileMetadataIndividualResultAccessError;
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
            if ("metadata".equals(tag)) {
                getFileMetadataIndividualResultAccessError = GetFileMetadataIndividualResult.metadata(SharedFileMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                getFileMetadataIndividualResultAccessError = GetFileMetadataIndividualResult.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                getFileMetadataIndividualResultAccessError = GetFileMetadataIndividualResult.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getFileMetadataIndividualResultAccessError;
        }
    }
}
