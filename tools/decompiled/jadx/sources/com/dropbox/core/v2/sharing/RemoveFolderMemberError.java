package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import com.dropbox.core.v2.sharing.SharedFolderMemberError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoveFolderMemberError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    private SharedFolderMemberError memberErrorValue;
    public static final RemoveFolderMemberError FOLDER_OWNER = new RemoveFolderMemberError().withTag(Tag.FOLDER_OWNER);
    public static final RemoveFolderMemberError GROUP_ACCESS = new RemoveFolderMemberError().withTag(Tag.GROUP_ACCESS);
    public static final RemoveFolderMemberError TEAM_FOLDER = new RemoveFolderMemberError().withTag(Tag.TEAM_FOLDER);
    public static final RemoveFolderMemberError NO_PERMISSION = new RemoveFolderMemberError().withTag(Tag.NO_PERMISSION);
    public static final RemoveFolderMemberError OTHER = new RemoveFolderMemberError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        MEMBER_ERROR,
        FOLDER_OWNER,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        OTHER
    }

    private RemoveFolderMemberError() {
    }

    private RemoveFolderMemberError withTag(Tag tag) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError._tag = tag;
        return removeFolderMemberError;
    }

    private RemoveFolderMemberError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError._tag = tag;
        removeFolderMemberError.accessErrorValue = sharedFolderAccessError;
        return removeFolderMemberError;
    }

    private RemoveFolderMemberError withTagAndMemberError(Tag tag, SharedFolderMemberError sharedFolderMemberError) {
        RemoveFolderMemberError removeFolderMemberError = new RemoveFolderMemberError();
        removeFolderMemberError._tag = tag;
        removeFolderMemberError.memberErrorValue = sharedFolderMemberError;
        return removeFolderMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static RemoveFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveFolderMemberError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isMemberError() {
        return this._tag == Tag.MEMBER_ERROR;
    }

    public static RemoveFolderMemberError memberError(SharedFolderMemberError sharedFolderMemberError) {
        if (sharedFolderMemberError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveFolderMemberError().withTagAndMemberError(Tag.MEMBER_ERROR, sharedFolderMemberError);
    }

    public SharedFolderMemberError getMemberErrorValue() {
        if (this._tag != Tag.MEMBER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this._tag.name());
        }
        return this.memberErrorValue;
    }

    public boolean isFolderOwner() {
        return this._tag == Tag.FOLDER_OWNER;
    }

    public boolean isGroupAccess() {
        return this._tag == Tag.GROUP_ACCESS;
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
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.memberErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof RemoveFolderMemberError)) {
            RemoveFolderMemberError removeFolderMemberError = (RemoveFolderMemberError) obj;
            if (this._tag != removeFolderMemberError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == removeFolderMemberError.accessErrorValue || this.accessErrorValue.equals(removeFolderMemberError.accessErrorValue);
                case MEMBER_ERROR:
                    return this.memberErrorValue == removeFolderMemberError.memberErrorValue || this.memberErrorValue.equals(removeFolderMemberError.memberErrorValue);
                case FOLDER_OWNER:
                case GROUP_ACCESS:
                case TEAM_FOLDER:
                case NO_PERMISSION:
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

    class Serializer extends UnionSerializer<RemoveFolderMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RemoveFolderMemberError removeFolderMemberError, g gVar) throws IOException {
            switch (removeFolderMemberError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(removeFolderMemberError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case MEMBER_ERROR:
                    gVar.e();
                    writeTag("member_error", gVar);
                    gVar.a("member_error");
                    SharedFolderMemberError.Serializer.INSTANCE.serialize(removeFolderMemberError.memberErrorValue, gVar);
                    gVar.f();
                    break;
                case FOLDER_OWNER:
                    gVar.b("folder_owner");
                    break;
                case GROUP_ACCESS:
                    gVar.b("group_access");
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
        public RemoveFolderMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RemoveFolderMemberError removeFolderMemberErrorMemberError;
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
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("member_error".equals(tag)) {
                expectField("member_error", kVar);
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.memberError(SharedFolderMemberError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("folder_owner".equals(tag)) {
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.FOLDER_OWNER;
            } else if ("group_access".equals(tag)) {
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.GROUP_ACCESS;
            } else if ("team_folder".equals(tag)) {
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.TEAM_FOLDER;
            } else if ("no_permission".equals(tag)) {
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.NO_PERMISSION;
            } else {
                removeFolderMemberErrorMemberError = RemoveFolderMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return removeFolderMemberErrorMemberError;
        }
    }
}
