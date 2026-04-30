package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AddMember {
    protected final AccessLevel accessLevel;
    protected final MemberSelector member;

    public AddMember(MemberSelector memberSelector, AccessLevel accessLevel) {
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (accessLevel == null) {
            throw new IllegalArgumentException("Required value for 'accessLevel' is null");
        }
        this.accessLevel = accessLevel;
    }

    public AddMember(MemberSelector memberSelector) {
        this(memberSelector, AccessLevel.VIEWER);
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member, this.accessLevel});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddMember addMember = (AddMember) obj;
            return (this.member == addMember.member || this.member.equals(addMember.member)) && (this.accessLevel == addMember.accessLevel || this.accessLevel.equals(addMember.accessLevel));
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
            gVar.a("access_level");
            AccessLevel.Serializer.INSTANCE.serialize(addMember.accessLevel, gVar);
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
                AccessLevel accessLevelDeserialize = AccessLevel.VIEWER;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("member".equals(strD)) {
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("access_level".equals(strD)) {
                        accessLevelDeserialize = AccessLevel.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                AddMember addMember = new AddMember(memberSelectorDeserialize, accessLevelDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addMember;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
