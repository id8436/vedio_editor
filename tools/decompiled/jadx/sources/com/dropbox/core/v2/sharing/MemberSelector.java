package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class MemberSelector {
    public static final MemberSelector OTHER = new MemberSelector().withTag(Tag.OTHER);
    private Tag _tag;
    private String dropboxIdValue;
    private String emailValue;

    public enum Tag {
        DROPBOX_ID,
        EMAIL,
        OTHER
    }

    private MemberSelector() {
    }

    private MemberSelector withTag(Tag tag) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector._tag = tag;
        return memberSelector;
    }

    private MemberSelector withTagAndDropboxId(Tag tag, String str) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector._tag = tag;
        memberSelector.dropboxIdValue = str;
        return memberSelector;
    }

    private MemberSelector withTagAndEmail(Tag tag, String str) {
        MemberSelector memberSelector = new MemberSelector();
        memberSelector._tag = tag;
        memberSelector.emailValue = str;
        return memberSelector;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isDropboxId() {
        return this._tag == Tag.DROPBOX_ID;
    }

    public static MemberSelector dropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new MemberSelector().withTagAndDropboxId(Tag.DROPBOX_ID, str);
    }

    public String getDropboxIdValue() {
        if (this._tag != Tag.DROPBOX_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.DROPBOX_ID, but was Tag." + this._tag.name());
        }
        return this.dropboxIdValue;
    }

    public boolean isEmail() {
        return this._tag == Tag.EMAIL;
    }

    public static MemberSelector email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new MemberSelector().withTagAndEmail(Tag.EMAIL, str);
    }

    public String getEmailValue() {
        if (this._tag != Tag.EMAIL) {
            throw new IllegalStateException("Invalid tag: required Tag.EMAIL, but was Tag." + this._tag.name());
        }
        return this.emailValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.dropboxIdValue, this.emailValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MemberSelector)) {
            return false;
        }
        MemberSelector memberSelector = (MemberSelector) obj;
        if (this._tag != memberSelector._tag) {
            return false;
        }
        switch (this._tag) {
            case DROPBOX_ID:
                return this.dropboxIdValue == memberSelector.dropboxIdValue || this.dropboxIdValue.equals(memberSelector.dropboxIdValue);
            case EMAIL:
                return this.emailValue == memberSelector.emailValue || this.emailValue.equals(memberSelector.emailValue);
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends UnionSerializer<MemberSelector> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MemberSelector memberSelector, g gVar) throws IOException {
            switch (memberSelector.tag()) {
                case DROPBOX_ID:
                    gVar.e();
                    writeTag("dropbox_id", gVar);
                    gVar.a("dropbox_id");
                    StoneSerializers.string().serialize(memberSelector.dropboxIdValue, gVar);
                    gVar.f();
                    break;
                case EMAIL:
                    gVar.e();
                    writeTag("email", gVar);
                    gVar.a("email");
                    StoneSerializers.string().serialize(memberSelector.emailValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MemberSelector deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MemberSelector memberSelectorEmail;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("dropbox_id".equals(tag)) {
                expectField("dropbox_id", kVar);
                memberSelectorEmail = MemberSelector.dropboxId(StoneSerializers.string().deserialize(kVar));
            } else if ("email".equals(tag)) {
                expectField("email", kVar);
                memberSelectorEmail = MemberSelector.email(StoneSerializers.string().deserialize(kVar));
            } else {
                memberSelectorEmail = MemberSelector.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return memberSelectorEmail;
        }
    }
}
