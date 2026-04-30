package com.dropbox.core.v2.auth;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.auth.InvalidAccountTypeError;
import com.dropbox.core.v2.auth.PaperAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessError {
    public static final AccessError OTHER = new AccessError().withTag(Tag.OTHER);
    private Tag _tag;
    private InvalidAccountTypeError invalidAccountTypeValue;
    private PaperAccessError paperAccessDeniedValue;

    public enum Tag {
        INVALID_ACCOUNT_TYPE,
        PAPER_ACCESS_DENIED,
        OTHER
    }

    private AccessError() {
    }

    private AccessError withTag(Tag tag) {
        AccessError accessError = new AccessError();
        accessError._tag = tag;
        return accessError;
    }

    private AccessError withTagAndInvalidAccountType(Tag tag, InvalidAccountTypeError invalidAccountTypeError) {
        AccessError accessError = new AccessError();
        accessError._tag = tag;
        accessError.invalidAccountTypeValue = invalidAccountTypeError;
        return accessError;
    }

    private AccessError withTagAndPaperAccessDenied(Tag tag, PaperAccessError paperAccessError) {
        AccessError accessError = new AccessError();
        accessError._tag = tag;
        accessError.paperAccessDeniedValue = paperAccessError;
        return accessError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInvalidAccountType() {
        return this._tag == Tag.INVALID_ACCOUNT_TYPE;
    }

    public static AccessError invalidAccountType(InvalidAccountTypeError invalidAccountTypeError) {
        if (invalidAccountTypeError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessError().withTagAndInvalidAccountType(Tag.INVALID_ACCOUNT_TYPE, invalidAccountTypeError);
    }

    public InvalidAccountTypeError getInvalidAccountTypeValue() {
        if (this._tag != Tag.INVALID_ACCOUNT_TYPE) {
            throw new IllegalStateException("Invalid tag: required Tag.INVALID_ACCOUNT_TYPE, but was Tag." + this._tag.name());
        }
        return this.invalidAccountTypeValue;
    }

    public boolean isPaperAccessDenied() {
        return this._tag == Tag.PAPER_ACCESS_DENIED;
    }

    public static AccessError paperAccessDenied(PaperAccessError paperAccessError) {
        if (paperAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AccessError().withTagAndPaperAccessDenied(Tag.PAPER_ACCESS_DENIED, paperAccessError);
    }

    public PaperAccessError getPaperAccessDeniedValue() {
        if (this._tag != Tag.PAPER_ACCESS_DENIED) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_ACCESS_DENIED, but was Tag." + this._tag.name());
        }
        return this.paperAccessDeniedValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.invalidAccountTypeValue, this.paperAccessDeniedValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessError)) {
            return false;
        }
        AccessError accessError = (AccessError) obj;
        if (this._tag != accessError._tag) {
            return false;
        }
        switch (this._tag) {
            case INVALID_ACCOUNT_TYPE:
                return this.invalidAccountTypeValue == accessError.invalidAccountTypeValue || this.invalidAccountTypeValue.equals(accessError.invalidAccountTypeValue);
            case PAPER_ACCESS_DENIED:
                return this.paperAccessDeniedValue == accessError.paperAccessDeniedValue || this.paperAccessDeniedValue.equals(accessError.paperAccessDeniedValue);
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

    public class Serializer extends UnionSerializer<AccessError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AccessError accessError, g gVar) throws IOException {
            switch (accessError.tag()) {
                case INVALID_ACCOUNT_TYPE:
                    gVar.e();
                    writeTag("invalid_account_type", gVar);
                    gVar.a("invalid_account_type");
                    InvalidAccountTypeError.Serializer.INSTANCE.serialize(accessError.invalidAccountTypeValue, gVar);
                    gVar.f();
                    break;
                case PAPER_ACCESS_DENIED:
                    gVar.e();
                    writeTag("paper_access_denied", gVar);
                    gVar.a("paper_access_denied");
                    PaperAccessError.Serializer.INSTANCE.serialize(accessError.paperAccessDeniedValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AccessError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AccessError accessErrorPaperAccessDenied;
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
            if ("invalid_account_type".equals(tag)) {
                expectField("invalid_account_type", kVar);
                accessErrorPaperAccessDenied = AccessError.invalidAccountType(InvalidAccountTypeError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("paper_access_denied".equals(tag)) {
                expectField("paper_access_denied", kVar);
                accessErrorPaperAccessDenied = AccessError.paperAccessDenied(PaperAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                accessErrorPaperAccessDenied = AccessError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return accessErrorPaperAccessDenied;
        }
    }
}
