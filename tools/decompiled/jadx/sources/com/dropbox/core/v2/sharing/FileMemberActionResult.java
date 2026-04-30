package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FileMemberActionIndividualResult;
import com.dropbox.core.v2.sharing.MemberSelector;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FileMemberActionResult {
    protected final MemberSelector member;
    protected final FileMemberActionIndividualResult result;

    public FileMemberActionResult(MemberSelector memberSelector, FileMemberActionIndividualResult fileMemberActionIndividualResult) {
        if (memberSelector == null) {
            throw new IllegalArgumentException("Required value for 'member' is null");
        }
        this.member = memberSelector;
        if (fileMemberActionIndividualResult == null) {
            throw new IllegalArgumentException("Required value for 'result' is null");
        }
        this.result = fileMemberActionIndividualResult;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public FileMemberActionIndividualResult getResult() {
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
            FileMemberActionResult fileMemberActionResult = (FileMemberActionResult) obj;
            return (this.member == fileMemberActionResult.member || this.member.equals(fileMemberActionResult.member)) && (this.result == fileMemberActionResult.result || this.result.equals(fileMemberActionResult.result));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileMemberActionResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileMemberActionResult fileMemberActionResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(fileMemberActionResult.member, gVar);
            gVar.a("result");
            FileMemberActionIndividualResult.Serializer.INSTANCE.serialize(fileMemberActionResult.result, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileMemberActionResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FileMemberActionIndividualResult fileMemberActionIndividualResultDeserialize = null;
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
                        fileMemberActionIndividualResultDeserialize = FileMemberActionIndividualResult.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (memberSelectorDeserialize == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                if (fileMemberActionIndividualResultDeserialize == null) {
                    throw new j(kVar, "Required field \"result\" missing.");
                }
                FileMemberActionResult fileMemberActionResult = new FileMemberActionResult(memberSelectorDeserialize, fileMemberActionIndividualResultDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileMemberActionResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
