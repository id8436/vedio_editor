package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class RemoveFolderMemberArg {
    protected final boolean leaveACopy;
    protected final MemberSelector member;
    protected final String sharedFolderId;

    public RemoveFolderMemberArg(String str, MemberSelector memberSelector, boolean z) {
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
        this.leaveACopy = z;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public boolean getLeaveACopy() {
        return this.leaveACopy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.member, Boolean.valueOf(this.leaveACopy)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RemoveFolderMemberArg removeFolderMemberArg = (RemoveFolderMemberArg) obj;
            return (this.sharedFolderId == removeFolderMemberArg.sharedFolderId || this.sharedFolderId.equals(removeFolderMemberArg.sharedFolderId)) && (this.member == removeFolderMemberArg.member || this.member.equals(removeFolderMemberArg.member)) && this.leaveACopy == removeFolderMemberArg.leaveACopy;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RemoveFolderMemberArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RemoveFolderMemberArg removeFolderMemberArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(removeFolderMemberArg.sharedFolderId, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(removeFolderMemberArg.member, gVar);
            gVar.a("leave_a_copy");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(removeFolderMemberArg.leaveACopy), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RemoveFolderMemberArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            MemberSelector memberSelectorDeserialize;
            String strDeserialize;
            Boolean bool = null;
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
                        Boolean bool2 = bool;
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("member".equals(strD)) {
                        strDeserialize = str;
                        boolDeserialize = bool;
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("leave_a_copy".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    memberSelector = memberSelectorDeserialize;
                    bool = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (memberSelector == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"leave_a_copy\" missing.");
                }
                RemoveFolderMemberArg removeFolderMemberArg = new RemoveFolderMemberArg(str, memberSelector, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return removeFolderMemberArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
