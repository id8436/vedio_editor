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
public final class PreviewError {
    private Tag _tag;
    private LookupError pathValue;
    public static final PreviewError IN_PROGRESS = new PreviewError().withTag(Tag.IN_PROGRESS);
    public static final PreviewError UNSUPPORTED_EXTENSION = new PreviewError().withTag(Tag.UNSUPPORTED_EXTENSION);
    public static final PreviewError UNSUPPORTED_CONTENT = new PreviewError().withTag(Tag.UNSUPPORTED_CONTENT);

    public enum Tag {
        PATH,
        IN_PROGRESS,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_CONTENT
    }

    private PreviewError() {
    }

    private PreviewError withTag(Tag tag) {
        PreviewError previewError = new PreviewError();
        previewError._tag = tag;
        return previewError;
    }

    private PreviewError withTagAndPath(Tag tag, LookupError lookupError) {
        PreviewError previewError = new PreviewError();
        previewError._tag = tag;
        previewError.pathValue = lookupError;
        return previewError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static PreviewError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new PreviewError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isUnsupportedExtension() {
        return this._tag == Tag.UNSUPPORTED_EXTENSION;
    }

    public boolean isUnsupportedContent() {
        return this._tag == Tag.UNSUPPORTED_CONTENT;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PreviewError)) {
            return false;
        }
        PreviewError previewError = (PreviewError) obj;
        if (this._tag != previewError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == previewError.pathValue || this.pathValue.equals(previewError.pathValue);
            case IN_PROGRESS:
                return true;
            case UNSUPPORTED_EXTENSION:
                return true;
            case UNSUPPORTED_CONTENT:
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

    class Serializer extends UnionSerializer<PreviewError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PreviewError previewError, g gVar) throws IOException {
            switch (previewError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(previewError.pathValue, gVar);
                    gVar.f();
                    return;
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case UNSUPPORTED_EXTENSION:
                    gVar.b("unsupported_extension");
                    return;
                case UNSUPPORTED_CONTENT:
                    gVar.b("unsupported_content");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + previewError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PreviewError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PreviewError previewErrorPath;
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
                previewErrorPath = PreviewError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("in_progress".equals(tag)) {
                previewErrorPath = PreviewError.IN_PROGRESS;
            } else if ("unsupported_extension".equals(tag)) {
                previewErrorPath = PreviewError.UNSUPPORTED_EXTENSION;
            } else if ("unsupported_content".equals(tag)) {
                previewErrorPath = PreviewError.UNSUPPORTED_CONTENT;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return previewErrorPath;
        }
    }
}
