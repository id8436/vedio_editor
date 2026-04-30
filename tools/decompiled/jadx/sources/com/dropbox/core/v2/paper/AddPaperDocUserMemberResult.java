package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.AddPaperDocUserResult;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class AddPaperDocUserMemberResult {
    protected final MemberSelector member;
    protected final AddPaperDocUserResult result;

    public AddPaperDocUserMemberResult(MemberSelector memberSelector, AddPaperDocUserResult addPaperDocUserResult) {
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (addPaperDocUserResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = addPaperDocUserResult;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public AddPaperDocUserResult getResult() {
        return this.result;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.member, this.result});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AddPaperDocUserMemberResult addPaperDocUserMemberResult = (AddPaperDocUserMemberResult) obj;
            return (this.member == addPaperDocUserMemberResult.member || this.member.equals(addPaperDocUserMemberResult.member)) && (this.result == addPaperDocUserMemberResult.result || this.result.equals(addPaperDocUserMemberResult.result));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AddPaperDocUserMemberResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AddPaperDocUserMemberResult addPaperDocUserMemberResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(addPaperDocUserMemberResult.member, gVar);
            gVar.a("result");
            AddPaperDocUserResult.Serializer.INSTANCE.serialize(addPaperDocUserMemberResult.result, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AddPaperDocUserMemberResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            AddPaperDocUserResult addPaperDocUserResultDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                MemberSelector memberSelectorDeserialize = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("member".equals(strD)) {
                        memberSelectorDeserialize = MemberSelector.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("result".equals(strD)) {
                        addPaperDocUserResultDeserialize = AddPaperDocUserResult.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                if (addPaperDocUserResultDeserialize == null) {
                    throw new j(kVar, "Required field \"result\" missing.");
                }
                AddPaperDocUserMemberResult addPaperDocUserMemberResult = new AddPaperDocUserMemberResult(memberSelectorDeserialize, addPaperDocUserResultDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return addPaperDocUserMemberResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
