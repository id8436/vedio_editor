package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.WriteError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SaveUrlError {
    public static final SaveUrlError DOWNLOAD_FAILED = new SaveUrlError().withTag(Tag.DOWNLOAD_FAILED);
    public static final SaveUrlError INVALID_URL = new SaveUrlError().withTag(Tag.INVALID_URL);
    public static final SaveUrlError NOT_FOUND = new SaveUrlError().withTag(Tag.NOT_FOUND);
    public static final SaveUrlError OTHER = new SaveUrlError().withTag(Tag.OTHER);
    private Tag _tag;
    private WriteError pathValue;

    public enum Tag {
        PATH,
        DOWNLOAD_FAILED,
        INVALID_URL,
        NOT_FOUND,
        OTHER
    }

    private SaveUrlError() {
    }

    private SaveUrlError withTag(Tag tag) {
        SaveUrlError saveUrlError = new SaveUrlError();
        saveUrlError._tag = tag;
        return saveUrlError;
    }

    private SaveUrlError withTagAndPath(Tag tag, WriteError writeError) {
        SaveUrlError saveUrlError = new SaveUrlError();
        saveUrlError._tag = tag;
        saveUrlError.pathValue = writeError;
        return saveUrlError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static SaveUrlError path(WriteError writeError) {
        if (writeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SaveUrlError().withTagAndPath(Tag.PATH, writeError);
    }

    public WriteError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isDownloadFailed() {
        return this._tag == Tag.DOWNLOAD_FAILED;
    }

    public boolean isInvalidUrl() {
        return this._tag == Tag.INVALID_URL;
    }

    public boolean isNotFound() {
        return this._tag == Tag.NOT_FOUND;
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
        if (obj != null && (obj instanceof SaveUrlError)) {
            SaveUrlError saveUrlError = (SaveUrlError) obj;
            if (this._tag != saveUrlError._tag) {
                return false;
            }
            switch (this._tag) {
                case PATH:
                    return this.pathValue == saveUrlError.pathValue || this.pathValue.equals(saveUrlError.pathValue);
                case DOWNLOAD_FAILED:
                case INVALID_URL:
                case NOT_FOUND:
                case OTHER:
                    return true;
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

    class Serializer extends UnionSerializer<SaveUrlError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SaveUrlError saveUrlError, g gVar) throws IOException {
            switch (saveUrlError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    WriteError.Serializer.INSTANCE.serialize(saveUrlError.pathValue, gVar);
                    gVar.f();
                    break;
                case DOWNLOAD_FAILED:
                    gVar.b("download_failed");
                    break;
                case INVALID_URL:
                    gVar.b("invalid_url");
                    break;
                case NOT_FOUND:
                    gVar.b("not_found");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SaveUrlError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SaveUrlError saveUrlErrorPath;
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
                saveUrlErrorPath = SaveUrlError.path(WriteError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("download_failed".equals(tag)) {
                saveUrlErrorPath = SaveUrlError.DOWNLOAD_FAILED;
            } else if ("invalid_url".equals(tag)) {
                saveUrlErrorPath = SaveUrlError.INVALID_URL;
            } else if ("not_found".equals(tag)) {
                saveUrlErrorPath = SaveUrlError.NOT_FOUND;
            } else {
                saveUrlErrorPath = SaveUrlError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return saveUrlErrorPath;
        }
    }
}
