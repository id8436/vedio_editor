package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SpaceLimitsLevel;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberSpaceLimitsChangePolicyDetails {
    protected final SpaceLimitsLevel newValue;
    protected final SpaceLimitsLevel previousValue;

    public MemberSpaceLimitsChangePolicyDetails(SpaceLimitsLevel spaceLimitsLevel, SpaceLimitsLevel spaceLimitsLevel2) {
        if (spaceLimitsLevel == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = spaceLimitsLevel;
        if (spaceLimitsLevel2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = spaceLimitsLevel2;
    }

    public SpaceLimitsLevel getPreviousValue() {
        return this.previousValue;
    }

    public SpaceLimitsLevel getNewValue() {
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
            MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails = (MemberSpaceLimitsChangePolicyDetails) obj;
            return (this.previousValue == memberSpaceLimitsChangePolicyDetails.previousValue || this.previousValue.equals(memberSpaceLimitsChangePolicyDetails.previousValue)) && (this.newValue == memberSpaceLimitsChangePolicyDetails.newValue || this.newValue.equals(memberSpaceLimitsChangePolicyDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberSpaceLimitsChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            SpaceLimitsLevel.Serializer.INSTANCE.serialize(memberSpaceLimitsChangePolicyDetails.previousValue, gVar);
            gVar.a("new_value");
            SpaceLimitsLevel.Serializer.INSTANCE.serialize(memberSpaceLimitsChangePolicyDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberSpaceLimitsChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SpaceLimitsLevel spaceLimitsLevelDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SpaceLimitsLevel spaceLimitsLevelDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        spaceLimitsLevelDeserialize2 = SpaceLimitsLevel.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        spaceLimitsLevelDeserialize = SpaceLimitsLevel.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (spaceLimitsLevelDeserialize2 == null) {
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (spaceLimitsLevelDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberSpaceLimitsChangePolicyDetails memberSpaceLimitsChangePolicyDetails = new MemberSpaceLimitsChangePolicyDetails(spaceLimitsLevelDeserialize2, spaceLimitsLevelDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberSpaceLimitsChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
