package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupDeleteDetails {
    protected final Boolean isCompanyManaged;

    public GroupDeleteDetails(Boolean bool) {
        this.isCompanyManaged = bool;
    }

    public GroupDeleteDetails() {
        this(null);
    }

    public Boolean getIsCompanyManaged() {
        return this.isCompanyManaged;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isCompanyManaged});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupDeleteDetails groupDeleteDetails = (GroupDeleteDetails) obj;
        return this.isCompanyManaged == groupDeleteDetails.isCompanyManaged || (this.isCompanyManaged != null && this.isCompanyManaged.equals(groupDeleteDetails.isCompanyManaged));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupDeleteDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupDeleteDetails groupDeleteDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (groupDeleteDetails.isCompanyManaged != null) {
                gVar.a("is_company_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(groupDeleteDetails.isCompanyManaged, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupDeleteDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean bool = null;
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
                    if ("is_company_managed".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                GroupDeleteDetails groupDeleteDetails = new GroupDeleteDetails(bool);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupDeleteDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
