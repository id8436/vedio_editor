package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PaperMemberPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperChangeMemberPolicyDetails {
    protected final PaperMemberPolicy newValue;
    protected final PaperMemberPolicy previousValue;

    public PaperChangeMemberPolicyDetails(PaperMemberPolicy paperMemberPolicy, PaperMemberPolicy paperMemberPolicy2) {
        if (paperMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperMemberPolicy;
        this.previousValue = paperMemberPolicy2;
    }

    public PaperChangeMemberPolicyDetails(PaperMemberPolicy paperMemberPolicy) {
        this(paperMemberPolicy, null);
    }

    public PaperMemberPolicy getNewValue() {
        return this.newValue;
    }

    public PaperMemberPolicy getPreviousValue() {
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
            PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails = (PaperChangeMemberPolicyDetails) obj;
            if (this.newValue == paperChangeMemberPolicyDetails.newValue || this.newValue.equals(paperChangeMemberPolicyDetails.newValue)) {
                if (this.previousValue == paperChangeMemberPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(paperChangeMemberPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<PaperChangeMemberPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            PaperMemberPolicy.Serializer.INSTANCE.serialize(paperChangeMemberPolicyDetails.newValue, gVar);
            if (paperChangeMemberPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(PaperMemberPolicy.Serializer.INSTANCE).serialize(paperChangeMemberPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperChangeMemberPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperMemberPolicy paperMemberPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                PaperMemberPolicy paperMemberPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        paperMemberPolicyDeserialize = PaperMemberPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        paperMemberPolicy = (PaperMemberPolicy) StoneSerializers.nullable(PaperMemberPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (paperMemberPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                PaperChangeMemberPolicyDetails paperChangeMemberPolicyDetails = new PaperChangeMemberPolicyDetails(paperMemberPolicyDeserialize, paperMemberPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperChangeMemberPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
