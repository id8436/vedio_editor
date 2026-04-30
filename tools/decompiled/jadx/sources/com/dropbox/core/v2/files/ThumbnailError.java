package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ThumbnailError {
    private Tag _tag;
    private LookupError pathValue;
    public static final ThumbnailError UNSUPPORTED_EXTENSION = new ThumbnailError().withTag(Tag.UNSUPPORTED_EXTENSION);
    public static final ThumbnailError UNSUPPORTED_IMAGE = new ThumbnailError().withTag(Tag.UNSUPPORTED_IMAGE);
    public static final ThumbnailError CONVERSION_ERROR = new ThumbnailError().withTag(Tag.CONVERSION_ERROR);

    public enum Tag {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR
    }

    private ThumbnailError() {
    }

    private ThumbnailError withTag(Tag tag) {
        ThumbnailError thumbnailError = new ThumbnailError();
        thumbnailError._tag = tag;
        return thumbnailError;
    }

    private ThumbnailError withTagAndPath(Tag tag, LookupError lookupError) {
        ThumbnailError thumbnailError = new ThumbnailError();
        thumbnailError._tag = tag;
        thumbnailError.pathValue = lookupError;
        return thumbnailError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static ThumbnailError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ThumbnailError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isUnsupportedExtension() {
        return this._tag == Tag.UNSUPPORTED_EXTENSION;
    }

    public boolean isUnsupportedImage() {
        return this._tag == Tag.UNSUPPORTED_IMAGE;
    }

    public boolean isConversionError() {
        return this._tag == Tag.CONVERSION_ERROR;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ThumbnailError)) {
            return false;
        }
        ThumbnailError thumbnailError = (ThumbnailError) obj;
        if (this._tag != thumbnailError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == thumbnailError.pathValue || this.pathValue.equals(thumbnailError.pathValue);
            case UNSUPPORTED_EXTENSION:
                return true;
            case UNSUPPORTED_IMAGE:
                return true;
            case CONVERSION_ERROR:
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

    class Serializer extends UnionSerializer<ThumbnailError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ThumbnailError thumbnailError, g gVar) throws IOException {
            switch (thumbnailError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(thumbnailError.pathValue, gVar);
                    gVar.f();
                    return;
                case UNSUPPORTED_EXTENSION:
                    gVar.b("unsupported_extension");
                    return;
                case UNSUPPORTED_IMAGE:
                    gVar.b("unsupported_image");
                    return;
                case CONVERSION_ERROR:
                    gVar.b("conversion_error");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + thumbnailError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ThumbnailError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ThumbnailError thumbnailErrorPath;
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
                thumbnailErrorPath = ThumbnailError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("unsupported_extension".equals(tag)) {
                thumbnailErrorPath = ThumbnailError.UNSUPPORTED_EXTENSION;
            } else if ("unsupported_image".equals(tag)) {
                thumbnailErrorPath = ThumbnailError.UNSUPPORTED_IMAGE;
            } else if ("conversion_error".equals(tag)) {
                thumbnailErrorPath = ThumbnailError.CONVERSION_ERROR;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return thumbnailErrorPath;
        }
    }
}
