package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RelinquishFileMembershipError {
    public static final RelinquishFileMembershipError GROUP_ACCESS = new RelinquishFileMembershipError().withTag(Tag.GROUP_ACCESS);
    public static final RelinquishFileMembershipError NO_PERMISSION = new RelinquishFileMembershipError().withTag(Tag.NO_PERMISSION);
    public static final RelinquishFileMembershipError OTHER = new RelinquishFileMembershipError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;

    public enum Tag {
        ACCESS_ERROR,
        GROUP_ACCESS,
        NO_PERMISSION,
        OTHER
    }

    private RelinquishFileMembershipError() {
    }

    private RelinquishFileMembershipError withTag(Tag tag) {
        RelinquishFileMembershipError relinquishFileMembershipError = new RelinquishFileMembershipError();
        relinquishFileMembershipError._tag = tag;
        return relinquishFileMembershipError;
    }

    private RelinquishFileMembershipError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        RelinquishFileMembershipError relinquishFileMembershipError = new RelinquishFileMembershipError();
        relinquishFileMembershipError._tag = tag;
        relinquishFileMembershipError.accessErrorValue = sharingFileAccessError;
        return relinquishFileMembershipError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static RelinquishFileMembershipError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RelinquishFileMembershipError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isGroupAccess() {
        return this._tag == Tag.GROUP_ACCESS;
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
        if (obj == null || !(obj instanceof RelinquishFileMembershipError)) {
            return false;
        }
        RelinquishFileMembershipError relinquishFileMembershipError = (RelinquishFileMembershipError) obj;
        if (this._tag != relinquishFileMembershipError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == relinquishFileMembershipError.accessErrorValue || this.accessErrorValue.equals(relinquishFileMembershipError.accessErrorValue);
            case GROUP_ACCESS:
                return true;
            case NO_PERMISSION:
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

    class Serializer extends UnionSerializer<RelinquishFileMembershipError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RelinquishFileMembershipError relinquishFileMembershipError, g gVar) throws IOException {
            switch (relinquishFileMembershipError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(relinquishFileMembershipError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case GROUP_ACCESS:
                    gVar.b("group_access");
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
        public RelinquishFileMembershipError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RelinquishFileMembershipError relinquishFileMembershipErrorAccessError;
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
                relinquishFileMembershipErrorAccessError = RelinquishFileMembershipError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("group_access".equals(tag)) {
                relinquishFileMembershipErrorAccessError = RelinquishFileMembershipError.GROUP_ACCESS;
            } else if ("no_permission".equals(tag)) {
                relinquishFileMembershipErrorAccessError = RelinquishFileMembershipError.NO_PERMISSION;
            } else {
                relinquishFileMembershipErrorAccessError = RelinquishFileMembershipError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return relinquishFileMembershipErrorAccessError;
        }
    }
}
