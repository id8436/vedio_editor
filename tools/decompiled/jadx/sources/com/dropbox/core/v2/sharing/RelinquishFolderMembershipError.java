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
public final class RelinquishFolderMembershipError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    public static final RelinquishFolderMembershipError FOLDER_OWNER = new RelinquishFolderMembershipError().withTag(Tag.FOLDER_OWNER);
    public static final RelinquishFolderMembershipError MOUNTED = new RelinquishFolderMembershipError().withTag(Tag.MOUNTED);
    public static final RelinquishFolderMembershipError GROUP_ACCESS = new RelinquishFolderMembershipError().withTag(Tag.GROUP_ACCESS);
    public static final RelinquishFolderMembershipError TEAM_FOLDER = new RelinquishFolderMembershipError().withTag(Tag.TEAM_FOLDER);
    public static final RelinquishFolderMembershipError NO_PERMISSION = new RelinquishFolderMembershipError().withTag(Tag.NO_PERMISSION);
    public static final RelinquishFolderMembershipError NO_EXPLICIT_ACCESS = new RelinquishFolderMembershipError().withTag(Tag.NO_EXPLICIT_ACCESS);
    public static final RelinquishFolderMembershipError OTHER = new RelinquishFolderMembershipError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        FOLDER_OWNER,
        MOUNTED,
        GROUP_ACCESS,
        TEAM_FOLDER,
        NO_PERMISSION,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    private RelinquishFolderMembershipError() {
    }

    private RelinquishFolderMembershipError withTag(Tag tag) {
        RelinquishFolderMembershipError relinquishFolderMembershipError = new RelinquishFolderMembershipError();
        relinquishFolderMembershipError._tag = tag;
        return relinquishFolderMembershipError;
    }

    private RelinquishFolderMembershipError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        RelinquishFolderMembershipError relinquishFolderMembershipError = new RelinquishFolderMembershipError();
        relinquishFolderMembershipError._tag = tag;
        relinquishFolderMembershipError.accessErrorValue = sharedFolderAccessError;
        return relinquishFolderMembershipError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static RelinquishFolderMembershipError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelinquishFolderMembershipError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isFolderOwner() {
        return this._tag == Tag.FOLDER_OWNER;
    }

    public boolean isMounted() {
        return this._tag == Tag.MOUNTED;
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

    public boolean isNoExplicitAccess() {
        return this._tag == Tag.NO_EXPLICIT_ACCESS;
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
        if (obj != null && (obj instanceof RelinquishFolderMembershipError)) {
            RelinquishFolderMembershipError relinquishFolderMembershipError = (RelinquishFolderMembershipError) obj;
            if (this._tag != relinquishFolderMembershipError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == relinquishFolderMembershipError.accessErrorValue || this.accessErrorValue.equals(relinquishFolderMembershipError.accessErrorValue);
                case FOLDER_OWNER:
                case MOUNTED:
                case GROUP_ACCESS:
                case TEAM_FOLDER:
                case NO_PERMISSION:
                case NO_EXPLICIT_ACCESS:
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

    class Serializer extends UnionSerializer<RelinquishFolderMembershipError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelinquishFolderMembershipError relinquishFolderMembershipError, g gVar) throws IOException {
            switch (relinquishFolderMembershipError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(relinquishFolderMembershipError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case FOLDER_OWNER:
                    gVar.b("folder_owner");
                    break;
                case MOUNTED:
                    gVar.b("mounted");
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
                case NO_EXPLICIT_ACCESS:
                    gVar.b("no_explicit_access");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RelinquishFolderMembershipError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelinquishFolderMembershipError relinquishFolderMembershipErrorAccessError;
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
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("folder_owner".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.FOLDER_OWNER;
            } else if ("mounted".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.MOUNTED;
            } else if ("group_access".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.GROUP_ACCESS;
            } else if ("team_folder".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.TEAM_FOLDER;
            } else if ("no_permission".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.NO_PERMISSION;
            } else if ("no_explicit_access".equals(tag)) {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.NO_EXPLICIT_ACCESS;
            } else {
                relinquishFolderMembershipErrorAccessError = RelinquishFolderMembershipError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relinquishFolderMembershipErrorAccessError;
        }
    }
}
