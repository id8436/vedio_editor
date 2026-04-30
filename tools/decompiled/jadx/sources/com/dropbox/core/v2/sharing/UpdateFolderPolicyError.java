package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateFolderPolicyError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    public static final UpdateFolderPolicyError NOT_ON_TEAM = new UpdateFolderPolicyError().withTag(Tag.NOT_ON_TEAM);
    public static final UpdateFolderPolicyError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new UpdateFolderPolicyError().withTag(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
    public static final UpdateFolderPolicyError DISALLOWED_SHARED_LINK_POLICY = new UpdateFolderPolicyError().withTag(Tag.DISALLOWED_SHARED_LINK_POLICY);
    public static final UpdateFolderPolicyError NO_PERMISSION = new UpdateFolderPolicyError().withTag(Tag.NO_PERMISSION);
    public static final UpdateFolderPolicyError TEAM_FOLDER = new UpdateFolderPolicyError().withTag(Tag.TEAM_FOLDER);
    public static final UpdateFolderPolicyError OTHER = new UpdateFolderPolicyError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        NOT_ON_TEAM,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        NO_PERMISSION,
        TEAM_FOLDER,
        OTHER
    }

    private UpdateFolderPolicyError() {
    }

    private UpdateFolderPolicyError withTag(Tag tag) {
        UpdateFolderPolicyError updateFolderPolicyError = new UpdateFolderPolicyError();
        updateFolderPolicyError._tag = tag;
        return updateFolderPolicyError;
    }

    private UpdateFolderPolicyError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UpdateFolderPolicyError updateFolderPolicyError = new UpdateFolderPolicyError();
        updateFolderPolicyError._tag = tag;
        updateFolderPolicyError.accessErrorValue = sharedFolderAccessError;
        return updateFolderPolicyError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static UpdateFolderPolicyError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UpdateFolderPolicyError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isNotOnTeam() {
        return this._tag == Tag.NOT_ON_TEAM;
    }

    public boolean isTeamPolicyDisallowsMemberPolicy() {
        return this._tag == Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
    }

    public boolean isDisallowedSharedLinkPolicy() {
        return this._tag == Tag.DISALLOWED_SHARED_LINK_POLICY;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isTeamFolder() {
        return this._tag == Tag.TEAM_FOLDER;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof UpdateFolderPolicyError)) {
            UpdateFolderPolicyError updateFolderPolicyError = (UpdateFolderPolicyError) obj;
            if (this._tag != updateFolderPolicyError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == updateFolderPolicyError.accessErrorValue || this.accessErrorValue.equals(updateFolderPolicyError.accessErrorValue);
                case NOT_ON_TEAM:
                case TEAM_POLICY_DISALLOWS_MEMBER_POLICY:
                case DISALLOWED_SHARED_LINK_POLICY:
                case NO_PERMISSION:
                case TEAM_FOLDER:
                case OTHER:
                    return true;
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

    class Serializer extends UnionSerializer<UpdateFolderPolicyError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdateFolderPolicyError updateFolderPolicyError, g gVar) throws IOException {
            switch (updateFolderPolicyError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(updateFolderPolicyError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case NOT_ON_TEAM:
                    gVar.b("not_on_team");
                    break;
                case TEAM_POLICY_DISALLOWS_MEMBER_POLICY:
                    gVar.b("team_policy_disallows_member_policy");
                    break;
                case DISALLOWED_SHARED_LINK_POLICY:
                    gVar.b("disallowed_shared_link_policy");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case TEAM_FOLDER:
                    gVar.b("team_folder");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdateFolderPolicyError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UpdateFolderPolicyError updateFolderPolicyErrorAccessError;
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
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("not_on_team".equals(tag)) {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.NOT_ON_TEAM;
            } else if ("team_policy_disallows_member_policy".equals(tag)) {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
            } else if ("disallowed_shared_link_policy".equals(tag)) {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.DISALLOWED_SHARED_LINK_POLICY;
            } else if ("no_permission".equals(tag)) {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.NO_PERMISSION;
            } else if ("team_folder".equals(tag)) {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.TEAM_FOLDER;
            } else {
                updateFolderPolicyErrorAccessError = UpdateFolderPolicyError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return updateFolderPolicyErrorAccessError;
        }
    }
}
