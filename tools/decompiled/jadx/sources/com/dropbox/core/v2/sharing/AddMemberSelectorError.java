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
public final class AddMemberSelectorError {
    public static final AddMemberSelectorError AUTOMATIC_GROUP = new AddMemberSelectorError().withTag(Tag.AUTOMATIC_GROUP);
    public static final AddMemberSelectorError GROUP_DELETED = new AddMemberSelectorError().withTag(Tag.GROUP_DELETED);
    public static final AddMemberSelectorError GROUP_NOT_ON_TEAM = new AddMemberSelectorError().withTag(Tag.GROUP_NOT_ON_TEAM);
    public static final AddMemberSelectorError OTHER = new AddMemberSelectorError().withTag(Tag.OTHER);
    private Tag _tag;
    private String invalidDropboxIdValue;
    private String invalidEmailValue;
    private String unverifiedDropboxIdValue;

    public enum Tag {
        AUTOMATIC_GROUP,
        INVALID_DROPBOX_ID,
        INVALID_EMAIL,
        UNVERIFIED_DROPBOX_ID,
        GROUP_DELETED,
        GROUP_NOT_ON_TEAM,
        OTHER
    }

    private AddMemberSelectorError() {
    }

    private AddMemberSelectorError withTag(Tag tag) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError._tag = tag;
        return addMemberSelectorError;
    }

    private AddMemberSelectorError withTagAndInvalidDropboxId(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError._tag = tag;
        addMemberSelectorError.invalidDropboxIdValue = str;
        return addMemberSelectorError;
    }

    private AddMemberSelectorError withTagAndInvalidEmail(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError._tag = tag;
        addMemberSelectorError.invalidEmailValue = str;
        return addMemberSelectorError;
    }

    private AddMemberSelectorError withTagAndUnverifiedDropboxId(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError._tag = tag;
        addMemberSelectorError.unverifiedDropboxIdValue = str;
        return addMemberSelectorError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAutomaticGroup() {
        return this._tag == Tag.AUTOMATIC_GROUP;
    }

    public boolean isInvalidDropboxId() {
        return this._tag == Tag.INVALID_DROPBOX_ID;
    }

    public static AddMemberSelectorError invalidDropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new AddMemberSelectorError().withTagAndInvalidDropboxId(Tag.INVALID_DROPBOX_ID, str);
    }

    public String getInvalidDropboxIdValue() {
        if (this._tag != Tag.INVALID_DROPBOX_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag." + this._tag.name());
        }
        return this.invalidDropboxIdValue;
    }

    public boolean isInvalidEmail() {
        return this._tag == Tag.INVALID_EMAIL;
    }

    public static AddMemberSelectorError invalidEmail(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$", str)) {
            throw new IllegalArgumentException("String does not match pattern");
        }
        return new AddMemberSelectorError().withTagAndInvalidEmail(Tag.INVALID_EMAIL, str);
    }

    public String getInvalidEmailValue() {
        if (this._tag != Tag.INVALID_EMAIL) {
            throw new IllegalStateException("Invalid tag: required Tag.INVALID_EMAIL, but was Tag." + this._tag.name());
        }
        return this.invalidEmailValue;
    }

    public boolean isUnverifiedDropboxId() {
        return this._tag == Tag.UNVERIFIED_DROPBOX_ID;
    }

    public static AddMemberSelectorError unverifiedDropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new AddMemberSelectorError().withTagAndUnverifiedDropboxId(Tag.UNVERIFIED_DROPBOX_ID, str);
    }

    public String getUnverifiedDropboxIdValue() {
        if (this._tag != Tag.UNVERIFIED_DROPBOX_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag." + this._tag.name());
        }
        return this.unverifiedDropboxIdValue;
    }

    public boolean isGroupDeleted() {
        return this._tag == Tag.GROUP_DELETED;
    }

    public boolean isGroupNotOnTeam() {
        return this._tag == Tag.GROUP_NOT_ON_TEAM;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.invalidDropboxIdValue, this.invalidEmailValue, this.unverifiedDropboxIdValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddMemberSelectorError)) {
            return false;
        }
        AddMemberSelectorError addMemberSelectorError = (AddMemberSelectorError) obj;
        if (this._tag != addMemberSelectorError._tag) {
            return false;
        }
        switch (this._tag) {
            case AUTOMATIC_GROUP:
                return true;
            case INVALID_DROPBOX_ID:
                return this.invalidDropboxIdValue == addMemberSelectorError.invalidDropboxIdValue || this.invalidDropboxIdValue.equals(addMemberSelectorError.invalidDropboxIdValue);
            case INVALID_EMAIL:
                return this.invalidEmailValue == addMemberSelectorError.invalidEmailValue || this.invalidEmailValue.equals(addMemberSelectorError.invalidEmailValue);
            case UNVERIFIED_DROPBOX_ID:
                return this.unverifiedDropboxIdValue == addMemberSelectorError.unverifiedDropboxIdValue || this.unverifiedDropboxIdValue.equals(addMemberSelectorError.unverifiedDropboxIdValue);
            case GROUP_DELETED:
                return true;
            case GROUP_NOT_ON_TEAM:
                return true;
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

    class Serializer extends UnionSerializer<AddMemberSelectorError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddMemberSelectorError addMemberSelectorError, g gVar) throws IOException {
            switch (addMemberSelectorError.tag()) {
                case AUTOMATIC_GROUP:
                    gVar.b("automatic_group");
                    break;
                case INVALID_DROPBOX_ID:
                    gVar.e();
                    writeTag("invalid_dropbox_id", gVar);
                    gVar.a("invalid_dropbox_id");
                    StoneSerializers.string().serialize(addMemberSelectorError.invalidDropboxIdValue, gVar);
                    gVar.f();
                    break;
                case INVALID_EMAIL:
                    gVar.e();
                    writeTag("invalid_email", gVar);
                    gVar.a("invalid_email");
                    StoneSerializers.string().serialize(addMemberSelectorError.invalidEmailValue, gVar);
                    gVar.f();
                    break;
                case UNVERIFIED_DROPBOX_ID:
                    gVar.e();
                    writeTag("unverified_dropbox_id", gVar);
                    gVar.a("unverified_dropbox_id");
                    StoneSerializers.string().serialize(addMemberSelectorError.unverifiedDropboxIdValue, gVar);
                    gVar.f();
                    break;
                case GROUP_DELETED:
                    gVar.b("group_deleted");
                    break;
                case GROUP_NOT_ON_TEAM:
                    gVar.b("group_not_on_team");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddMemberSelectorError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AddMemberSelectorError addMemberSelectorErrorUnverifiedDropboxId;
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
            if ("automatic_group".equals(tag)) {
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.AUTOMATIC_GROUP;
            } else if ("invalid_dropbox_id".equals(tag)) {
                expectField("invalid_dropbox_id", kVar);
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.invalidDropboxId(StoneSerializers.string().deserialize(kVar));
            } else if ("invalid_email".equals(tag)) {
                expectField("invalid_email", kVar);
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.invalidEmail(StoneSerializers.string().deserialize(kVar));
            } else if ("unverified_dropbox_id".equals(tag)) {
                expectField("unverified_dropbox_id", kVar);
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.unverifiedDropboxId(StoneSerializers.string().deserialize(kVar));
            } else if ("group_deleted".equals(tag)) {
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.GROUP_DELETED;
            } else if ("group_not_on_team".equals(tag)) {
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.GROUP_NOT_ON_TEAM;
            } else {
                addMemberSelectorErrorUnverifiedDropboxId = AddMemberSelectorError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return addMemberSelectorErrorUnverifiedDropboxId;
        }
    }
}
