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
public final class RemovePropertiesError {
    private Tag _tag;
    private LookupError pathValue;
    private LookUpPropertiesError propertyGroupLookupValue;
    private String templateNotFoundValue;
    public static final RemovePropertiesError RESTRICTED_CONTENT = new RemovePropertiesError().withTag(Tag.RESTRICTED_CONTENT);
    public static final RemovePropertiesError OTHER = new RemovePropertiesError().withTag(Tag.OTHER);
    public static final RemovePropertiesError UNSUPPORTED_FOLDER = new RemovePropertiesError().withTag(Tag.UNSUPPORTED_FOLDER);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_GROUP_LOOKUP
    }

    private RemovePropertiesError() {
    }

    private RemovePropertiesError withTag(Tag tag) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError._tag = tag;
        return removePropertiesError;
    }

    private RemovePropertiesError withTagAndTemplateNotFound(Tag tag, String str) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError._tag = tag;
        removePropertiesError.templateNotFoundValue = str;
        return removePropertiesError;
    }

    private RemovePropertiesError withTagAndPath(Tag tag, LookupError lookupError) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError._tag = tag;
        removePropertiesError.pathValue = lookupError;
        return removePropertiesError;
    }

    private RemovePropertiesError withTagAndPropertyGroupLookup(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError._tag = tag;
        removePropertiesError.propertyGroupLookupValue = lookUpPropertiesError;
        return removePropertiesError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static RemovePropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new RemovePropertiesError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
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

    public static RemovePropertiesError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemovePropertiesError().withTagAndPath(Tag.PATH, lookupError);
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

    public boolean isPropertyGroupLookup() {
        return this._tag == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public static RemovePropertiesError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemovePropertiesError().withTagAndPropertyGroupLookup(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
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
        if (obj == null || !(obj instanceof RemovePropertiesError)) {
            return false;
        }
        RemovePropertiesError removePropertiesError = (RemovePropertiesError) obj;
        if (this._tag != removePropertiesError._tag) {
            return false;
        }
        switch (this._tag) {
            case TEMPLATE_NOT_FOUND:
                return this.templateNotFoundValue == removePropertiesError.templateNotFoundValue || this.templateNotFoundValue.equals(removePropertiesError.templateNotFoundValue);
            case RESTRICTED_CONTENT:
                return true;
            case OTHER:
                return true;
            case PATH:
                return this.pathValue == removePropertiesError.pathValue || this.pathValue.equals(removePropertiesError.pathValue);
            case UNSUPPORTED_FOLDER:
                return true;
            case PROPERTY_GROUP_LOOKUP:
                return this.propertyGroupLookupValue == removePropertiesError.propertyGroupLookupValue || this.propertyGroupLookupValue.equals(removePropertiesError.propertyGroupLookupValue);
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

    public class Serializer extends UnionSerializer<RemovePropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RemovePropertiesError removePropertiesError, g gVar) throws IOException {
            switch (removePropertiesError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(removePropertiesError.templateNotFoundValue, gVar);
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
                    LookupError.Serializer.INSTANCE.serialize(removePropertiesError.pathValue, gVar);
                    gVar.f();
                    return;
                case UNSUPPORTED_FOLDER:
                    gVar.b("unsupported_folder");
                    return;
                case PROPERTY_GROUP_LOOKUP:
                    gVar.e();
                    writeTag("property_group_lookup", gVar);
                    gVar.a("property_group_lookup");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(removePropertiesError.propertyGroupLookupValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + removePropertiesError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RemovePropertiesError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RemovePropertiesError removePropertiesErrorPropertyGroupLookup;
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
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.RESTRICTED_CONTENT;
            } else if ("other".equals(tag)) {
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.OTHER;
            } else if ("path".equals(tag)) {
                expectField("path", kVar);
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("unsupported_folder".equals(tag)) {
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.UNSUPPORTED_FOLDER;
            } else if ("property_group_lookup".equals(tag)) {
                expectField("property_group_lookup", kVar);
                removePropertiesErrorPropertyGroupLookup = RemovePropertiesError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return removePropertiesErrorPropertyGroupLookup;
        }
    }
}
