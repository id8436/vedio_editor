package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperDocChangeSharingPolicyDetails {
    protected final String eventUuid;
    protected final String publicSharingPolicy;
    protected final String teamSharingPolicy;

    public PaperDocChangeSharingPolicyDetails(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        this.publicSharingPolicy = str2;
        this.teamSharingPolicy = str3;
    }

    public PaperDocChangeSharingPolicyDetails(String str) {
        this(str, null, null);
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getPublicSharingPolicy() {
        return this.publicSharingPolicy;
    }

    public String getTeamSharingPolicy() {
        return this.teamSharingPolicy;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected final String eventUuid;
        protected String publicSharingPolicy;
        protected String teamSharingPolicy;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'eventUuid' is null");
            }
            this.eventUuid = str;
            this.publicSharingPolicy = null;
            this.teamSharingPolicy = null;
        }

        public Builder withPublicSharingPolicy(String str) {
            this.publicSharingPolicy = str;
            return this;
        }

        public Builder withTeamSharingPolicy(String str) {
            this.teamSharingPolicy = str;
            return this;
        }

        public PaperDocChangeSharingPolicyDetails build() {
            return new PaperDocChangeSharingPolicyDetails(this.eventUuid, this.publicSharingPolicy, this.teamSharingPolicy);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.publicSharingPolicy, this.teamSharingPolicy});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails = (PaperDocChangeSharingPolicyDetails) obj;
            if ((this.eventUuid == paperDocChangeSharingPolicyDetails.eventUuid || this.eventUuid.equals(paperDocChangeSharingPolicyDetails.eventUuid)) && (this.publicSharingPolicy == paperDocChangeSharingPolicyDetails.publicSharingPolicy || (this.publicSharingPolicy != null && this.publicSharingPolicy.equals(paperDocChangeSharingPolicyDetails.publicSharingPolicy)))) {
                if (this.teamSharingPolicy == paperDocChangeSharingPolicyDetails.teamSharingPolicy) {
                    return true;
                }
                if (this.teamSharingPolicy != null && this.teamSharingPolicy.equals(paperDocChangeSharingPolicyDetails.teamSharingPolicy)) {
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

    class Serializer extends StructSerializer<PaperDocChangeSharingPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperDocChangeSharingPolicyDetails.eventUuid, gVar);
            if (paperDocChangeSharingPolicyDetails.publicSharingPolicy != null) {
                gVar.a("public_sharing_policy");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(paperDocChangeSharingPolicyDetails.publicSharingPolicy, gVar);
            }
            if (paperDocChangeSharingPolicyDetails.teamSharingPolicy != null) {
                gVar.a("team_sharing_policy");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(paperDocChangeSharingPolicyDetails.teamSharingPolicy, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocChangeSharingPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String strDeserialize;
            String str3 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str4 = null;
                String str5 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("event_uuid".equals(strD)) {
                        String str6 = str3;
                        str2 = str4;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str6;
                    } else if ("public_sharing_policy".equals(strD)) {
                        strDeserialize = str5;
                        str = str3;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else if ("team_sharing_policy".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str4;
                        strDeserialize = str5;
                    } else {
                        skipValue(kVar);
                        str = str3;
                        str2 = str4;
                        strDeserialize = str5;
                    }
                    str5 = strDeserialize;
                    str4 = str2;
                    str3 = str;
                }
                if (str5 == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                PaperDocChangeSharingPolicyDetails paperDocChangeSharingPolicyDetails = new PaperDocChangeSharingPolicyDetails(str5, str4, str3);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocChangeSharingPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
