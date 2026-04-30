package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class RevokeLinkedApiAppArg {
    protected final String appId;
    protected final boolean keepAppFolder;
    protected final String teamMemberId;

    public RevokeLinkedApiAppArg(String str, String str2, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'appId' is null");
        }
        this.appId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str2;
        this.keepAppFolder = z;
    }

    public RevokeLinkedApiAppArg(String str, String str2) {
        this(str, str2, true);
    }

    public String getAppId() {
        return this.appId;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public boolean getKeepAppFolder() {
        return this.keepAppFolder;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.teamMemberId, Boolean.valueOf(this.keepAppFolder)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RevokeLinkedApiAppArg revokeLinkedApiAppArg = (RevokeLinkedApiAppArg) obj;
            return (this.appId == revokeLinkedApiAppArg.appId || this.appId.equals(revokeLinkedApiAppArg.appId)) && (this.teamMemberId == revokeLinkedApiAppArg.teamMemberId || this.teamMemberId.equals(revokeLinkedApiAppArg.teamMemberId)) && this.keepAppFolder == revokeLinkedApiAppArg.keepAppFolder;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RevokeLinkedApiAppArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeLinkedApiAppArg revokeLinkedApiAppArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("app_id");
            StoneSerializers.string().serialize(revokeLinkedApiAppArg.appId, gVar);
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(revokeLinkedApiAppArg.teamMemberId, gVar);
            gVar.a("keep_app_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(revokeLinkedApiAppArg.keepAppFolder), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeLinkedApiAppArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = true;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("app_id".equals(strD)) {
                        Boolean bool2 = bool;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("team_member_id".equals(strD)) {
                        strDeserialize2 = str2;
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("keep_app_folder".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    bool = boolDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"app_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                RevokeLinkedApiAppArg revokeLinkedApiAppArg = new RevokeLinkedApiAppArg(str2, str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeLinkedApiAppArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
