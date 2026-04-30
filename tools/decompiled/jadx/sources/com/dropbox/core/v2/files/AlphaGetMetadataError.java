package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.LookUpPropertiesError;
import com.dropbox.core.v2.files.LookupError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AlphaGetMetadataError {
    private Tag _tag;
    private LookupError pathValue;
    private LookUpPropertiesError propertiesErrorValue;

    public enum Tag {
        PATH,
        PROPERTIES_ERROR
    }

    private AlphaGetMetadataError() {
    }

    private AlphaGetMetadataError withTag(Tag tag) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError._tag = tag;
        return alphaGetMetadataError;
    }

    private AlphaGetMetadataError withTagAndPath(Tag tag, LookupError lookupError) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError._tag = tag;
        alphaGetMetadataError.pathValue = lookupError;
        return alphaGetMetadataError;
    }

    private AlphaGetMetadataError withTagAndPropertiesError(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        AlphaGetMetadataError alphaGetMetadataError = new AlphaGetMetadataError();
        alphaGetMetadataError._tag = tag;
        alphaGetMetadataError.propertiesErrorValue = lookUpPropertiesError;
        return alphaGetMetadataError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static AlphaGetMetadataError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AlphaGetMetadataError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isPropertiesError() {
        return this._tag == Tag.PROPERTIES_ERROR;
    }

    public static AlphaGetMetadataError propertiesError(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AlphaGetMetadataError().withTagAndPropertiesError(Tag.PROPERTIES_ERROR, lookUpPropertiesError);
    }

    public LookUpPropertiesError getPropertiesErrorValue() {
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
        if (obj == null || !(obj instanceof AlphaGetMetadataError)) {
            return false;
        }
        AlphaGetMetadataError alphaGetMetadataError = (AlphaGetMetadataError) obj;
        if (this._tag != alphaGetMetadataError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == alphaGetMetadataError.pathValue || this.pathValue.equals(alphaGetMetadataError.pathValue);
            case PROPERTIES_ERROR:
                return this.propertiesErrorValue == alphaGetMetadataError.propertiesErrorValue || this.propertiesErrorValue.equals(alphaGetMetadataError.propertiesErrorValue);
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

    class Serializer extends UnionSerializer<AlphaGetMetadataError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AlphaGetMetadataError alphaGetMetadataError, g gVar) throws IOException {
            switch (alphaGetMetadataError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(alphaGetMetadataError.pathValue, gVar);
                    gVar.f();
                    return;
                case PROPERTIES_ERROR:
                    gVar.e();
                    writeTag("properties_error", gVar);
                    gVar.a("properties_error");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(alphaGetMetadataError.propertiesErrorValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + alphaGetMetadataError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AlphaGetMetadataError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AlphaGetMetadataError alphaGetMetadataErrorPropertiesError;
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
            if ("path".equals(tag)) {
                expectField("path", kVar);
                alphaGetMetadataErrorPropertiesError = AlphaGetMetadataError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("properties_error".equals(tag)) {
                expectField("properties_error", kVar);
                alphaGetMetadataErrorPropertiesError = AlphaGetMetadataError.propertiesError(LookUpPropertiesError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return alphaGetMetadataErrorPropertiesError;
        }
    }
}
