package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.MemberAccessLevelResult;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import com.dropbox.core.v2.sharing.SharingUserError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoveFileMemberError {
    public static final RemoveFileMemberError OTHER = new RemoveFileMemberError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private MemberAccessLevelResult noExplicitAccessValue;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    private RemoveFileMemberError() {
    }

    private RemoveFileMemberError withTag(Tag tag) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError._tag = tag;
        return removeFileMemberError;
    }

    private RemoveFileMemberError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError._tag = tag;
        removeFileMemberError.userErrorValue = sharingUserError;
        return removeFileMemberError;
    }

    private RemoveFileMemberError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError._tag = tag;
        removeFileMemberError.accessErrorValue = sharingFileAccessError;
        return removeFileMemberError;
    }

    private RemoveFileMemberError withTagAndNoExplicitAccess(Tag tag, MemberAccessLevelResult memberAccessLevelResult) {
        RemoveFileMemberError removeFileMemberError = new RemoveFileMemberError();
        removeFileMemberError._tag = tag;
        removeFileMemberError.noExplicitAccessValue = memberAccessLevelResult;
        return removeFileMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static RemoveFileMemberError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveFileMemberError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
    }

    public SharingUserError getUserErrorValue() {
        if (this._tag != Tag.USER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this._tag.name());
        }
        return this.userErrorValue;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static RemoveFileMemberError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveFileMemberError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
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

    public static RemoveFileMemberError noExplicitAccess(MemberAccessLevelResult memberAccessLevelResult) {
        if (memberAccessLevelResult == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new RemoveFileMemberError().withTagAndNoExplicitAccess(Tag.NO_EXPLICIT_ACCESS, memberAccessLevelResult);
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
        return Arrays.hashCode(new Object[]{this._tag, this.userErrorValue, this.accessErrorValue, this.noExplicitAccessValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemoveFileMemberError)) {
            return false;
        }
        RemoveFileMemberError removeFileMemberError = (RemoveFileMemberError) obj;
        if (this._tag != removeFileMemberError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == removeFileMemberError.userErrorValue || this.userErrorValue.equals(removeFileMemberError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == removeFileMemberError.accessErrorValue || this.accessErrorValue.equals(removeFileMemberError.accessErrorValue);
            case NO_EXPLICIT_ACCESS:
                return this.noExplicitAccessValue == removeFileMemberError.noExplicitAccessValue || this.noExplicitAccessValue.equals(removeFileMemberError.noExplicitAccessValue);
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

    class Serializer extends UnionSerializer<RemoveFileMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(RemoveFileMemberError removeFileMemberError, g gVar) throws IOException {
            switch (removeFileMemberError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(removeFileMemberError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(removeFileMemberError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case NO_EXPLICIT_ACCESS:
                    gVar.e();
                    writeTag("no_explicit_access", gVar);
                    MemberAccessLevelResult.Serializer.INSTANCE.serialize(removeFileMemberError.noExplicitAccessValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public RemoveFileMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            RemoveFileMemberError removeFileMemberErrorNoExplicitAccess;
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
            if ("user_error".equals(tag)) {
                expectField("user_error", kVar);
                removeFileMemberErrorNoExplicitAccess = RemoveFileMemberError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                removeFileMemberErrorNoExplicitAccess = RemoveFileMemberError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("no_explicit_access".equals(tag)) {
                removeFileMemberErrorNoExplicitAccess = RemoveFileMemberError.noExplicitAccess(MemberAccessLevelResult.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                removeFileMemberErrorNoExplicitAccess = RemoveFileMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return removeFileMemberErrorNoExplicitAccess;
        }
    }
}
