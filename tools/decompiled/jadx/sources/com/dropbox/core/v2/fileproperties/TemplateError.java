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
public final class TemplateError {
    private Tag _tag;
    private String templateNotFoundValue;
    public static final TemplateError RESTRICTED_CONTENT = new TemplateError().withTag(Tag.RESTRICTED_CONTENT);
    public static final TemplateError OTHER = new TemplateError().withTag(Tag.OTHER);

    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER
    }

    private TemplateError() {
    }

    private TemplateError withTag(Tag tag) {
        TemplateError templateError = new TemplateError();
        templateError._tag = tag;
        return templateError;
    }

    private TemplateError withTagAndTemplateNotFound(Tag tag, String str) {
        TemplateError templateError = new TemplateError();
        templateError._tag = tag;
        templateError.templateNotFoundValue = str;
        return templateError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTemplateNotFound() {
        return this._tag == Tag.TEMPLATE_NOT_FOUND;
    }

    public static TemplateError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new TemplateError().withTagAndTemplateNotFound(Tag.TEMPLATE_NOT_FOUND, str);
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

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.templateNotFoundValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TemplateError)) {
            return false;
        }
        TemplateError templateError = (TemplateError) obj;
        if (this._tag != templateError._tag) {
            return false;
        }
        switch (this._tag) {
            case TEMPLATE_NOT_FOUND:
                return this.templateNotFoundValue == templateError.templateNotFoundValue || this.templateNotFoundValue.equals(templateError.templateNotFoundValue);
            case RESTRICTED_CONTENT:
                return true;
            case OTHER:
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

    public class Serializer extends UnionSerializer<TemplateError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TemplateError templateError, g gVar) throws IOException {
            switch (templateError.tag()) {
                case TEMPLATE_NOT_FOUND:
                    gVar.e();
                    writeTag("template_not_found", gVar);
                    gVar.a("template_not_found");
                    StoneSerializers.string().serialize(templateError.templateNotFoundValue, gVar);
                    gVar.f();
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
        public TemplateError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TemplateError templateErrorTemplateNotFound;
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
                templateErrorTemplateNotFound = TemplateError.templateNotFound(StoneSerializers.string().deserialize(kVar));
            } else if ("restricted_content".equals(tag)) {
                templateErrorTemplateNotFound = TemplateError.RESTRICTED_CONTENT;
            } else {
                templateErrorTemplateNotFound = TemplateError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return templateErrorTemplateNotFound;
        }
    }
}
