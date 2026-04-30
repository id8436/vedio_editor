package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharingFolderJoinPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharingChangeFolderJoinPolicyDetails {
    protected final SharingFolderJoinPolicy newValue;
    protected final SharingFolderJoinPolicy previousValue;

    public SharingChangeFolderJoinPolicyDetails(SharingFolderJoinPolicy sharingFolderJoinPolicy, SharingFolderJoinPolicy sharingFolderJoinPolicy2) {
        if (sharingFolderJoinPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharingFolderJoinPolicy;
        this.previousValue = sharingFolderJoinPolicy2;
    }

    public SharingChangeFolderJoinPolicyDetails(SharingFolderJoinPolicy sharingFolderJoinPolicy) {
        this(sharingFolderJoinPolicy, null);
    }

    public SharingFolderJoinPolicy getNewValue() {
        return this.newValue;
    }

    public SharingFolderJoinPolicy getPreviousValue() {
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
            SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails = (SharingChangeFolderJoinPolicyDetails) obj;
            if (this.newValue == sharingChangeFolderJoinPolicyDetails.newValue || this.newValue.equals(sharingChangeFolderJoinPolicyDetails.newValue)) {
                if (this.previousValue == sharingChangeFolderJoinPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharingChangeFolderJoinPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharingChangeFolderJoinPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            SharingFolderJoinPolicy.Serializer.INSTANCE.serialize(sharingChangeFolderJoinPolicyDetails.newValue, gVar);
            if (sharingChangeFolderJoinPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharingFolderJoinPolicy.Serializer.INSTANCE).serialize(sharingChangeFolderJoinPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharingChangeFolderJoinPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharingFolderJoinPolicy sharingFolderJoinPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharingFolderJoinPolicy sharingFolderJoinPolicyDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        sharingFolderJoinPolicyDeserialize = SharingFolderJoinPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        sharingFolderJoinPolicy = (SharingFolderJoinPolicy) StoneSerializers.nullable(SharingFolderJoinPolicy.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (sharingFolderJoinPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharingChangeFolderJoinPolicyDetails sharingChangeFolderJoinPolicyDetails = new SharingChangeFolderJoinPolicyDetails(sharingFolderJoinPolicyDeserialize, sharingFolderJoinPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharingChangeFolderJoinPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
