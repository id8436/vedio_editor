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
public final class InviteeInfo {
    public static final InviteeInfo OTHER = new InviteeInfo().withTag(Tag.OTHER);
    private Tag _tag;
    private String emailValue;

    public enum Tag {
        EMAIL,
        OTHER
    }

    private InviteeInfo() {
    }

    private InviteeInfo withTag(Tag tag) {
        InviteeInfo inviteeInfo = new InviteeInfo();
        inviteeInfo._tag = tag;
        return inviteeInfo;
    }

    private InviteeInfo withTagAndEmail(Tag tag, String str) {
        InviteeInfo inviteeInfo = new InviteeInfo();
        inviteeInfo._tag = tag;
        inviteeInfo.emailValue = str;
        return inviteeInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isEmail() {
        return this._tag == Tag.EMAIL;
    }

    public static InviteeInfo email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new InviteeInfo().withTagAndEmail(Tag.EMAIL, str);
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
        return Arrays.hashCode(new Object[]{this._tag, this.emailValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof InviteeInfo)) {
            return false;
        }
        InviteeInfo inviteeInfo = (InviteeInfo) obj;
        if (this._tag != inviteeInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case EMAIL:
                return this.emailValue == inviteeInfo.emailValue || this.emailValue.equals(inviteeInfo.emailValue);
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

    public class Serializer extends UnionSerializer<InviteeInfo> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InviteeInfo inviteeInfo, g gVar) throws IOException {
            switch (inviteeInfo.tag()) {
                case EMAIL:
                    gVar.e();
                    writeTag("email", gVar);
                    gVar.a("email");
                    StoneSerializers.string().serialize(inviteeInfo.emailValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public InviteeInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            InviteeInfo inviteeInfoEmail;
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
            if ("email".equals(tag)) {
                expectField("email", kVar);
                inviteeInfoEmail = InviteeInfo.email(StoneSerializers.string().deserialize(kVar));
            } else {
                inviteeInfoEmail = InviteeInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return inviteeInfoEmail;
        }
    }
}
