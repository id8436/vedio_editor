package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.PaperDocPermissionLevel;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AddMember {
    protected final MemberSelector member;
    protected final PaperDocPermissionLevel permissionLevel;

    public AddMember(MemberSelector memberSelector, PaperDocPermissionLevel paperDocPermissionLevel) {
        if (paperDocPermissionLevel == null) {
            throw new IllegalArgumentException("Required value for 'permissionLevel' is null");
        }
        this.permissionLevel = paperDocPermissionLevel;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
    }

    public AddMember(MemberSelector memberSelector) {
        this(memberSelector, PaperDocPermissionLevel.EDIT);
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public PaperDocPermissionLevel getPermissionLevel() {
        return this.permissionLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.permissionLevel, this.member});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddMember addMember = (AddMember) obj;
            return (this.member == addMember.member || this.member.equals(addMember.member)) && (this.permissionLevel == addMember.permissionLevel || this.permissionLevel.equals(addMember.permissionLevel));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AddMember> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddMember addMember, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(addMember.member, gVar);
            gVar.a("permission_level");
            PaperDocPermissionLevel.Serializer.INSTANCE.serialize(addMember.permissionLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddMember deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MemberSelector memberSelectorDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                PaperDocPermissionLevel paperDocPermissionLevelDeserialize = PaperDocPermissionLevel.EDIT;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("member".equals(strD)) {
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("permission_level".equals(strD)) {
                        paperDocPermissionLevelDeserialize = PaperDocPermissionLevel.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                AddMember addMember = new AddMember(memberSelectorDeserialize, paperDocPermissionLevelDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addMember;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
