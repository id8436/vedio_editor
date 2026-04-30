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
public final class AddPropertiesError {
    private Tag _tag;
    private LookupError pathValue;
    private String templateNotFoundValue;
    public static final AddPropertiesError RESTRICTED_CONTENT = new AddPropertiesError().withTag(Tag.RESTRICTED_CONTENT);
    public static final AddPropertiesError OTHER = new AddPropertiesError().withTag(Tag.OTHER);
    public static final AddPropertiesError UNSUPPORTED_FOLDER = new AddPropertiesError().withTag(Tag.UNSUPPORTED_FOLDER);
    public static final AddPropertiesError PROPERTY_FIELD_TOO_LARGE = new AddPropertiesError().withTag(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final AddPropertiesError DOES_NOT_FIT_TEMPLATE = new AddPropertiesError().withTag(Tag.DOES_NOT_FIT_TEMPLATE);
    public static final AddPropertiesError PROPERTY_GROUP_ALREADY_EXISTS = new AddPropertiesError().withTag(Tag.PROPERTY_GROUP_ALREADY_EXISTS);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        PROPERTY_GROUP_ALREADY_EXISTS
    }

    private AddPropertiesError() {
    }

    private AddPropertiesError withTag(Tag tag) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError._tag = tag;
        return addPropertiesError;
    }

    private AddPropertiesError withTagAndTemplateNotFound(Tag tag, String str) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError._tag = tag;
        addPropertiesError.templateNotFoundValue = str;
        return addPropertiesError;
    }

    private AddPropertiesError withTagAndPath(Tag tag, LookupError lookupError) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError._tag = tag;
        addPropertiesError.pathValue = lookupError;
        return addPropertiesError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static AddPropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new AddPropertiesError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
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

    public static AddPropertiesError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AddPropertiesError().withTagAndPath(Tag.PATH, lookupError);
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

    public boolean isPropertyGroupAlreadyExists() {
        return this._tag == Tag.PROPERTY_GROUP_ALREADY_EXISTS;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.templateNotFoundValue, this.pathValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof AddPropertiesError)) {
            AddPropertiesError addPropertiesError = (AddPropertiesError) obj;
            if (this._tag != addPropertiesError._tag) {
                return false;
            }
            switch (this._tag) {
                case TEMPLATE_NOT_FOUND:
                    return this.templateNotFoundValue == addPropertiesError.templateNotFoundValue || this.templateNotFoundValue.equals(addPropertiesError.templateNotFoundValue);
                case RESTRICTED_CONTENT:
                case OTHER:
                case UNSUPPORTED_FOLDER:
                case PROPERTY_FIELD_TOO_LARGE:
                case DOES_NOT_FIT_TEMPLATE:
                case PROPERTY_GROUP_ALREADY_EXISTS:
                    return true;
                case PATH:
                    return this.pathValue == addPropertiesError.pathValue || this.pathValue.equals(addPropertiesError.pathValue);
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

    public class Serializer extends UnionSerializer<AddPropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddPropertiesError addPropertiesError, g gVar) throws IOException {
            switch (addPropertiesError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(addPropertiesError.templateNotFoundValue, gVar);
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
                    LookupError.Serializer.INSTANCE.serialize(addPropertiesError.pathValue, gVar);
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
                case PROPERTY_GROUP_ALREADY_EXISTS:
                    gVar.b("property_group_already_exists");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + addPropertiesError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddPropertiesError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AddPropertiesError addPropertiesErrorPath;
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
                addPropertiesErrorPath = AddPropertiesError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.RESTRICTED_CONTENT;
            } else if ("other".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.OTHER;
            } else if ("path".equals(tag)) {
                expectField("path", kVar);
                addPropertiesErrorPath = AddPropertiesError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("unsupported_folder".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.UNSUPPORTED_FOLDER;
            } else if ("property_field_too_large".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.PROPERTY_FIELD_TOO_LARGE;
            } else if ("does_not_fit_template".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.DOES_NOT_FIT_TEMPLATE;
            } else if ("property_group_already_exists".equals(tag)) {
                addPropertiesErrorPath = AddPropertiesError.PROPERTY_GROUP_ALREADY_EXISTS;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return addPropertiesErrorPath;
        }
    }
}
