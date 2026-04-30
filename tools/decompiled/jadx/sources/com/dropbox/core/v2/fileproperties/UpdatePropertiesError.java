package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.fileproperties.LookUpPropertiesError;
import com.dropbox.core.v2.fileproperties.LookupError;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdatePropertiesError {
    private Tag _tag;
    private LookupError pathValue;
    private LookUpPropertiesError propertyGroupLookupValue;
    private String templateNotFoundValue;
    public static final UpdatePropertiesError RESTRICTED_CONTENT = new UpdatePropertiesError().withTag(Tag.RESTRICTED_CONTENT);
    public static final UpdatePropertiesError OTHER = new UpdatePropertiesError().withTag(Tag.OTHER);
    public static final UpdatePropertiesError UNSUPPORTED_FOLDER = new UpdatePropertiesError().withTag(Tag.UNSUPPORTED_FOLDER);
    public static final UpdatePropertiesError PROPERTY_FIELD_TOO_LARGE = new UpdatePropertiesError().withTag(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final UpdatePropertiesError DOES_NOT_FIT_TEMPLATE = new UpdatePropertiesError().withTag(Tag.DOES_NOT_FIT_TEMPLATE);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        PROPERTY_GROUP_LOOKUP
    }

    private UpdatePropertiesError() {
    }

    private UpdatePropertiesError withTag(Tag tag) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError._tag = tag;
        return updatePropertiesError;
    }

    private UpdatePropertiesError withTagAndTemplateNotFound(Tag tag, String str) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError._tag = tag;
        updatePropertiesError.templateNotFoundValue = str;
        return updatePropertiesError;
    }

    private UpdatePropertiesError withTagAndPath(Tag tag, LookupError lookupError) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError._tag = tag;
        updatePropertiesError.pathValue = lookupError;
        return updatePropertiesError;
    }

    private UpdatePropertiesError withTagAndPropertyGroupLookup(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError._tag = tag;
        updatePropertiesError.propertyGroupLookupValue = lookUpPropertiesError;
        return updatePropertiesError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static UpdatePropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new UpdatePropertiesError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
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

    public static UpdatePropertiesError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdatePropertiesError().withTagAndPath(Tag.PATH, lookupError);
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

    public boolean isPropertyGroupLookup() {
        return this._tag == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public static UpdatePropertiesError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdatePropertiesError().withTagAndPropertyGroupLookup(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
    }

    public LookUpPropertiesError getPropertyGroupLookupValue() {
        if (this._tag != Tag.PROPERTY_GROUP_LOOKUP) {
            throw new IllegalStateException("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag." + this._tag.name());
        }
        return this.propertyGroupLookupValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.templateNotFoundValue, this.pathValue, this.propertyGroupLookupValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdatePropertiesError)) {
            return false;
        }
        UpdatePropertiesError updatePropertiesError = (UpdatePropertiesError) obj;
        if (this._tag != updatePropertiesError._tag) {
            return false;
        }
        switch (this._tag) {
            case TEMPLATE_NOT_FOUND:
                return this.templateNotFoundValue == updatePropertiesError.templateNotFoundValue || this.templateNotFoundValue.equals(updatePropertiesError.templateNotFoundValue);
            case RESTRICTED_CONTENT:
                return true;
            case OTHER:
                return true;
            case PATH:
                return this.pathValue == updatePropertiesError.pathValue || this.pathValue.equals(updatePropertiesError.pathValue);
            case UNSUPPORTED_FOLDER:
                return true;
            case PROPERTY_FIELD_TOO_LARGE:
                return true;
            case DOES_NOT_FIT_TEMPLATE:
                return true;
            case PROPERTY_GROUP_LOOKUP:
                return this.propertyGroupLookupValue == updatePropertiesError.propertyGroupLookupValue || this.propertyGroupLookupValue.equals(updatePropertiesError.propertyGroupLookupValue);
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

    public class Serializer extends UnionSerializer<UpdatePropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdatePropertiesError updatePropertiesError, g gVar) throws IOException {
            switch (updatePropertiesError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(updatePropertiesError.templateNotFoundValue, gVar);
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
                    LookupError.Serializer.INSTANCE.serialize(updatePropertiesError.pathValue, gVar);
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
                case PROPERTY_GROUP_LOOKUP:
                    gVar.e();
                    writeTag("property_group_lookup", gVar);
                    gVar.a("property_group_lookup");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(updatePropertiesError.propertyGroupLookupValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + updatePropertiesError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdatePropertiesError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UpdatePropertiesError updatePropertiesErrorPropertyGroupLookup;
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
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.RESTRICTED_CONTENT;
            } else if ("other".equals(tag)) {
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.OTHER;
            } else if ("path".equals(tag)) {
                expectField("path", kVar);
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("unsupported_folder".equals(tag)) {
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.UNSUPPORTED_FOLDER;
            } else if ("property_field_too_large".equals(tag)) {
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.PROPERTY_FIELD_TOO_LARGE;
            } else if ("does_not_fit_template".equals(tag)) {
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.DOES_NOT_FIT_TEMPLATE;
            } else if ("property_group_lookup".equals(tag)) {
                expectField("property_group_lookup", kVar);
                updatePropertiesErrorPropertyGroupLookup = UpdatePropertiesError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return updatePropertiesErrorPropertyGroupLookup;
        }
    }
}
