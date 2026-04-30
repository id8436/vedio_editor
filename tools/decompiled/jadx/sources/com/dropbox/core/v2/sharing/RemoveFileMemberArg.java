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
class RemoveFileMemberArg {
    protected final String file;
    protected final MemberSelector member;

    public RemoveFileMemberArg(String str, MemberSelector memberSelector) {
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
    }

    public String getFile() {
        return this.file;
    }

    public MemberSelector getMember() {
        return this.member;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file, this.member});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RemoveFileMemberArg removeFileMemberArg = (RemoveFileMemberArg) obj;
            return (this.file == removeFileMemberArg.file || this.file.equals(removeFileMemberArg.file)) && (this.member == removeFileMemberArg.member || this.member.equals(removeFileMemberArg.member));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RemoveFileMemberArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RemoveFileMemberArg removeFileMemberArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(removeFileMemberArg.file, gVar);
            gVar.a("member");
            MemberSelector.Serializer.INSTANCE.serialize(removeFileMemberArg.member, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RemoveFileMemberArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("file".equals(strD)) {
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
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                if (memberSelector == null) {
                    throw new j(kVar, "Required field \"member\" missing.");
                }
                RemoveFileMemberArg removeFileMemberArg = new RemoveFileMemberArg(str, memberSelector);
                if (!z) {
                    expectEndObject(kVar);
                }
                return removeFileMemberArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
