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
public final class TransferFolderError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    public static final TransferFolderError INVALID_DROPBOX_ID = new TransferFolderError().withTag(Tag.INVALID_DROPBOX_ID);
    public static final TransferFolderError NEW_OWNER_NOT_A_MEMBER = new TransferFolderError().withTag(Tag.NEW_OWNER_NOT_A_MEMBER);
    public static final TransferFolderError NEW_OWNER_UNMOUNTED = new TransferFolderError().withTag(Tag.NEW_OWNER_UNMOUNTED);
    public static final TransferFolderError NEW_OWNER_EMAIL_UNVERIFIED = new TransferFolderError().withTag(Tag.NEW_OWNER_EMAIL_UNVERIFIED);
    public static final TransferFolderError TEAM_FOLDER = new TransferFolderError().withTag(Tag.TEAM_FOLDER);
    public static final TransferFolderError NO_PERMISSION = new TransferFolderError().withTag(Tag.NO_PERMISSION);
    public static final TransferFolderError OTHER = new TransferFolderError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        INVALID_DROPBOX_ID,
        NEW_OWNER_NOT_A_MEMBER,
        NEW_OWNER_UNMOUNTED,
        NEW_OWNER_EMAIL_UNVERIFIED,
        TEAM_FOLDER,
        NO_PERMISSION,
        OTHER
    }

    private TransferFolderError() {
    }

    private TransferFolderError withTag(Tag tag) {
        TransferFolderError transferFolderError = new TransferFolderError();
        transferFolderError._tag = tag;
        return transferFolderError;
    }

    private TransferFolderError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        TransferFolderError transferFolderError = new TransferFolderError();
        transferFolderError._tag = tag;
        transferFolderError.accessErrorValue = sharedFolderAccessError;
        return transferFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static TransferFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new TransferFolderError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isInvalidDropboxId() {
        return this._tag == Tag.INVALID_DROPBOX_ID;
    }

    public boolean isNewOwnerNotAMember() {
        return this._tag == Tag.NEW_OWNER_NOT_A_MEMBER;
    }

    public boolean isNewOwnerUnmounted() {
        return this._tag == Tag.NEW_OWNER_UNMOUNTED;
    }

    public boolean isNewOwnerEmailUnverified() {
        return this._tag == Tag.NEW_OWNER_EMAIL_UNVERIFIED;
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
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof TransferFolderError)) {
            TransferFolderError transferFolderError = (TransferFolderError) obj;
            if (this._tag != transferFolderError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == transferFolderError.accessErrorValue || this.accessErrorValue.equals(transferFolderError.accessErrorValue);
                case INVALID_DROPBOX_ID:
                case NEW_OWNER_NOT_A_MEMBER:
                case NEW_OWNER_UNMOUNTED:
                case NEW_OWNER_EMAIL_UNVERIFIED:
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

    class Serializer extends UnionSerializer<TransferFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TransferFolderError transferFolderError, g gVar) throws IOException {
            switch (transferFolderError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(transferFolderError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case INVALID_DROPBOX_ID:
                    gVar.b("invalid_dropbox_id");
                    break;
                case NEW_OWNER_NOT_A_MEMBER:
                    gVar.b("new_owner_not_a_member");
                    break;
                case NEW_OWNER_UNMOUNTED:
                    gVar.b("new_owner_unmounted");
                    break;
                case NEW_OWNER_EMAIL_UNVERIFIED:
                    gVar.b("new_owner_email_unverified");
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
        public TransferFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            TransferFolderError transferFolderErrorAccessError;
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
                transferFolderErrorAccessError = TransferFolderError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_dropbox_id".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.INVALID_DROPBOX_ID;
            } else if ("new_owner_not_a_member".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.NEW_OWNER_NOT_A_MEMBER;
            } else if ("new_owner_unmounted".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.NEW_OWNER_UNMOUNTED;
            } else if ("new_owner_email_unverified".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.NEW_OWNER_EMAIL_UNVERIFIED;
            } else if ("team_folder".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.TEAM_FOLDER;
            } else if ("no_permission".equals(tag)) {
                transferFolderErrorAccessError = TransferFolderError.NO_PERMISSION;
            } else {
                transferFolderErrorAccessError = TransferFolderError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return transferFolderErrorAccessError;
        }
    }
}
