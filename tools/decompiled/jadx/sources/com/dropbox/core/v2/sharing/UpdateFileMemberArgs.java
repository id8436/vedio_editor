package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class UpdateFileMemberArgs extends ChangeFileMemberAccessArgs {
    public UpdateFileMemberArgs(String str, MemberSelector memberSelector, AccessLevel accessLevel) {
        super(str, memberSelector, accessLevel);
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public String getFile() {
        return this.file;
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public MemberSelector getMember() {
        return this.member;
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UpdateFileMemberArgs updateFileMemberArgs = (UpdateFileMemberArgs) obj;
            return (this.file == updateFileMemberArgs.file || this.file.equals(updateFileMemberArgs.file)) && (this.member == updateFileMemberArgs.member || this.member.equals(updateFileMemberArgs.member)) && (this.accessLevel == updateFileMemberArgs.accessLevel || this.accessLevel.equals(updateFileMemberArgs.accessLevel));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.ChangeFileMemberAccessArgs
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UpdateFileMemberArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateFileMemberArgs updateFileMemberArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(updateFileMemberArgs.file, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(updateFileMemberArgs.member, gVar);
            gVar.a("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(updateFileMemberArgs.accessLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateFileMemberArgs deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AccessLevel accessLevelDeserialize;
            MemberSelector memberSelectorDeserialize;
            String strDeserialize;
            AccessLevel accessLevel = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberSelector memberSelector = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("file".equals(strD)) {
                        AccessLevel accessLevel2 = accessLevel;
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        accessLevelDeserialize = accessLevel2;
                    } else if ("member".equals(strD)) {
                        strDeserialize = str;
                        accessLevelDeserialize = accessLevel;
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("access_level".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        accessLevelDeserialize = accessLevel;
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    memberSelector = memberSelectorDeserialize;
                    accessLevel = accessLevelDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                if (memberSelector == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                if (accessLevel == null) {
                    throw new j(kVar, "Required field \"access_level\" missing.");
                }
                UpdateFileMemberArgs updateFileMemberArgs = new UpdateFileMemberArgs(str, memberSelector, accessLevel);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateFileMemberArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
