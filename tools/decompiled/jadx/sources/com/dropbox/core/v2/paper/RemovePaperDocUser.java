package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class RemovePaperDocUser extends RefPaperDoc {
    protected final MemberSelector member;

    public RemovePaperDocUser(String str, MemberSelector memberSelector) {
        super(str);
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RemovePaperDocUser removePaperDocUser = (RemovePaperDocUser) obj;
            return (this.docId == removePaperDocUser.docId || this.docId.equals(removePaperDocUser.docId)) && (this.member == removePaperDocUser.member || this.member.equals(removePaperDocUser.member));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RemovePaperDocUser> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RemovePaperDocUser removePaperDocUser, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(removePaperDocUser.docId, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(removePaperDocUser.member, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RemovePaperDocUser deserialize(k kVar, boolean z) throws IOException {
            String tag;
            MemberSelector memberSelectorDeserialize;
            String strDeserialize;
            MemberSelector memberSelector = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        MemberSelector memberSelector2 = memberSelector;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        memberSelectorDeserialize = memberSelector2;
                    } else if ("member".equals(strD)) {
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        memberSelectorDeserialize = memberSelector;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    memberSelector = memberSelectorDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (memberSelector == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                RemovePaperDocUser removePaperDocUser = new RemovePaperDocUser(str, memberSelector);
                if (!z) {
                    expectEndObject(kVar);
                }
                return removePaperDocUser;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
