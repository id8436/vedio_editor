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
public class RevokeDesktopClientArg extends DeviceSessionArg {
    protected final boolean deleteOnUnlink;

    public RevokeDesktopClientArg(String str, String str2, boolean z) {
        super(str, str2);
        this.deleteOnUnlink = z;
    }

    public RevokeDesktopClientArg(String str, String str2) {
        this(str, str2, false);
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public String getSessionId() {
        return this.sessionId;
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public boolean getDeleteOnUnlink() {
        return this.deleteOnUnlink;
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.deleteOnUnlink)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RevokeDesktopClientArg revokeDesktopClientArg = (RevokeDesktopClientArg) obj;
            return (this.sessionId == revokeDesktopClientArg.sessionId || this.sessionId.equals(revokeDesktopClientArg.sessionId)) && (this.teamMemberId == revokeDesktopClientArg.teamMemberId || this.teamMemberId.equals(revokeDesktopClientArg.teamMemberId)) && this.deleteOnUnlink == revokeDesktopClientArg.deleteOnUnlink;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.DeviceSessionArg
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RevokeDesktopClientArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeDesktopClientArg revokeDesktopClientArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("session_id");
            StoneSerializers.string().serialize(revokeDesktopClientArg.sessionId, gVar);
            gVar.a("team_member_id");
            StoneSerializers.string().serialize(revokeDesktopClientArg.teamMemberId, gVar);
            gVar.a("delete_on_unlink");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(revokeDesktopClientArg.deleteOnUnlink), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeDesktopClientArg deserialize(k kVar, boolean z) throws IOException {
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
                Boolean bool = false;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("session_id".equals(strD)) {
                        Boolean bool2 = bool;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("team_member_id".equals(strD)) {
                        strDeserialize2 = str2;
                        boolDeserialize = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("delete_on_unlink".equals(strD)) {
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
                    throw new j(kVar, "Required field \"session_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"team_member_id\" missing.");
                }
                RevokeDesktopClientArg revokeDesktopClientArg = new RevokeDesktopClientArg(str2, str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeDesktopClientArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
