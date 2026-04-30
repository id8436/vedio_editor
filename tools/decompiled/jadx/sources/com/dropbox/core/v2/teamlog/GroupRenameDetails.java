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
public class GroupRenameDetails {
    protected final String newValue;
    protected final String previousValue;

    public GroupRenameDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = str2;
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public String getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupRenameDetails groupRenameDetails = (GroupRenameDetails) obj;
            return (this.previousValue == groupRenameDetails.previousValue || this.previousValue.equals(groupRenameDetails.previousValue)) && (this.newValue == groupRenameDetails.newValue || this.newValue.equals(groupRenameDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupRenameDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupRenameDetails groupRenameDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            StoneSerializers.string().serialize(groupRenameDetails.previousValue, gVar);
            gVar.a("new_value");
            StoneSerializers.string().serialize(groupRenameDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupRenameDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("new_value".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                GroupRenameDetails groupRenameDetails = new GroupRenameDetails(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupRenameDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
