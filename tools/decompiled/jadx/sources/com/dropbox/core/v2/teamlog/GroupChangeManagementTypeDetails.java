package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamcommon.GroupManagementType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GroupChangeManagementTypeDetails {
    protected final GroupManagementType newValue;
    protected final GroupManagementType previousValue;

    public GroupChangeManagementTypeDetails(GroupManagementType groupManagementType, GroupManagementType groupManagementType2) {
        if (groupManagementType == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = groupManagementType;
        this.previousValue = groupManagementType2;
    }

    public GroupChangeManagementTypeDetails(GroupManagementType groupManagementType) {
        this(groupManagementType, null);
    }

    public GroupManagementType getNewValue() {
        return this.newValue;
    }

    public GroupManagementType getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GroupChangeManagementTypeDetails groupChangeManagementTypeDetails = (GroupChangeManagementTypeDetails) obj;
            if (this.newValue == groupChangeManagementTypeDetails.newValue || this.newValue.equals(groupChangeManagementTypeDetails.newValue)) {
                if (this.previousValue == groupChangeManagementTypeDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(groupChangeManagementTypeDetails.previousValue)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GroupChangeManagementTypeDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GroupChangeManagementTypeDetails groupChangeManagementTypeDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            GroupManagementType.Serializer.INSTANCE.serialize(groupChangeManagementTypeDetails.newValue, gVar);
            if (groupChangeManagementTypeDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize(groupChangeManagementTypeDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GroupChangeManagementTypeDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            GroupManagementType groupManagementType = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GroupManagementType groupManagementTypeDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        groupManagementTypeDeserialize = GroupManagementType.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        groupManagementType = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (groupManagementTypeDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                GroupChangeManagementTypeDetails groupChangeManagementTypeDetails = new GroupChangeManagementTypeDetails(groupManagementTypeDeserialize, groupManagementType);
                if (!z) {
                    expectEndObject(kVar);
                }
                return groupChangeManagementTypeDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
