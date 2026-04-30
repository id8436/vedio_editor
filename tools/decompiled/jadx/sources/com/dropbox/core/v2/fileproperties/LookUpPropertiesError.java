package com.dropbox.core.v2.fileproperties;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum LookUpPropertiesError {
    PROPERTY_GROUP_NOT_FOUND,
    OTHER;

    public class Serializer extends UnionSerializer<LookUpPropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LookUpPropertiesError lookUpPropertiesError, g gVar) throws IOException {
            switch (lookUpPropertiesError) {
                case PROPERTY_GROUP_NOT_FOUND:
                    gVar.b("property_group_not_found");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LookUpPropertiesError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LookUpPropertiesError lookUpPropertiesError;
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
            if ("property_group_not_found".equals(tag)) {
                lookUpPropertiesError = LookUpPropertiesError.PROPERTY_GROUP_NOT_FOUND;
            } else {
                lookUpPropertiesError = LookUpPropertiesError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return lookUpPropertiesError;
        }
    }
}
