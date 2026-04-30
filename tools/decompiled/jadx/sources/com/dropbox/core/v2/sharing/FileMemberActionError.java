package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class FileMemberActionError {
    public static final FileMemberActionError INVALID_MEMBER = new FileMemberActionError().withTag(Tag.INVALID_MEMBER);
    public static final FileMemberActionError NO_PERMISSION = new FileMemberActionError().withTag(Tag.NO_PERMISSION);
    public static final FileMemberActionError OTHER = new FileMemberActionError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private MemberAccessLevelResult noExplicitAccessValue;

    public enum Tag {
        INVALID_MEMBER,
        NO_PERMISSION,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    private FileMemberActionError() {
    }

    private FileMemberActionError withTag(Tag tag) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError._tag = tag;
        return fileMemberActionError;
    }

    private FileMemberActionError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError._tag = tag;
        fileMemberActionError.accessErrorValue = sharingFileAccessError;
        return fileMemberActionError;
    }

    private FileMemberActionError withTagAndNoExplicitAccess(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        FileMemberActionError fileMemberActionError = new FileMemberActionError();
        fileMemberActionError._tag = tag;
        fileMemberActionError.noExplicitAccessValue = memberAccessLevelResult;
        return fileMemberActionError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInvalidMember() {
        return this._tag == Tag.INVALID_MEMBER;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static FileMemberActionError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FileMemberActionError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isNoExplicitAccess() {
        return this._tag == Tag.NO_EXPLICIT_ACCESS;
    }

    public static FileMemberActionError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new FileMemberActionError().withTagAndNoExplicitAccess(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
    }

    public MemberAccessLevelResult getNoExplicitAccessValue() {
        if (this._tag != Tag.NO_EXPLICIT_ACCESS) {
            throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this._tag.name());
        }
        return this.noExplicitAccessValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue, this.noExplicitAccessValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof FileMemberActionError)) {
            return false;
        }
        FileMemberActionError fileMemberActionError = (FileMemberActionError) obj;
        if (this._tag != fileMemberActionError._tag) {
            return false;
        }
        switch (this._tag) {
            case INVALID_MEMBER:
                return true;
            case NO_PERMISSION:
                return true;
            case ACCESS_ERROR:
                return this.accessErrorValue == fileMemberActionError.accessErrorValue || this.accessErrorValue.equals(fileMemberActionError.accessErrorValue);
            case NO_EXPLICIT_ACCESS:
                return this.noExplicitAccessValue == fileMemberActionError.noExplicitAccessValue || this.noExplicitAccessValue.equals(fileMemberActionError.noExplicitAccessValue);
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

    class Serializer extends UnionSerializer<FileMemberActionError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(FileMemberActionError fileMemberActionError, g gVar) throws IOException {
            switch (fileMemberActionError.tag()) {
                case INVALID_MEMBER:
                    gVar.b("invalid_member");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(fileMemberActionError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case NO_EXPLICIT_ACCESS:
                    gVar.e();
                    writeTag("no_explicit_access", gVar);
                    MemberAccessLevelResult.Serializer.INSTANCE.serialize(fileMemberActionError.noExplicitAccessValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public FileMemberActionError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            FileMemberActionError fileMemberActionErrorNoExplicitAccess;
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
            if ("invalid_member".equals(tag)) {
                fileMemberActionErrorNoExplicitAccess = FileMemberActionError.INVALID_MEMBER;
            } else if ("no_permission".equals(tag)) {
                fileMemberActionErrorNoExplicitAccess = FileMemberActionError.NO_PERMISSION;
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                fileMemberActionErrorNoExplicitAccess = FileMemberActionError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("no_explicit_access".equals(tag)) {
                fileMemberActionErrorNoExplicitAccess = FileMemberActionError.noExplicitAccess(MemberAccessLevelResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                fileMemberActionErrorNoExplicitAccess = FileMemberActionError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return fileMemberActionErrorNoExplicitAccess;
        }
    }
}
