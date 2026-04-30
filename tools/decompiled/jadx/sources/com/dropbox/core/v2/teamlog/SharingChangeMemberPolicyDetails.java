package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharingMemberPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharingChangeMemberPolicyDetails {
    protected final SharingMemberPolicy newValue;
    protected final SharingMemberPolicy previousValue;

    public SharingChangeMemberPolicyDetails(SharingMemberPolicy sharingMemberPolicy, SharingMemberPolicy sharingMemberPolicy2) {
        if (sharingMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharingMemberPolicy;
        this.previousValue = sharingMemberPolicy2;
    }

    public SharingChangeMemberPolicyDetails(SharingMemberPolicy sharingMemberPolicy) {
        this(sharingMemberPolicy, null);
    }

    public SharingMemberPolicy getNewValue() {
        return this.newValue;
    }

    public SharingMemberPolicy getPreviousValue() {
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
            SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails = (SharingChangeMemberPolicyDetails) obj;
            if (this.newValue == sharingChangeMemberPolicyDetails.newValue || this.newValue.equals(sharingChangeMemberPolicyDetails.newValue)) {
                if (this.previousValue == sharingChangeMemberPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharingChangeMemberPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharingChangeMemberPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            SharingMemberPolicy.Serializer.INSTANCE.serialize(sharingChangeMemberPolicyDetails.newValue, gVar);
            if (sharingChangeMemberPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharingMemberPolicy.Serializer.INSTANCE).serialize(sharingChangeMemberPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharingChangeMemberPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharingMemberPolicy sharingMemberPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharingMemberPolicy sharingMemberPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        sharingMemberPolicyDeserialize = SharingMemberPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        sharingMemberPolicy = (SharingMemberPolicy) StoneSerializers.nullable(SharingMemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (sharingMemberPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharingChangeMemberPolicyDetails sharingChangeMemberPolicyDetails = new SharingChangeMemberPolicyDetails(sharingMemberPolicyDeserialize, sharingMemberPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharingChangeMemberPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
