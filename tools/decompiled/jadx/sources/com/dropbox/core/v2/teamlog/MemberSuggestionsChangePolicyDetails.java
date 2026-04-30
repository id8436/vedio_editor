package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.MemberSuggestionsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberSuggestionsChangePolicyDetails {
    protected final MemberSuggestionsPolicy newValue;
    protected final MemberSuggestionsPolicy previousValue;

    public MemberSuggestionsChangePolicyDetails(MemberSuggestionsPolicy memberSuggestionsPolicy, MemberSuggestionsPolicy memberSuggestionsPolicy2) {
        if (memberSuggestionsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = memberSuggestionsPolicy;
        this.previousValue = memberSuggestionsPolicy2;
    }

    public MemberSuggestionsChangePolicyDetails(MemberSuggestionsPolicy memberSuggestionsPolicy) {
        this(memberSuggestionsPolicy, null);
    }

    public MemberSuggestionsPolicy getNewValue() {
        return this.newValue;
    }

    public MemberSuggestionsPolicy getPreviousValue() {
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
            MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails = (MemberSuggestionsChangePolicyDetails) obj;
            if (this.newValue == memberSuggestionsChangePolicyDetails.newValue || this.newValue.equals(memberSuggestionsChangePolicyDetails.newValue)) {
                if (this.previousValue == memberSuggestionsChangePolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(memberSuggestionsChangePolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<MemberSuggestionsChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            MemberSuggestionsPolicy.Serializer.INSTANCE.serialize(memberSuggestionsChangePolicyDetails.newValue, gVar);
            if (memberSuggestionsChangePolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(MemberSuggestionsPolicy.Serializer.INSTANCE).serialize(memberSuggestionsChangePolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberSuggestionsChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MemberSuggestionsPolicy memberSuggestionsPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberSuggestionsPolicy memberSuggestionsPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        memberSuggestionsPolicyDeserialize = MemberSuggestionsPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        memberSuggestionsPolicy = (MemberSuggestionsPolicy) StoneSerializers.nullable(MemberSuggestionsPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberSuggestionsPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberSuggestionsChangePolicyDetails memberSuggestionsChangePolicyDetails = new MemberSuggestionsChangePolicyDetails(memberSuggestionsPolicyDeserialize, memberSuggestionsPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberSuggestionsChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
