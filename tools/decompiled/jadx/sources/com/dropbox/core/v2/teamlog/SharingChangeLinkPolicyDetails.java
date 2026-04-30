package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharingLinkPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharingChangeLinkPolicyDetails {
    protected final SharingLinkPolicy newValue;
    protected final SharingLinkPolicy previousValue;

    public SharingChangeLinkPolicyDetails(SharingLinkPolicy sharingLinkPolicy, SharingLinkPolicy sharingLinkPolicy2) {
        if (sharingLinkPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharingLinkPolicy;
        this.previousValue = sharingLinkPolicy2;
    }

    public SharingChangeLinkPolicyDetails(SharingLinkPolicy sharingLinkPolicy) {
        this(sharingLinkPolicy, null);
    }

    public SharingLinkPolicy getNewValue() {
        return this.newValue;
    }

    public SharingLinkPolicy getPreviousValue() {
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
            SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails = (SharingChangeLinkPolicyDetails) obj;
            if (this.newValue == sharingChangeLinkPolicyDetails.newValue || this.newValue.equals(sharingChangeLinkPolicyDetails.newValue)) {
                if (this.previousValue == sharingChangeLinkPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharingChangeLinkPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharingChangeLinkPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            SharingLinkPolicy.Serializer.INSTANCE.serialize(sharingChangeLinkPolicyDetails.newValue, gVar);
            if (sharingChangeLinkPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharingLinkPolicy.Serializer.INSTANCE).serialize(sharingChangeLinkPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharingChangeLinkPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharingLinkPolicy sharingLinkPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharingLinkPolicy sharingLinkPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        sharingLinkPolicyDeserialize = SharingLinkPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        sharingLinkPolicy = (SharingLinkPolicy) StoneSerializers.nullable(SharingLinkPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (sharingLinkPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharingChangeLinkPolicyDetails sharingChangeLinkPolicyDetails = new SharingChangeLinkPolicyDetails(sharingLinkPolicyDeserialize, sharingLinkPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharingChangeLinkPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
