package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.AddMemberSelectorError;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AddFolderMemberError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    private AddMemberSelectorError badMemberValue;
    private Long tooManyMembersValue;
    private Long tooManyPendingInvitesValue;
    public static final AddFolderMemberError EMAIL_UNVERIFIED = new AddFolderMemberError().withTag(Tag.EMAIL_UNVERIFIED);
    public static final AddFolderMemberError CANT_SHARE_OUTSIDE_TEAM = new AddFolderMemberError().withTag(Tag.CANT_SHARE_OUTSIDE_TEAM);
    public static final AddFolderMemberError RATE_LIMIT = new AddFolderMemberError().withTag(Tag.RATE_LIMIT);
    public static final AddFolderMemberError TOO_MANY_INVITEES = new AddFolderMemberError().withTag(Tag.TOO_MANY_INVITEES);
    public static final AddFolderMemberError INSUFFICIENT_PLAN = new AddFolderMemberError().withTag(Tag.INSUFFICIENT_PLAN);
    public static final AddFolderMemberError TEAM_FOLDER = new AddFolderMemberError().withTag(Tag.TEAM_FOLDER);
    public static final AddFolderMemberError NO_PERMISSION = new AddFolderMemberError().withTag(Tag.NO_PERMISSION);
    public static final AddFolderMemberError OTHER = new AddFolderMemberError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        EMAIL_UNVERIFIED,
        BAD_MEMBER,
        CANT_SHARE_OUTSIDE_TEAM,
        TOO_MANY_MEMBERS,
        TOO_MANY_PENDING_INVITES,
        RATE_LIMIT,
        TOO_MANY_INVITEES,
        INSUFFICIENT_PLAN,
        TEAM_FOLDER,
        NO_PERMISSION,
        OTHER
    }

    private AddFolderMemberError() {
    }

    private AddFolderMemberError withTag(Tag tag) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError._tag = tag;
        return addFolderMemberError;
    }

    private AddFolderMemberError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError._tag = tag;
        addFolderMemberError.accessErrorValue = sharedFolderAccessError;
        return addFolderMemberError;
    }

    private AddFolderMemberError withTagAndBadMember(Tag tag, AddMemberSelectorError addMemberSelectorError) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError._tag = tag;
        addFolderMemberError.badMemberValue = addMemberSelectorError;
        return addFolderMemberError;
    }

    private AddFolderMemberError withTagAndTooManyMembers(Tag tag, Long l) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError._tag = tag;
        addFolderMemberError.tooManyMembersValue = l;
        return addFolderMemberError;
    }

    private AddFolderMemberError withTagAndTooManyPendingInvites(Tag tag, Long l) {
        AddFolderMemberError addFolderMemberError = new AddFolderMemberError();
        addFolderMemberError._tag = tag;
        addFolderMemberError.tooManyPendingInvitesValue = l;
        return addFolderMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static AddFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AddFolderMemberError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isEmailUnverified() {
        return this._tag == Tag.EMAIL_UNVERIFIED;
    }

    public boolean isBadMember() {
        return this._tag == Tag.BAD_MEMBER;
    }

    public static AddFolderMemberError badMember(AddMemberSelectorError addMemberSelectorError) {
        if (addMemberSelectorError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AddFolderMemberError().withTagAndBadMember(Tag.BAD_MEMBER, addMemberSelectorError);
    }

    public AddMemberSelectorError getBadMemberValue() {
        if (this._tag != Tag.BAD_MEMBER) {
            throw new IllegalStateException("Invalid tag: required Tag.BAD_MEMBER, but was Tag." + this._tag.name());
        }
        return this.badMemberValue;
    }

    public boolean isCantShareOutsideTeam() {
        return this._tag == Tag.CANT_SHARE_OUTSIDE_TEAM;
    }

    public boolean isTooManyMembers() {
        return this._tag == Tag.TOO_MANY_MEMBERS;
    }

    public static AddFolderMemberError tooManyMembers(long j) {
        return new AddFolderMemberError().withTagAndTooManyMembers(Tag.TOO_MANY_MEMBERS, Long.valueOf(j));
    }

    public long getTooManyMembersValue() {
        if (this._tag != Tag.TOO_MANY_MEMBERS) {
            throw new IllegalStateException("Invalid tag: required Tag.TOO_MANY_MEMBERS, but was Tag." + this._tag.name());
        }
        return this.tooManyMembersValue.longValue();
    }

    public boolean isTooManyPendingInvites() {
        return this._tag == Tag.TOO_MANY_PENDING_INVITES;
    }

    public static AddFolderMemberError tooManyPendingInvites(long j) {
        return new AddFolderMemberError().withTagAndTooManyPendingInvites(Tag.TOO_MANY_PENDING_INVITES, Long.valueOf(j));
    }

    public long getTooManyPendingInvitesValue() {
        if (this._tag != Tag.TOO_MANY_PENDING_INVITES) {
            throw new IllegalStateException("Invalid tag: required Tag.TOO_MANY_PENDING_INVITES, but was Tag." + this._tag.name());
        }
        return this.tooManyPendingInvitesValue.longValue();
    }

    public boolean isRateLimit() {
        return this._tag == Tag.RATE_LIMIT;
    }

    public boolean isTooManyInvitees() {
        return this._tag == Tag.TOO_MANY_INVITEES;
    }

    public boolean isInsufficientPlan() {
        return this._tag == Tag.INSUFFICIENT_PLAN;
    }

    public boolean isTeamFolder() {
        return this._tag == Tag.TEAM_FOLDER;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.badMemberValue, this.tooManyMembersValue, this.tooManyPendingInvitesValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof AddFolderMemberError)) {
            AddFolderMemberError addFolderMemberError = (AddFolderMemberError) obj;
            if (this._tag != addFolderMemberError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == addFolderMemberError.accessErrorValue || this.accessErrorValue.equals(addFolderMemberError.accessErrorValue);
                case EMAIL_UNVERIFIED:
                case CANT_SHARE_OUTSIDE_TEAM:
                case RATE_LIMIT:
                case TOO_MANY_INVITEES:
                case INSUFFICIENT_PLAN:
                case TEAM_FOLDER:
                case NO_PERMISSION:
                case OTHER:
                    return true;
                case BAD_MEMBER:
                    return this.badMemberValue == addFolderMemberError.badMemberValue || this.badMemberValue.equals(addFolderMemberError.badMemberValue);
                case TOO_MANY_MEMBERS:
                    return this.tooManyMembersValue == addFolderMemberError.tooManyMembersValue;
                case TOO_MANY_PENDING_INVITES:
                    return this.tooManyPendingInvitesValue == addFolderMemberError.tooManyPendingInvitesValue;
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<AddFolderMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddFolderMemberError addFolderMemberError, g gVar) throws IOException {
            switch (addFolderMemberError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(addFolderMemberError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case EMAIL_UNVERIFIED:
                    gVar.b("email_unverified");
                    break;
                case BAD_MEMBER:
                    gVar.e();
                    writeTag("bad_member", gVar);
                    gVar.a("bad_member");
                    AddMemberSelectorError.Serializer.INSTANCE.serialize(addFolderMemberError.badMemberValue, gVar);
                    gVar.f();
                    break;
                case CANT_SHARE_OUTSIDE_TEAM:
                    gVar.b("cant_share_outside_team");
                    break;
                case TOO_MANY_MEMBERS:
                    gVar.e();
                    writeTag("too_many_members", gVar);
                    gVar.a("too_many_members");
                    StoneSerializers.uInt64().serialize(addFolderMemberError.tooManyMembersValue, gVar);
                    gVar.f();
                    break;
                case TOO_MANY_PENDING_INVITES:
                    gVar.e();
                    writeTag("too_many_pending_invites", gVar);
                    gVar.a("too_many_pending_invites");
                    StoneSerializers.uInt64().serialize(addFolderMemberError.tooManyPendingInvitesValue, gVar);
                    gVar.f();
                    break;
                case RATE_LIMIT:
                    gVar.b("rate_limit");
                    break;
                case TOO_MANY_INVITEES:
                    gVar.b("too_many_invitees");
                    break;
                case INSUFFICIENT_PLAN:
                    gVar.b("insufficient_plan");
                    break;
                case TEAM_FOLDER:
                    gVar.b("team_folder");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddFolderMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AddFolderMemberError addFolderMemberErrorBadMember;
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
            if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                addFolderMemberErrorBadMember = AddFolderMemberError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("email_unverified".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.EMAIL_UNVERIFIED;
            } else if ("bad_member".equals(tag)) {
                expectField("bad_member", kVar);
                addFolderMemberErrorBadMember = AddFolderMemberError.badMember(AddMemberSelectorError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("cant_share_outside_team".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.CANT_SHARE_OUTSIDE_TEAM;
            } else if ("too_many_members".equals(tag)) {
                expectField("too_many_members", kVar);
                addFolderMemberErrorBadMember = AddFolderMemberError.tooManyMembers(StoneSerializers.uInt64().deserialize(kVar).longValue());
            } else if ("too_many_pending_invites".equals(tag)) {
                expectField("too_many_pending_invites", kVar);
                addFolderMemberErrorBadMember = AddFolderMemberError.tooManyPendingInvites(StoneSerializers.uInt64().deserialize(kVar).longValue());
            } else if ("rate_limit".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.RATE_LIMIT;
            } else if ("too_many_invitees".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.TOO_MANY_INVITEES;
            } else if ("insufficient_plan".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.INSUFFICIENT_PLAN;
            } else if ("team_folder".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.TEAM_FOLDER;
            } else if ("no_permission".equals(tag)) {
                addFolderMemberErrorBadMember = AddFolderMemberError.NO_PERMISSION;
            } else {
                addFolderMemberErrorBadMember = AddFolderMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return addFolderMemberErrorBadMember;
        }
    }
}
