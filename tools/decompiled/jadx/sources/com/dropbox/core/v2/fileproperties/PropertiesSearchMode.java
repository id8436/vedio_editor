package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PropertiesSearchMode {
    public static final PropertiesSearchMode OTHER = new PropertiesSearchMode().withTag(Tag.OTHER);
    private Tag _tag;
    private String fieldNameValue;

    public enum Tag {
        FIELD_NAME,
        OTHER
    }

    private PropertiesSearchMode() {
    }

    private PropertiesSearchMode withTag(Tag tag) {
        PropertiesSearchMode propertiesSearchMode = new PropertiesSearchMode();
        propertiesSearchMode._tag = tag;
        return propertiesSearchMode;
    }

    private PropertiesSearchMode withTagAndFieldName(Tag tag, String str) {
        PropertiesSearchMode propertiesSearchMode = new PropertiesSearchMode();
        propertiesSearchMode._tag = tag;
        propertiesSearchMode.fieldNameValue = str;
        return propertiesSearchMode;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isFieldName() {
        return this._tag == Tag.FIELD_NAME;
    }

    public static PropertiesSearchMode fieldName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new PropertiesSearchMode().withTagAndFieldName(Tag.FIELD_NAME, str);
    }

    public String getFieldNameValue() {
        if (this._tag != Tag.FIELD_NAME) {
            throw new IllegalStateException("Invalid tag: required Tag.FIELD_NAME, but was Tag." + this._tag.name());
        }
        return this.fieldNameValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.fieldNameValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PropertiesSearchMode)) {
            return false;
        }
        PropertiesSearchMode propertiesSearchMode = (PropertiesSearchMode) obj;
        if (this._tag != propertiesSearchMode._tag) {
            return false;
        }
        switch (this._tag) {
            case FIELD_NAME:
                return this.fieldNameValue == propertiesSearchMode.fieldNameValue || this.fieldNameValue.equals(propertiesSearchMode.fieldNameValue);
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

    class Serializer extends UnionSerializer<PropertiesSearchMode> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PropertiesSearchMode propertiesSearchMode, g gVar) throws IOException {
            switch (propertiesSearchMode.tag()) {
                case FIELD_NAME:
                    gVar.e();
                    writeTag("field_name", gVar);
                    gVar.a("field_name");
                    StoneSerializers.string().serialize(propertiesSearchMode.fieldNameValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PropertiesSearchMode deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PropertiesSearchMode propertiesSearchModeFieldName;
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
            if ("field_name".equals(tag)) {
                expectField("field_name", kVar);
                propertiesSearchModeFieldName = PropertiesSearchMode.fieldName(StoneSerializers.string().deserialize(kVar));
            } else {
                propertiesSearchModeFieldName = PropertiesSearchMode.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return propertiesSearchModeFieldName;
        }
    }
}
