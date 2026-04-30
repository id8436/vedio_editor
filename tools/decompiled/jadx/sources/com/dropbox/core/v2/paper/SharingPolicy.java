package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.SharingPublicPolicyType;
import com.dropbox.core.v2.paper.SharingTeamPolicyType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharingPolicy {
    protected final SharingPublicPolicyType publicSharingPolicy;
    protected final SharingTeamPolicyType teamSharingPolicy;

    public SharingPolicy(SharingPublicPolicyType sharingPublicPolicyType, SharingTeamPolicyType sharingTeamPolicyType) {
        this.publicSharingPolicy = sharingPublicPolicyType;
        this.teamSharingPolicy = sharingTeamPolicyType;
    }

    public SharingPolicy() {
        this(null, null);
    }

    public SharingPublicPolicyType getPublicSharingPolicy() {
        return this.publicSharingPolicy;
    }

    public SharingTeamPolicyType getTeamSharingPolicy() {
        return this.teamSharingPolicy;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public class Builder {
        protected SharingPublicPolicyType publicSharingPolicy = null;
        protected SharingTeamPolicyType teamSharingPolicy = null;

        protected Builder() {
        }

        public Builder withPublicSharingPolicy(SharingPublicPolicyType sharingPublicPolicyType) {
            this.publicSharingPolicy = sharingPublicPolicyType;
            return this;
        }

        public Builder withTeamSharingPolicy(SharingTeamPolicyType sharingTeamPolicyType) {
            this.teamSharingPolicy = sharingTeamPolicyType;
            return this;
        }

        public SharingPolicy build() {
            return new SharingPolicy(this.publicSharingPolicy, this.teamSharingPolicy);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.publicSharingPolicy, this.teamSharingPolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharingPolicy sharingPolicy = (SharingPolicy) obj;
            if (this.publicSharingPolicy == sharingPolicy.publicSharingPolicy || (this.publicSharingPolicy != null && this.publicSharingPolicy.equals(sharingPolicy.publicSharingPolicy))) {
                if (this.teamSharingPolicy == sharingPolicy.teamSharingPolicy) {
                    return true;
                }
                if (this.teamSharingPolicy != null && this.teamSharingPolicy.equals(sharingPolicy.teamSharingPolicy)) {
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

    class Serializer extends StructSerializer<SharingPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharingPolicy sharingPolicy, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (sharingPolicy.publicSharingPolicy != null) {
                gVar.a("public_sharing_policy");
                StoneSerializers.nullable(SharingPublicPolicyType.Serializer.INSTANCE).serialize(sharingPolicy.publicSharingPolicy, gVar);
            }
            if (sharingPolicy.teamSharingPolicy != null) {
                gVar.a("team_sharing_policy");
                StoneSerializers.nullable(SharingTeamPolicyType.Serializer.INSTANCE).serialize(sharingPolicy.teamSharingPolicy, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharingPolicy deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharingTeamPolicyType sharingTeamPolicyType;
            SharingPublicPolicyType sharingPublicPolicyType;
            SharingTeamPolicyType sharingTeamPolicyType2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                SharingPublicPolicyType sharingPublicPolicyType2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("public_sharing_policy".equals(strD)) {
                        SharingTeamPolicyType sharingTeamPolicyType3 = sharingTeamPolicyType2;
                        sharingPublicPolicyType = (SharingPublicPolicyType) StoneSerializers.nullable(SharingPublicPolicyType.Serializer.INSTANCE).deserialize(kVar);
                        sharingTeamPolicyType = sharingTeamPolicyType3;
                    } else if ("team_sharing_policy".equals(strD)) {
                        sharingTeamPolicyType = (SharingTeamPolicyType) StoneSerializers.nullable(SharingTeamPolicyType.Serializer.INSTANCE).deserialize(kVar);
                        sharingPublicPolicyType = sharingPublicPolicyType2;
                    } else {
                        skipValue(kVar);
                        sharingTeamPolicyType = sharingTeamPolicyType2;
                        sharingPublicPolicyType = sharingPublicPolicyType2;
                    }
                    sharingPublicPolicyType2 = sharingPublicPolicyType;
                    sharingTeamPolicyType2 = sharingTeamPolicyType;
                }
                SharingPolicy sharingPolicy = new SharingPolicy(sharingPublicPolicyType2, sharingTeamPolicyType2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharingPolicy;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
