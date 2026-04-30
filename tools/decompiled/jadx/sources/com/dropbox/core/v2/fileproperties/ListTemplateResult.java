package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class ListTemplateResult {
    protected final List<String> templateIds;

    public ListTemplateResult(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'templateIds' is null");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list 'templateIds' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("Stringan item in list 'templateIds' is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("Stringan item in list 'templateIds' does not match pattern");
            }
        }
        this.templateIds = list;
    }

    public List<String> getTemplateIds() {
        return this.templateIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.templateIds});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListTemplateResult listTemplateResult = (ListTemplateResult) obj;
        return this.templateIds == listTemplateResult.templateIds || this.templateIds.equals(listTemplateResult.templateIds);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<ListTemplateResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ListTemplateResult listTemplateResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("template_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize(listTemplateResult.templateIds, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ListTemplateResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("template_ids".equals(strD)) {
                        list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"template_ids\" missing.");
                }
                ListTemplateResult listTemplateResult = new ListTemplateResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return listTemplateResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
