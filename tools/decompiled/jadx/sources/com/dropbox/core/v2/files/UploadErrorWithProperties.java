package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.v2.files.UploadWriteFailed;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UploadErrorWithProperties {
    public static final UploadErrorWithProperties OTHER = new UploadErrorWithProperties().withTag(Tag.OTHER);
    private Tag _tag;
    private UploadWriteFailed pathValue;
    private InvalidPropertyGroupError propertiesErrorValue;

    public enum Tag {
        PATH,
        OTHER,
        PROPERTIES_ERROR
    }

    private UploadErrorWithProperties() {
    }

    private UploadErrorWithProperties withTag(Tag tag) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties._tag = tag;
        return uploadErrorWithProperties;
    }

    private UploadErrorWithProperties withTagAndPath(Tag tag, UploadWriteFailed uploadWriteFailed) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties._tag = tag;
        uploadErrorWithProperties.pathValue = uploadWriteFailed;
        return uploadErrorWithProperties;
    }

    private UploadErrorWithProperties withTagAndPropertiesError(Tag tag, InvalidPropertyGroupError invalidPropertyGroupError) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties._tag = tag;
        uploadErrorWithProperties.propertiesErrorValue = invalidPropertyGroupError;
        return uploadErrorWithProperties;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static UploadErrorWithProperties path(UploadWriteFailed uploadWriteFailed) {
        if (uploadWriteFailed == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadErrorWithProperties().withTagAndPath(Tag.PATH, uploadWriteFailed);
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

    public boolean isPropertiesError() {
        return this._tag == Tag.PROPERTIES_ERROR;
    }

    public static UploadErrorWithProperties propertiesError(InvalidPropertyGroupError invalidPropertyGroupError) {
        if (invalidPropertyGroupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UploadErrorWithProperties().withTagAndPropertiesError(Tag.PROPERTIES_ERROR, invalidPropertyGroupError);
    }

    public InvalidPropertyGroupError getPropertiesErrorValue() {
        if (this._tag != Tag.PROPERTIES_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag." + this._tag.name());
        }
        return this.propertiesErrorValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue, this.propertiesErrorValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadErrorWithProperties)) {
            return false;
        }
        UploadErrorWithProperties uploadErrorWithProperties = (UploadErrorWithProperties) obj;
        if (this._tag != uploadErrorWithProperties._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == uploadErrorWithProperties.pathValue || this.pathValue.equals(uploadErrorWithProperties.pathValue);
            case OTHER:
                return true;
            case PROPERTIES_ERROR:
                return this.propertiesErrorValue == uploadErrorWithProperties.propertiesErrorValue || this.propertiesErrorValue.equals(uploadErrorWithProperties.propertiesErrorValue);
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

    class Serializer extends UnionSerializer<UploadErrorWithProperties> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UploadErrorWithProperties uploadErrorWithProperties, g gVar) throws IOException {
            switch (uploadErrorWithProperties.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    UploadWriteFailed.Serializer.INSTANCE.serialize(uploadErrorWithProperties.pathValue, gVar, true);
                    gVar.f();
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case PROPERTIES_ERROR:
                    gVar.e();
                    writeTag("properties_error", gVar);
                    gVar.a("properties_error");
                    InvalidPropertyGroupError.Serializer.INSTANCE.serialize(uploadErrorWithProperties.propertiesErrorValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + uploadErrorWithProperties.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UploadErrorWithProperties deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UploadErrorWithProperties uploadErrorWithPropertiesPropertiesError;
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
                uploadErrorWithPropertiesPropertiesError = UploadErrorWithProperties.path(UploadWriteFailed.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("other".equals(tag)) {
                uploadErrorWithPropertiesPropertiesError = UploadErrorWithProperties.OTHER;
            } else if ("properties_error".equals(tag)) {
                expectField("properties_error", kVar);
                uploadErrorWithPropertiesPropertiesError = UploadErrorWithProperties.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return uploadErrorWithPropertiesPropertiesError;
        }
    }
}
