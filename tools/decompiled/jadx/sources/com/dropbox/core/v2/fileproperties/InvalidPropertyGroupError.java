package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.LookupError;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class InvalidPropertyGroupError {
    private Tag _tag;
    private LookupError pathValue;
    private String templateNotFoundValue;
    public static final InvalidPropertyGroupError RESTRICTED_CONTENT = new InvalidPropertyGroupError().withTag(Tag.RESTRICTED_CONTENT);
    public static final InvalidPropertyGroupError OTHER = new InvalidPropertyGroupError().withTag(Tag.OTHER);
    public static final InvalidPropertyGroupError UNSUPPORTED_FOLDER = new InvalidPropertyGroupError().withTag(Tag.UNSUPPORTED_FOLDER);
    public static final InvalidPropertyGroupError PROPERTY_FIELD_TOO_LARGE = new InvalidPropertyGroupError().withTag(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final InvalidPropertyGroupError DOES_NOT_FIT_TEMPLATE = new InvalidPropertyGroupError().withTag(Tag.DOES_NOT_FIT_TEMPLATE);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE
    }

    private InvalidPropertyGroupError() {
    }

    private InvalidPropertyGroupError withTag(Tag tag) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError._tag = tag;
        return invalidPropertyGroupError;
    }

    private InvalidPropertyGroupError withTagAndTemplateNotFound(Tag tag, String str) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError._tag = tag;
        invalidPropertyGroupError.templateNotFoundValue = str;
        return invalidPropertyGroupError;
    }

    private InvalidPropertyGroupError withTagAndPath(Tag tag, LookupError lookupError) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError._tag = tag;
        invalidPropertyGroupError.pathValue = lookupError;
        return invalidPropertyGroupError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static InvalidPropertyGroupError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new InvalidPropertyGroupError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
    }

    public String getTemplateNotFoundValue() {
        if (this._tag != Tag.TEMPLATE_NOT_FOUND) {
            throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this._tag.name());
        }
        return this.templateNotFoundValue;
    }

    public boolean isRestrictedContent() {
        return this._tag == Tag.RESTRICTED_CONTENT;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static InvalidPropertyGroupError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new InvalidPropertyGroupError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isUnsupportedFolder() {
        return this._tag == Tag.UNSUPPORTED_FOLDER;
    }

    public boolean isPropertyFieldTooLarge() {
        return this._tag == Tag.PROPERTY_FIELD_TOO_LARGE;
    }

    public boolean isDoesNotFitTemplate() {
        return this._tag == Tag.DOES_NOT_FIT_TEMPLATE;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.templateNotFoundValue, this.pathValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof InvalidPropertyGroupError)) {
            InvalidPropertyGroupError invalidPropertyGroupError = (InvalidPropertyGroupError) obj;
            if (this._tag != invalidPropertyGroupError._tag) {
                return false;
            }
            switch (this._tag) {
                case TEMPLATE_NOT_FOUND:
                    return this.templateNotFoundValue == invalidPropertyGroupError.templateNotFoundValue || this.templateNotFoundValue.equals(invalidPropertyGroupError.templateNotFoundValue);
                case RESTRICTED_CONTENT:
                case OTHER:
                case UNSUPPORTED_FOLDER:
                case PROPERTY_FIELD_TOO_LARGE:
                case DOES_NOT_FIT_TEMPLATE:
                    return true;
                case PATH:
                    return this.pathValue == invalidPropertyGroupError.pathValue || this.pathValue.equals(invalidPropertyGroupError.pathValue);
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

    public class Serializer extends UnionSerializer<InvalidPropertyGroupError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InvalidPropertyGroupError invalidPropertyGroupError, g gVar) throws IOException {
            switch (invalidPropertyGroupError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(invalidPropertyGroupError.templateNotFoundValue, gVar);
                    gVar.f();
                    return;
                case RESTRICTED_CONTENT:
                    gVar.b("restricted_content");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(invalidPropertyGroupError.pathValue, gVar);
                    gVar.f();
                    return;
                case UNSUPPORTED_FOLDER:
                    gVar.b("unsupported_folder");
                    return;
                case PROPERTY_FIELD_TOO_LARGE:
                    gVar.b("property_field_too_large");
                    return;
                case DOES_NOT_FIT_TEMPLATE:
                    gVar.b("does_not_fit_template");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + invalidPropertyGroupError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public InvalidPropertyGroupError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            InvalidPropertyGroupError invalidPropertyGroupErrorPath;
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
            if ("template_not_found".equals(tag)) {
                expectField("template_not_found", kVar);
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.RESTRICTED_CONTENT;
            } else if ("other".equals(tag)) {
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.OTHER;
            } else if ("path".equals(tag)) {
                expectField("path", kVar);
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("unsupported_folder".equals(tag)) {
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.UNSUPPORTED_FOLDER;
            } else if ("property_field_too_large".equals(tag)) {
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.PROPERTY_FIELD_TOO_LARGE;
            } else if ("does_not_fit_template".equals(tag)) {
                invalidPropertyGroupErrorPath = InvalidPropertyGroupError.DOES_NOT_FIT_TEMPLATE;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return invalidPropertyGroupErrorPath;
        }
    }
}
