package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkPassword {
    private Tag _tag;
    private String setPasswordValue;
    public static final LinkPassword REMOVE_PASSWORD = new LinkPassword().withTag(Tag.REMOVE_PASSWORD);
    public static final LinkPassword OTHER = new LinkPassword().withTag(Tag.OTHER);

    public enum Tag {
        REMOVE_PASSWORD,
        SET_PASSWORD,
        OTHER
    }

    private LinkPassword() {
    }

    private LinkPassword withTag(Tag tag) {
        LinkPassword linkPassword = new LinkPassword();
        linkPassword._tag = tag;
        return linkPassword;
    }

    private LinkPassword withTagAndSetPassword(Tag tag, String str) {
        LinkPassword linkPassword = new LinkPassword();
        linkPassword._tag = tag;
        linkPassword.setPasswordValue = str;
        return linkPassword;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isRemovePassword() {
        return this._tag == Tag.REMOVE_PASSWORD;
    }

    public boolean isSetPassword() {
        return this._tag == Tag.SET_PASSWORD;
    }

    public static LinkPassword setPassword(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new LinkPassword().withTagAndSetPassword(Tag.SET_PASSWORD, str);
    }

    public String getSetPasswordValue() {
        if (this._tag != Tag.SET_PASSWORD) {
            throw new IllegalStateException("Invalid tag: required Tag.SET_PASSWORD, but was Tag." + this._tag.name());
        }
        return this.setPasswordValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.setPasswordValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LinkPassword)) {
            return false;
        }
        LinkPassword linkPassword = (LinkPassword) obj;
        if (this._tag != linkPassword._tag) {
            return false;
        }
        switch (this._tag) {
            case REMOVE_PASSWORD:
                return true;
            case SET_PASSWORD:
                return this.setPasswordValue == linkPassword.setPasswordValue || this.setPasswordValue.equals(linkPassword.setPasswordValue);
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

    class Serializer extends UnionSerializer<LinkPassword> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LinkPassword linkPassword, g gVar) throws IOException {
            switch (linkPassword.tag()) {
                case REMOVE_PASSWORD:
                    gVar.b("remove_password");
                    break;
                case SET_PASSWORD:
                    gVar.e();
                    writeTag("set_password", gVar);
                    gVar.a("set_password");
                    StoneSerializers.string().serialize(linkPassword.setPasswordValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public LinkPassword deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            LinkPassword password;
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
            if ("remove_password".equals(tag)) {
                password = LinkPassword.REMOVE_PASSWORD;
            } else if ("set_password".equals(tag)) {
                expectField("set_password", kVar);
                password = LinkPassword.setPassword(StoneSerializers.string().deserialize(kVar));
            } else {
                password = LinkPassword.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return password;
        }
    }
}
