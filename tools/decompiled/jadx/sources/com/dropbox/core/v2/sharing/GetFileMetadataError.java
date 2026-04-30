package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import com.dropbox.core.v2.sharing.SharingUserError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetFileMetadataError {
    public static final GetFileMetadataError OTHER = new GetFileMetadataError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    private GetFileMetadataError() {
    }

    private GetFileMetadataError withTag(Tag tag) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError._tag = tag;
        return getFileMetadataError;
    }

    private GetFileMetadataError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError._tag = tag;
        getFileMetadataError.userErrorValue = sharingUserError;
        return getFileMetadataError;
    }

    private GetFileMetadataError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        GetFileMetadataError getFileMetadataError = new GetFileMetadataError();
        getFileMetadataError._tag = tag;
        getFileMetadataError.accessErrorValue = sharingFileAccessError;
        return getFileMetadataError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static GetFileMetadataError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetFileMetadataError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
    }

    public SharingUserError getUserErrorValue() {
        if (this._tag != Tag.USER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this._tag.name());
        }
        return this.userErrorValue;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static GetFileMetadataError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new GetFileMetadataError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
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
        return Arrays.hashCode(new Object[]{this._tag, this.userErrorValue, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetFileMetadataError)) {
            return false;
        }
        GetFileMetadataError getFileMetadataError = (GetFileMetadataError) obj;
        if (this._tag != getFileMetadataError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == getFileMetadataError.userErrorValue || this.userErrorValue.equals(getFileMetadataError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == getFileMetadataError.accessErrorValue || this.accessErrorValue.equals(getFileMetadataError.accessErrorValue);
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

    class Serializer extends UnionSerializer<GetFileMetadataError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GetFileMetadataError getFileMetadataError, g gVar) throws IOException {
            switch (getFileMetadataError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(getFileMetadataError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(getFileMetadataError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public GetFileMetadataError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            GetFileMetadataError getFileMetadataErrorAccessError;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("user_error".equals(tag)) {
                expectField("user_error", kVar);
                getFileMetadataErrorAccessError = GetFileMetadataError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                getFileMetadataErrorAccessError = GetFileMetadataError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                getFileMetadataErrorAccessError = GetFileMetadataError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return getFileMetadataErrorAccessError;
        }
    }
}
