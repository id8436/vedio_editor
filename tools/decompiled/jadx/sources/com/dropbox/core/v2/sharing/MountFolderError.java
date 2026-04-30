package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.InsufficientQuotaAmounts;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class MountFolderError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    private InsufficientQuotaAmounts insufficientQuotaValue;
    public static final MountFolderError INSIDE_SHARED_FOLDER = new MountFolderError().withTag(Tag.INSIDE_SHARED_FOLDER);
    public static final MountFolderError ALREADY_MOUNTED = new MountFolderError().withTag(Tag.ALREADY_MOUNTED);
    public static final MountFolderError NO_PERMISSION = new MountFolderError().withTag(Tag.NO_PERMISSION);
    public static final MountFolderError NOT_MOUNTABLE = new MountFolderError().withTag(Tag.NOT_MOUNTABLE);
    public static final MountFolderError OTHER = new MountFolderError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        INSIDE_SHARED_FOLDER,
        INSUFFICIENT_QUOTA,
        ALREADY_MOUNTED,
        NO_PERMISSION,
        NOT_MOUNTABLE,
        OTHER
    }

    private MountFolderError() {
    }

    private MountFolderError withTag(Tag tag) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError._tag = tag;
        return mountFolderError;
    }

    private MountFolderError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError._tag = tag;
        mountFolderError.accessErrorValue = sharedFolderAccessError;
        return mountFolderError;
    }

    private MountFolderError withTagAndInsufficientQuota(Tag tag, InsufficientQuotaAmounts insufficientQuotaAmounts) {
        MountFolderError mountFolderError = new MountFolderError();
        mountFolderError._tag = tag;
        mountFolderError.insufficientQuotaValue = insufficientQuotaAmounts;
        return mountFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static MountFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MountFolderError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isInsideSharedFolder() {
        return this._tag == Tag.INSIDE_SHARED_FOLDER;
    }

    public boolean isInsufficientQuota() {
        return this._tag == Tag.INSUFFICIENT_QUOTA;
    }

    public static MountFolderError insufficientQuota(InsufficientQuotaAmounts insufficientQuotaAmounts) {
        if (insufficientQuotaAmounts == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MountFolderError().withTagAndInsufficientQuota(Tag.INSUFFICIENT_QUOTA, insufficientQuotaAmounts);
    }

    public InsufficientQuotaAmounts getInsufficientQuotaValue() {
        if (this._tag != Tag.INSUFFICIENT_QUOTA) {
            throw new IllegalStateException("Invalid tag: required Tag.INSUFFICIENT_QUOTA, but was Tag." + this._tag.name());
        }
        return this.insufficientQuotaValue;
    }

    public boolean isAlreadyMounted() {
        return this._tag == Tag.ALREADY_MOUNTED;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isNotMountable() {
        return this._tag == Tag.NOT_MOUNTABLE;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.insufficientQuotaValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof MountFolderError)) {
            MountFolderError mountFolderError = (MountFolderError) obj;
            if (this._tag != mountFolderError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == mountFolderError.accessErrorValue || this.accessErrorValue.equals(mountFolderError.accessErrorValue);
                case INSIDE_SHARED_FOLDER:
                case ALREADY_MOUNTED:
                case NO_PERMISSION:
                case NOT_MOUNTABLE:
                case OTHER:
                    return true;
                case INSUFFICIENT_QUOTA:
                    return this.insufficientQuotaValue == mountFolderError.insufficientQuotaValue || this.insufficientQuotaValue.equals(mountFolderError.insufficientQuotaValue);
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

    class Serializer extends UnionSerializer<MountFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MountFolderError mountFolderError, g gVar) throws IOException {
            switch (mountFolderError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(mountFolderError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case INSIDE_SHARED_FOLDER:
                    gVar.b("inside_shared_folder");
                    break;
                case INSUFFICIENT_QUOTA:
                    gVar.e();
                    writeTag("insufficient_quota", gVar);
                    InsufficientQuotaAmounts.Serializer.INSTANCE.serialize(mountFolderError.insufficientQuotaValue, gVar, true);
                    gVar.f();
                    break;
                case ALREADY_MOUNTED:
                    gVar.b("already_mounted");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case NOT_MOUNTABLE:
                    gVar.b("not_mountable");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MountFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MountFolderError mountFolderErrorInsufficientQuota;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
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
                mountFolderErrorInsufficientQuota = MountFolderError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("inside_shared_folder".equals(tag)) {
                mountFolderErrorInsufficientQuota = MountFolderError.INSIDE_SHARED_FOLDER;
            } else if ("insufficient_quota".equals(tag)) {
                mountFolderErrorInsufficientQuota = MountFolderError.insufficientQuota(InsufficientQuotaAmounts.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("already_mounted".equals(tag)) {
                mountFolderErrorInsufficientQuota = MountFolderError.ALREADY_MOUNTED;
            } else if ("no_permission".equals(tag)) {
                mountFolderErrorInsufficientQuota = MountFolderError.NO_PERMISSION;
            } else if ("not_mountable".equals(tag)) {
                mountFolderErrorInsufficientQuota = MountFolderError.NOT_MOUNTABLE;
            } else {
                mountFolderErrorInsufficientQuota = MountFolderError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return mountFolderErrorInsufficientQuota;
        }
    }
}
