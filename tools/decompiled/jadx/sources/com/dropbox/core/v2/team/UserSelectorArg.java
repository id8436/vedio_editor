package com.dropbox.core.v2.team;

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
public final class UserSelectorArg {
    private Tag _tag;
    private String emailValue;
    private String externalIdValue;
    private String teamMemberIdValue;

    public enum Tag {
        TEAM_MEMBER_ID,
        EXTERNAL_ID,
        EMAIL
    }

    private UserSelectorArg() {
    }

    private UserSelectorArg withTag(Tag tag) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg._tag = tag;
        return userSelectorArg;
    }

    private UserSelectorArg withTagAndTeamMemberId(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg._tag = tag;
        userSelectorArg.teamMemberIdValue = str;
        return userSelectorArg;
    }

    private UserSelectorArg withTagAndExternalId(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg._tag = tag;
        userSelectorArg.externalIdValue = str;
        return userSelectorArg;
    }

    private UserSelectorArg withTagAndEmail(Tag tag, String str) {
        UserSelectorArg userSelectorArg = new UserSelectorArg();
        userSelectorArg._tag = tag;
        userSelectorArg.emailValue = str;
        return userSelectorArg;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isTeamMemberId() {
        return this._tag == Tag.TEAM_MEMBER_ID;
    }

    public static UserSelectorArg teamMemberId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UserSelectorArg().withTagAndTeamMemberId(Tag.TEAM_MEMBER_ID, str);
    }

    public String getTeamMemberIdValue() {
        if (this._tag != Tag.TEAM_MEMBER_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag." + this._tag.name());
        }
        return this.teamMemberIdValue;
    }

    public boolean isExternalId() {
        return this._tag == Tag.EXTERNAL_ID;
    }

    public static UserSelectorArg externalId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 64) {
            throw new IllegalArgumentException("String is longer than 64");
        }
        return new UserSelectorArg().withTagAndExternalId(Tag.EXTERNAL_ID, str);
    }

    public String getExternalIdValue() {
        if (this._tag != Tag.EXTERNAL_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.EXTERNAL_ID, but was Tag." + this._tag.name());
        }
        return this.externalIdValue;
    }

    public boolean isEmail() {
        return this._tag == Tag.EMAIL;
    }

    public static UserSelectorArg email(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new UserSelectorArg().withTagAndEmail(Tag.EMAIL, str);
    }

    public String getEmailValue() {
        if (this._tag != Tag.EMAIL) {
            throw new IllegalStateException("Invalid tag: required Tag.EMAIL, but was Tag." + this._tag.name());
        }
        return this.emailValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.teamMemberIdValue, this.externalIdValue, this.emailValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UserSelectorArg)) {
            return false;
        }
        UserSelectorArg userSelectorArg = (UserSelectorArg) obj;
        if (this._tag != userSelectorArg._tag) {
            return false;
        }
        switch (this._tag) {
            case TEAM_MEMBER_ID:
                return this.teamMemberIdValue == userSelectorArg.teamMemberIdValue || this.teamMemberIdValue.equals(userSelectorArg.teamMemberIdValue);
            case EXTERNAL_ID:
                return this.externalIdValue == userSelectorArg.externalIdValue || this.externalIdValue.equals(userSelectorArg.externalIdValue);
            case EMAIL:
                return this.emailValue == userSelectorArg.emailValue || this.emailValue.equals(userSelectorArg.emailValue);
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

    class Serializer extends UnionSerializer<UserSelectorArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UserSelectorArg userSelectorArg, g gVar) throws IOException {
            switch (userSelectorArg.tag()) {
                case TEAM_MEMBER_ID:
                    gVar.e();
                    writeTag("team_member_id", gVar);
                    gVar.a("team_member_id");
                    StoneSerializers.string().serialize(userSelectorArg.teamMemberIdValue, gVar);
                    gVar.f();
                    return;
                case EXTERNAL_ID:
                    gVar.e();
                    writeTag("external_id", gVar);
                    gVar.a("external_id");
                    StoneSerializers.string().serialize(userSelectorArg.externalIdValue, gVar);
                    gVar.f();
                    return;
                case EMAIL:
                    gVar.e();
                    writeTag("email", gVar);
                    gVar.a("email");
                    StoneSerializers.string().serialize(userSelectorArg.emailValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + userSelectorArg.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UserSelectorArg deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UserSelectorArg userSelectorArgEmail;
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
            if ("team_member_id".equals(tag)) {
                expectField("team_member_id", kVar);
                userSelectorArgEmail = UserSelectorArg.teamMemberId(StoneSerializers.string().deserialize(kVar));
            } else if ("external_id".equals(tag)) {
                expectField("external_id", kVar);
                userSelectorArgEmail = UserSelectorArg.externalId(StoneSerializers.string().deserialize(kVar));
            } else if ("email".equals(tag)) {
                expectField("email", kVar);
                userSelectorArgEmail = UserSelectorArg.email(StoneSerializers.string().deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return userSelectorArgEmail;
        }
    }
}
