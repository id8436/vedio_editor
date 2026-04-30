package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.v2.sharing.InviteeInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class InviteeInfoWithPermissionLevel {
    protected final InviteeInfo invitee;
    protected final PaperDocPermissionLevel permissionLevel;

    public InviteeInfoWithPermissionLevel(InviteeInfo inviteeInfo, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (inviteeInfo == null) {
            throw new IllegalArgumentException("Required value for 'invitee' is null");
        }
        this.invitee = inviteeInfo;
        if (paperDocPermissionLevel == null) {
            throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
        }
        this.permissionLevel = paperDocPermissionLevel;
    }

    public InviteeInfo getInvitee() {
        return this.invitee;
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitee, this.permissionLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel = (InviteeInfoWithPermissionLevel) obj;
            return (this.invitee == inviteeInfoWithPermissionLevel.invitee || this.invitee.equals(inviteeInfoWithPermissionLevel.invitee)) && (this.permissionLevel == inviteeInfoWithPermissionLevel.permissionLevel || this.permissionLevel.equals(inviteeInfoWithPermissionLevel.permissionLevel));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<InviteeInfoWithPermissionLevel> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("invitee");
            InviteeInfo.Serializer.INSTANCE.serialize(inviteeInfoWithPermissionLevel.invitee, gVar);
            gVar.a("permission_level");
            PaperDocPermissionLevel.Serializer.INSTANCE.serialize(inviteeInfoWithPermissionLevel.permissionLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public InviteeInfoWithPermissionLevel deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperDocPermissionLevel paperDocPermissionLevelDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                InviteeInfo inviteeInfoDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("invitee".equals(strD)) {
                        inviteeInfoDeserialize = InviteeInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("permission_level".equals(strD)) {
                        paperDocPermissionLevelDeserialize = PaperDocPermissionLevel.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (inviteeInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"invitee\" missing.");
                }
                if (paperDocPermissionLevelDeserialize == null) {
                    throw new j(kVar, "Required field \"permission_level\" missing.");
                }
                InviteeInfoWithPermissionLevel inviteeInfoWithPermissionLevel = new InviteeInfoWithPermissionLevel(inviteeInfoDeserialize, paperDocPermissionLevelDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return inviteeInfoWithPermissionLevel;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
