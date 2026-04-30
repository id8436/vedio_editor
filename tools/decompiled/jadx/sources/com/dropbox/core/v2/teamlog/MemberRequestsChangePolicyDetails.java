package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.MemberRequestsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberRequestsChangePolicyDetails {
    protected final MemberRequestsPolicy newValue;
    protected final MemberRequestsPolicy previousValue;

    public MemberRequestsChangePolicyDetails(MemberRequestsPolicy memberRequestsPolicy, MemberRequestsPolicy memberRequestsPolicy2) {
        if (memberRequestsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = memberRequestsPolicy;
        this.previousValue = memberRequestsPolicy2;
    }

    public MemberRequestsChangePolicyDetails(MemberRequestsPolicy memberRequestsPolicy) {
        this(memberRequestsPolicy, null);
    }

    public MemberRequestsPolicy getNewValue() {
        return this.newValue;
    }

    public MemberRequestsPolicy getPreviousValue() {
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
            MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails = (MemberRequestsChangePolicyDetails) obj;
            if (this.newValue == memberRequestsChangePolicyDetails.newValue || this.newValue.equals(memberRequestsChangePolicyDetails.newValue)) {
                if (this.previousValue == memberRequestsChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(memberRequestsChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MemberRequestsChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            MemberRequestsPolicy.Serializer.INSTANCE.serialize(memberRequestsChangePolicyDetails.newValue, gVar);
            if (memberRequestsChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(MemberRequestsPolicy.Serializer.INSTANCE).serialize(memberRequestsChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberRequestsChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MemberRequestsPolicy memberRequestsPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberRequestsPolicy memberRequestsPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        memberRequestsPolicyDeserialize = MemberRequestsPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        memberRequestsPolicy = (MemberRequestsPolicy) StoneSerializers.nullable(MemberRequestsPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberRequestsPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberRequestsChangePolicyDetails memberRequestsChangePolicyDetails = new MemberRequestsChangePolicyDetails(memberRequestsPolicyDeserialize, memberRequestsPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberRequestsChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
