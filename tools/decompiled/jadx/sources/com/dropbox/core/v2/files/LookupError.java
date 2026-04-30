package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class LookupError {
    private Tag _tag;
    private String malformedPathValue;
    public static final LookupError NOT_FOUND = new LookupError().withTag(Tag.NOT_FOUND);
    public static final LookupError NOT_FILE = new LookupError().withTag(Tag.NOT_FILE);
    public static final LookupError NOT_FOLDER = new LookupError().withTag(Tag.NOT_FOLDER);
    public static final LookupError RESTRICTED_CONTENT = new LookupError().withTag(Tag.RESTRICTED_CONTENT);
    public static final LookupError OTHER = new LookupError().withTag(Tag.OTHER);

    public enum Tag {
        MALFORMED_PATH,
        NOT_FOUND,
        NOT_FILE,
        NOT_FOLDER,
        RESTRICTED_CONTENT,
        OTHER
    }

    private LookupError() {
    }

    private LookupError withTag(Tag tag) {
        LookupError lookupError = new LookupError();
        lookupError._tag = tag;
        return lookupError;
    }

    private LookupError withTagAndMalformedPath(Tag tag, String str) {
        LookupError lookupError = new LookupError();
        lookupError._tag = tag;
        lookupError.malformedPathValue = str;
        return lookupError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isMalformedPath() {
        return this._tag == Tag.MALFORMED_PATH;
    }

    public static LookupError malformedPath(String str) {
        return new LookupError().withTagAndMalformedPath(Tag.MALFORMED_PATH, str);
    }

    public static LookupError malformedPath() {
        return malformedPath(null);
    }

    public String getMalformedPathValue() {
        if (this._tag != Tag.MALFORMED_PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.MALFORMED_PATH, but was Tag." + this._tag.name());
        }
        return this.malformedPathValue;
    }

    public boolean isNotFound() {
        return this._tag == Tag.NOT_FOUND;
    }

    public boolean isNotFile() {
        return this._tag == Tag.NOT_FILE;
    }

    public boolean isNotFolder() {
        return this._tag == Tag.NOT_FOLDER;
    }

    public boolean isRestrictedContent() {
        return this._tag == Tag.RESTRICTED_CONTENT;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.malformedPathValue});
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof LookupError)) {
            LookupError lookupError = (LookupError) obj;
            if (this._tag != lookupError._tag) {
                return false;
            }
            switch (this._tag) {
                case MALFORMED_PATH:
                    if (this.malformedPathValue == lookupError.malformedPathValue || (this.malformedPathValue != null && this.malformedPathValue.equals(lookupError.malformedPathValue))) {
                        z = true;
                    }
                    return z;
                case NOT_FOUND:
                case NOT_FILE:
                case NOT_FOLDER:
                case RESTRICTED_CONTENT:
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

    public class Serializer extends UnionSerializer<LookupError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LookupError lookupError, g gVar) throws IOException {
            switch (lookupError.tag()) {
                case MALFORMED_PATH:
                    gVar.e();
                    writeTag("malformed_path", gVar);
                    gVar.a("malformed_path");
                    StoneSerializers.nullable(StoneSerializers.string()).serialize(lookupError.malformedPathValue, gVar);
                    gVar.f();
                    break;
                case NOT_FOUND:
                    gVar.b("not_found");
                    break;
                case NOT_FILE:
                    gVar.b("not_file");
                    break;
                case NOT_FOLDER:
                    gVar.b("not_folder");
                    break;
                case RESTRICTED_CONTENT:
                    gVar.b("restricted_content");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LookupError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LookupError lookupErrorMalformedPath;
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
            if ("malformed_path".equals(tag)) {
                String str = null;
                if (kVar.c() != o.END_OBJECT) {
                    expectField("malformed_path", kVar);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                }
                if (str == null) {
                    lookupErrorMalformedPath = LookupError.malformedPath();
                } else {
                    lookupErrorMalformedPath = LookupError.malformedPath(str);
                }
            } else if ("not_found".equals(tag)) {
                lookupErrorMalformedPath = LookupError.NOT_FOUND;
            } else if ("not_file".equals(tag)) {
                lookupErrorMalformedPath = LookupError.NOT_FILE;
            } else if ("not_folder".equals(tag)) {
                lookupErrorMalformedPath = LookupError.NOT_FOLDER;
            } else if ("restricted_content".equals(tag)) {
                lookupErrorMalformedPath = LookupError.RESTRICTED_CONTENT;
            } else {
                lookupErrorMalformedPath = LookupError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return lookupErrorMalformedPath;
        }
    }
}
