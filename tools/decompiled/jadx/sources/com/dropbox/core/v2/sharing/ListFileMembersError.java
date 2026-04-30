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
public final class ListFileMembersError {
    public static final ListFileMembersError OTHER = new ListFileMembersError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        OTHER
    }

    private ListFileMembersError() {
    }

    private ListFileMembersError withTag(Tag tag) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError._tag = tag;
        return listFileMembersError;
    }

    private ListFileMembersError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError._tag = tag;
        listFileMembersError.userErrorValue = sharingUserError;
        return listFileMembersError;
    }

    private ListFileMembersError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersError listFileMembersError = new ListFileMembersError();
        listFileMembersError._tag = tag;
        listFileMembersError.accessErrorValue = sharingFileAccessError;
        return listFileMembersError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static ListFileMembersError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
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

    public static ListFileMembersError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
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
        if (obj == null || !(obj instanceof ListFileMembersError)) {
            return false;
        }
        ListFileMembersError listFileMembersError = (ListFileMembersError) obj;
        if (this._tag != listFileMembersError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == listFileMembersError.userErrorValue || this.userErrorValue.equals(listFileMembersError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == listFileMembersError.accessErrorValue || this.accessErrorValue.equals(listFileMembersError.accessErrorValue);
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

    class Serializer extends UnionSerializer<ListFileMembersError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFileMembersError listFileMembersError, g gVar) throws IOException {
            switch (listFileMembersError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(listFileMembersError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(listFileMembersError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFileMembersError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFileMembersError listFileMembersErrorAccessError;
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
                listFileMembersErrorAccessError = ListFileMembersError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                listFileMembersErrorAccessError = ListFileMembersError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                listFileMembersErrorAccessError = ListFileMembersError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFileMembersErrorAccessError;
        }
    }
}
