package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharingFileAccessError;
import com.dropbox.core.v2.sharing.SharingUserError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AddFileMemberError {
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharingUserError userErrorValue;
    public static final AddFileMemberError RATE_LIMIT = new AddFileMemberError().withTag(Tag.RATE_LIMIT);
    public static final AddFileMemberError INVALID_COMMENT = new AddFileMemberError().withTag(Tag.INVALID_COMMENT);
    public static final AddFileMemberError OTHER = new AddFileMemberError().withTag(Tag.OTHER);

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        RATE_LIMIT,
        INVALID_COMMENT,
        OTHER
    }

    private AddFileMemberError() {
    }

    private AddFileMemberError withTag(Tag tag) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError._tag = tag;
        return addFileMemberError;
    }

    private AddFileMemberError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError._tag = tag;
        addFileMemberError.userErrorValue = sharingUserError;
        return addFileMemberError;
    }

    private AddFileMemberError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        AddFileMemberError addFileMemberError = new AddFileMemberError();
        addFileMemberError._tag = tag;
        addFileMemberError.accessErrorValue = sharingFileAccessError;
        return addFileMemberError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static AddFileMemberError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AddFileMemberError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
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

    public static AddFileMemberError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AddFileMemberError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isRateLimit() {
        return this._tag == Tag.RATE_LIMIT;
    }

    public boolean isInvalidComment() {
        return this._tag == Tag.INVALID_COMMENT;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.userErrorValue, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddFileMemberError)) {
            return false;
        }
        AddFileMemberError addFileMemberError = (AddFileMemberError) obj;
        if (this._tag != addFileMemberError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == addFileMemberError.userErrorValue || this.userErrorValue.equals(addFileMemberError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == addFileMemberError.accessErrorValue || this.accessErrorValue.equals(addFileMemberError.accessErrorValue);
            case RATE_LIMIT:
                return true;
            case INVALID_COMMENT:
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

    class Serializer extends UnionSerializer<AddFileMemberError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddFileMemberError addFileMemberError, g gVar) throws IOException {
            switch (addFileMemberError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(addFileMemberError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(addFileMemberError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case RATE_LIMIT:
                    gVar.b("rate_limit");
                    break;
                case INVALID_COMMENT:
                    gVar.b("invalid_comment");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddFileMemberError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AddFileMemberError addFileMemberErrorAccessError;
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
            if ("user_error".equals(tag)) {
                expectField("user_error", kVar);
                addFileMemberErrorAccessError = AddFileMemberError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                addFileMemberErrorAccessError = AddFileMemberError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("rate_limit".equals(tag)) {
                addFileMemberErrorAccessError = AddFileMemberError.RATE_LIMIT;
            } else if ("invalid_comment".equals(tag)) {
                addFileMemberErrorAccessError = AddFileMemberError.INVALID_COMMENT;
            } else {
                addFileMemberErrorAccessError = AddFileMemberError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return addFileMemberErrorAccessError;
        }
    }
}
