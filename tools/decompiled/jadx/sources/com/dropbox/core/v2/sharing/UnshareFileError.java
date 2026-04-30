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
public final class UnshareFileError {
    public static final UnshareFileError OTHER = new UnshareFileError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    private UnshareFileError() {
    }

    private UnshareFileError withTag(Tag tag) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError._tag = tag;
        return unshareFileError;
    }

    private UnshareFileError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError._tag = tag;
        unshareFileError.userErrorValue = sharingUserError;
        return unshareFileError;
    }

    private UnshareFileError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        UnshareFileError unshareFileError = new UnshareFileError();
        unshareFileError._tag = tag;
        unshareFileError.accessErrorValue = sharingFileAccessError;
        return unshareFileError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static UnshareFileError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UnshareFileError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
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

    public static UnshareFileError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UnshareFileError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
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
        if (obj == null || !(obj instanceof UnshareFileError)) {
            return false;
        }
        UnshareFileError unshareFileError = (UnshareFileError) obj;
        if (this._tag != unshareFileError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == unshareFileError.userErrorValue || this.userErrorValue.equals(unshareFileError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == unshareFileError.accessErrorValue || this.accessErrorValue.equals(unshareFileError.accessErrorValue);
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

    class Serializer extends UnionSerializer<UnshareFileError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UnshareFileError unshareFileError, g gVar) throws IOException {
            switch (unshareFileError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(unshareFileError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(unshareFileError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UnshareFileError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UnshareFileError unshareFileErrorAccessError;
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
                unshareFileErrorAccessError = UnshareFileError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                unshareFileErrorAccessError = UnshareFileError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                unshareFileErrorAccessError = UnshareFileError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return unshareFileErrorAccessError;
        }
    }
}
