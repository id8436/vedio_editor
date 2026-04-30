package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SpaceLimitsStatus;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberSpaceLimitsChangeStatusDetails {
    protected final SpaceLimitsStatus newValue;
    protected final SpaceLimitsStatus previousValue;

    public MemberSpaceLimitsChangeStatusDetails(SpaceLimitsStatus spaceLimitsStatus, SpaceLimitsStatus spaceLimitsStatus2) {
        if (spaceLimitsStatus == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = spaceLimitsStatus;
        if (spaceLimitsStatus2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = spaceLimitsStatus2;
    }

    public SpaceLimitsStatus getPreviousValue() {
        return this.previousValue;
    }

    public SpaceLimitsStatus getNewValue() {
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
            MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails = (MemberSpaceLimitsChangeStatusDetails) obj;
            return (this.previousValue == memberSpaceLimitsChangeStatusDetails.previousValue || this.previousValue.equals(memberSpaceLimitsChangeStatusDetails.previousValue)) && (this.newValue == memberSpaceLimitsChangeStatusDetails.newValue || this.newValue.equals(memberSpaceLimitsChangeStatusDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberSpaceLimitsChangeStatusDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            SpaceLimitsStatus.Serializer.INSTANCE.serialize(memberSpaceLimitsChangeStatusDetails.previousValue, gVar);
            gVar.a("new_value");
            SpaceLimitsStatus.Serializer.INSTANCE.serialize(memberSpaceLimitsChangeStatusDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberSpaceLimitsChangeStatusDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SpaceLimitsStatus spaceLimitsStatusDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SpaceLimitsStatus spaceLimitsStatusDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        spaceLimitsStatusDeserialize2 = SpaceLimitsStatus.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        spaceLimitsStatusDeserialize = SpaceLimitsStatus.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (spaceLimitsStatusDeserialize2 == null) {
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (spaceLimitsStatusDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                MemberSpaceLimitsChangeStatusDetails memberSpaceLimitsChangeStatusDetails = new MemberSpaceLimitsChangeStatusDetails(spaceLimitsStatusDeserialize2, spaceLimitsStatusDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberSpaceLimitsChangeStatusDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
