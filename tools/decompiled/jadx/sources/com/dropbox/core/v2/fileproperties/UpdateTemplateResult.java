package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateTemplateResult {
    protected final String templateId;

    public UpdateTemplateResult(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        this.templateId = str;
    }

    public String getTemplateId() {
        return this.templateId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UpdateTemplateResult updateTemplateResult = (UpdateTemplateResult) obj;
        return this.templateId == updateTemplateResult.templateId || this.templateId.equals(updateTemplateResult.templateId);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<UpdateTemplateResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateTemplateResult updateTemplateResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("template_id");
            StoneSerializers.string().serialize(updateTemplateResult.templateId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateTemplateResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("template_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"template_id\" missing.");
                }
                UpdateTemplateResult updateTemplateResult = new UpdateTemplateResult(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateTemplateResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
