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
class ChangeFileMemberAccessArgs {
    protected final AccessLevel accessLevel;
    protected final String file;
    protected final MemberSelector member;

    public ChangeFileMemberAccessArgs(String str, MemberSelector memberSelector, AccessLevel accessLevel) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.accessLevel = accessLevel;
    }

    public String getFile() {
        return this.file;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.member, this.accessLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ChangeFileMemberAccessArgs changeFileMemberAccessArgs = (ChangeFileMemberAccessArgs) obj;
            return (this.file == changeFileMemberAccessArgs.file || this.file.equals(changeFileMemberAccessArgs.file)) && (this.member == changeFileMemberAccessArgs.member || this.member.equals(changeFileMemberAccessArgs.member)) && (this.accessLevel == changeFileMemberAccessArgs.accessLevel || this.accessLevel.equals(changeFileMemberAccessArgs.accessLevel));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ChangeFileMemberAccessArgs> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ChangeFileMemberAccessArgs changeFileMemberAccessArgs, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(changeFileMemberAccessArgs.file, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(changeFileMemberAccessArgs.member, gVar);
            gVar.a("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(changeFileMemberAccessArgs.accessLevel, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ChangeFileMemberAccessArgs deserialize(k kVar, boolean z) throws IOException {
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
                ChangeFileMemberAccessArgs changeFileMemberAccessArgs = new ChangeFileMemberAccessArgs(str, memberSelector, accessLevel);
                if (!z) {
                    expectEndObject(kVar);
                }
                return changeFileMemberAccessArgs;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
