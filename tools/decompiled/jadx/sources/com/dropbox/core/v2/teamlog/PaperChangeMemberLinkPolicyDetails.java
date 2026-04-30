package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PaperMemberPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperChangeMemberLinkPolicyDetails {
    protected final PaperMemberPolicy newValue;

    public PaperChangeMemberLinkPolicyDetails(PaperMemberPolicy paperMemberPolicy) {
        if (paperMemberPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = paperMemberPolicy;
    }

    public PaperMemberPolicy getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails = (PaperChangeMemberLinkPolicyDetails) obj;
        return this.newValue == paperChangeMemberLinkPolicyDetails.newValue || this.newValue.equals(paperChangeMemberLinkPolicyDetails.newValue);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperChangeMemberLinkPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            PaperMemberPolicy.Serializer.INSTANCE.serialize(paperChangeMemberLinkPolicyDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperChangeMemberLinkPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperMemberPolicy paperMemberPolicyDeserialize = null;
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
                    if ("new_value".equals(strD)) {
                        paperMemberPolicyDeserialize = PaperMemberPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (paperMemberPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                PaperChangeMemberLinkPolicyDetails paperChangeMemberLinkPolicyDetails = new PaperChangeMemberLinkPolicyDetails(paperMemberPolicyDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperChangeMemberLinkPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
