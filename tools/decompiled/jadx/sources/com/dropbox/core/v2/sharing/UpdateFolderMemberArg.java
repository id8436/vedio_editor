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
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class UpdateFolderMemberArg {
    protected final AccessLevel accessLevel;
    protected final MemberSelector member;
    protected final String sharedFolderId;

    public UpdateFolderMemberArg(String str, MemberSelector memberSelector, AccessLevel accessLevel) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.accessLevel = accessLevel;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.member, this.accessLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UpdateFolderMemberArg updateFolderMemberArg = (UpdateFolderMemberArg) obj;
            return (this.sharedFolderId == updateFolderMemberArg.sharedFolderId || this.sharedFolderId.equals(updateFolderMemberArg.sharedFolderId)) && (this.member == updateFolderMemberArg.member || this.member.equals(updateFolderMemberArg.member)) && (this.accessLevel == updateFolderMemberArg.accessLevel || this.accessLevel.equals(updateFolderMemberArg.accessLevel));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UpdateFolderMemberArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UpdateFolderMemberArg updateFolderMemberArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(updateFolderMemberArg.sharedFolderId, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(updateFolderMemberArg.member, gVar);
            gVar.a("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(updateFolderMemberArg.accessLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UpdateFolderMemberArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("shared_folder_id".equals(strD)) {
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
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (memberSelector == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                if (accessLevel == null) {
                    throw new j(kVar, "Required field \"access_level\" missing.");
                }
                UpdateFolderMemberArg updateFolderMemberArg = new UpdateFolderMemberArg(str, memberSelector, accessLevel);
                if (!z) {
                    expectEndObject(kVar);
                }
                return updateFolderMemberArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
