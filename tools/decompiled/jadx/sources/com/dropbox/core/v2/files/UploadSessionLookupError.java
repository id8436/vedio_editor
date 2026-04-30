package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.UploadSessionOffsetError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadSessionLookupError {
    private Tag _tag;
    private UploadSessionOffsetError incorrectOffsetValue;
    public static final UploadSessionLookupError NOT_FOUND = new UploadSessionLookupError().withTag(Tag.NOT_FOUND);
    public static final UploadSessionLookupError CLOSED = new UploadSessionLookupError().withTag(Tag.CLOSED);
    public static final UploadSessionLookupError NOT_CLOSED = new UploadSessionLookupError().withTag(Tag.NOT_CLOSED);
    public static final UploadSessionLookupError OTHER = new UploadSessionLookupError().withTag(Tag.OTHER);

    public enum Tag {
        NOT_FOUND,
        INCORRECT_OFFSET,
        CLOSED,
        NOT_CLOSED,
        OTHER
    }

    private UploadSessionLookupError() {
    }

    private UploadSessionLookupError withTag(Tag tag) {
        UploadSessionLookupError uploadSessionLookupError = new UploadSessionLookupError();
        uploadSessionLookupError._tag = tag;
        return uploadSessionLookupError;
    }

    private UploadSessionLookupError withTagAndIncorrectOffset(Tag tag, UploadSessionOffsetError uploadSessionOffsetError) {
        UploadSessionLookupError uploadSessionLookupError = new UploadSessionLookupError();
        uploadSessionLookupError._tag = tag;
        uploadSessionLookupError.incorrectOffsetValue = uploadSessionOffsetError;
        return uploadSessionLookupError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isNotFound() {
        return this._tag == Tag.NOT_FOUND;
    }

    public boolean isIncorrectOffset() {
        return this._tag == Tag.INCORRECT_OFFSET;
    }

    public static UploadSessionLookupError incorrectOffset(UploadSessionOffsetError uploadSessionOffsetError) {
        if (uploadSessionOffsetError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadSessionLookupError().withTagAndIncorrectOffset(Tag.INCORRECT_OFFSET, uploadSessionOffsetError);
    }

    public UploadSessionOffsetError getIncorrectOffsetValue() {
        if (this._tag != Tag.INCORRECT_OFFSET) {
            throw new IllegalStateException("Invalid tag: required Tag.INCORRECT_OFFSET, but was Tag." + this._tag.name());
        }
        return this.incorrectOffsetValue;
    }

    public boolean isClosed() {
        return this._tag == Tag.CLOSED;
    }

    public boolean isNotClosed() {
        return this._tag == Tag.NOT_CLOSED;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.incorrectOffsetValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof UploadSessionLookupError)) {
            UploadSessionLookupError uploadSessionLookupError = (UploadSessionLookupError) obj;
            if (this._tag != uploadSessionLookupError._tag) {
                return false;
            }
            switch (this._tag) {
                case NOT_FOUND:
                case CLOSED:
                case NOT_CLOSED:
                case OTHER:
                    return true;
                case INCORRECT_OFFSET:
                    return this.incorrectOffsetValue == uploadSessionLookupError.incorrectOffsetValue || this.incorrectOffsetValue.equals(uploadSessionLookupError.incorrectOffsetValue);
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<UploadSessionLookupError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadSessionLookupError uploadSessionLookupError, g gVar) throws IOException {
            switch (uploadSessionLookupError.tag()) {
                case NOT_FOUND:
                    gVar.b("not_found");
                    break;
                case INCORRECT_OFFSET:
                    gVar.e();
                    writeTag("incorrect_offset", gVar);
                    UploadSessionOffsetError.Serializer.INSTANCE.serialize(uploadSessionLookupError.incorrectOffsetValue, gVar, true);
                    gVar.f();
                    break;
                case CLOSED:
                    gVar.b("closed");
                    break;
                case NOT_CLOSED:
                    gVar.b("not_closed");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadSessionLookupError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadSessionLookupError uploadSessionLookupErrorIncorrectOffset;
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
            if ("not_found".equals(tag)) {
                uploadSessionLookupErrorIncorrectOffset = UploadSessionLookupError.NOT_FOUND;
            } else if ("incorrect_offset".equals(tag)) {
                uploadSessionLookupErrorIncorrectOffset = UploadSessionLookupError.incorrectOffset(UploadSessionOffsetError.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("closed".equals(tag)) {
                uploadSessionLookupErrorIncorrectOffset = UploadSessionLookupError.CLOSED;
            } else if ("not_closed".equals(tag)) {
                uploadSessionLookupErrorIncorrectOffset = UploadSessionLookupError.NOT_CLOSED;
            } else {
                uploadSessionLookupErrorIncorrectOffset = UploadSessionLookupError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadSessionLookupErrorIncorrectOffset;
        }
    }
}
