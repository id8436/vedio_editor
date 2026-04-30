package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class ModifyTemplateError {
    private Tag _tag;
    private String templateNotFoundValue;
    public static final ModifyTemplateError RESTRICTED_CONTENT = new ModifyTemplateError().withTag(Tag.RESTRICTED_CONTENT);
    public static final ModifyTemplateError OTHER = new ModifyTemplateError().withTag(Tag.OTHER);
    public static final ModifyTemplateError CONFLICTING_PROPERTY_NAMES = new ModifyTemplateError().withTag(Tag.CONFLICTING_PROPERTY_NAMES);
    public static final ModifyTemplateError TOO_MANY_PROPERTIES = new ModifyTemplateError().withTag(Tag.TOO_MANY_PROPERTIES);
    public static final ModifyTemplateError TOO_MANY_TEMPLATES = new ModifyTemplateError().withTag(Tag.TOO_MANY_TEMPLATES);
    public static final ModifyTemplateError TEMPLATE_ATTRIBUTE_TOO_LARGE = new ModifyTemplateError().withTag(Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        CONFLICTING_PROPERTY_NAMES,
        TOO_MANY_PROPERTIES,
        TOO_MANY_TEMPLATES,
        TEMPLATE_ATTRIBUTE_TOO_LARGE
    }

    private ModifyTemplateError() {
    }

    private ModifyTemplateError withTag(Tag tag) {
        ModifyTemplateError modifyTemplateError = new ModifyTemplateError();
        modifyTemplateError._tag = tag;
        return modifyTemplateError;
    }

    private ModifyTemplateError withTagAndTemplateNotFound(Tag tag, String str) {
        ModifyTemplateError modifyTemplateError = new ModifyTemplateError();
        modifyTemplateError._tag = tag;
        modifyTemplateError.templateNotFoundValue = str;
        return modifyTemplateError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static ModifyTemplateError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new ModifyTemplateError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
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

    public boolean isConflictingPropertyNames() {
        return this._tag == Tag.CONFLICTING_PROPERTY_NAMES;
    }

    public boolean isTooManyProperties() {
        return this._tag == Tag.TOO_MANY_PROPERTIES;
    }

    public boolean isTooManyTemplates() {
        return this._tag == Tag.TOO_MANY_TEMPLATES;
    }

    public boolean isTemplateAttributeTooLarge() {
        return this._tag == Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.templateNotFoundValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ModifyTemplateError)) {
            ModifyTemplateError modifyTemplateError = (ModifyTemplateError) obj;
            if (this._tag != modifyTemplateError._tag) {
                return false;
            }
            switch (this._tag) {
                case TEMPLATE_NOT_FOUND:
                    return this.templateNotFoundValue == modifyTemplateError.templateNotFoundValue || this.templateNotFoundValue.equals(modifyTemplateError.templateNotFoundValue);
                case RESTRICTED_CONTENT:
                case OTHER:
                case CONFLICTING_PROPERTY_NAMES:
                case TOO_MANY_PROPERTIES:
                case TOO_MANY_TEMPLATES:
                case TEMPLATE_ATTRIBUTE_TOO_LARGE:
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

    public class Serializer extends UnionSerializer<ModifyTemplateError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ModifyTemplateError modifyTemplateError, g gVar) throws IOException {
            switch (modifyTemplateError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(modifyTemplateError.templateNotFoundValue, gVar);
                    gVar.f();
                    return;
                case RESTRICTED_CONTENT:
                    gVar.b("restricted_content");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case CONFLICTING_PROPERTY_NAMES:
                    gVar.b("conflicting_property_names");
                    return;
                case TOO_MANY_PROPERTIES:
                    gVar.b("too_many_properties");
                    return;
                case TOO_MANY_TEMPLATES:
                    gVar.b("too_many_templates");
                    return;
                case TEMPLATE_ATTRIBUTE_TOO_LARGE:
                    gVar.b("template_attribute_too_large");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + modifyTemplateError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ModifyTemplateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ModifyTemplateError modifyTemplateErrorTemplateNotFound;
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
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.RESTRICTED_CONTENT;
            } else if ("other".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.OTHER;
            } else if ("conflicting_property_names".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.CONFLICTING_PROPERTY_NAMES;
            } else if ("too_many_properties".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.TOO_MANY_PROPERTIES;
            } else if ("too_many_templates".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.TOO_MANY_TEMPLATES;
            } else if ("template_attribute_too_large".equals(tag)) {
                modifyTemplateErrorTemplateNotFound = ModifyTemplateError.TEMPLATE_ATTRIBUTE_TOO_LARGE;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return modifyTemplateErrorTemplateNotFound;
        }
    }
}
