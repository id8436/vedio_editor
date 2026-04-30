package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.UploadWriteFailed;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadError {
    public static final UploadError OTHER = new UploadError().withTag(Tag.OTHER);
    private Tag _tag;
    private UploadWriteFailed pathValue;

    public enum Tag {
        PATH,
        OTHER
    }

    private UploadError() {
    }

    private UploadError withTag(Tag tag) {
        UploadError uploadError = new UploadError();
        uploadError._tag = tag;
        return uploadError;
    }

    private UploadError withTagAndPath(Tag tag, UploadWriteFailed uploadWriteFailed) {
        UploadError uploadError = new UploadError();
        uploadError._tag = tag;
        uploadError.pathValue = uploadWriteFailed;
        return uploadError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static UploadError path(UploadWriteFailed uploadWriteFailed) {
        if (uploadWriteFailed == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadError().withTagAndPath(Tag.PATH, uploadWriteFailed);
    }

    public UploadWriteFailed getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadError)) {
            return false;
        }
        UploadError uploadError = (UploadError) obj;
        if (this._tag != uploadError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == uploadError.pathValue || this.pathValue.equals(uploadError.pathValue);
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

    class Serializer extends UnionSerializer<UploadError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadError uploadError, g gVar) throws IOException {
            switch (uploadError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    UploadWriteFailed.Serializer.INSTANCE.serialize(uploadError.pathValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadError uploadErrorPath;
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
            if ("path".equals(tag)) {
                uploadErrorPath = UploadError.path(UploadWriteFailed.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                uploadErrorPath = UploadError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadErrorPath;
        }
    }
}
