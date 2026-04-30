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
public final class ListFileMembersContinueError {
    public static final ListFileMembersContinueError INVALID_CURSOR = new ListFileMembersContinueError().withTag(Tag.INVALID_CURSOR);
    public static final ListFileMembersContinueError OTHER = new ListFileMembersContinueError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingFileAccessError accessErrorValue;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    private ListFileMembersContinueError() {
    }

    private ListFileMembersContinueError withTag(Tag tag) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError._tag = tag;
        return listFileMembersContinueError;
    }

    private ListFileMembersContinueError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError._tag = tag;
        listFileMembersContinueError.userErrorValue = sharingUserError;
        return listFileMembersContinueError;
    }

    private ListFileMembersContinueError withTagAndAccessError(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersContinueError listFileMembersContinueError = new ListFileMembersContinueError();
        listFileMembersContinueError._tag = tag;
        listFileMembersContinueError.accessErrorValue = sharingFileAccessError;
        return listFileMembersContinueError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static ListFileMembersContinueError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersContinueError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
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

    public static ListFileMembersContinueError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFileMembersContinueError().withTagAndAccessError(Tag.ACCESS_ERROR, sharingFileAccessError);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isInvalidCursor() {
        return this._tag == Tag.INVALID_CURSOR;
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
        if (obj == null || !(obj instanceof ListFileMembersContinueError)) {
            return false;
        }
        ListFileMembersContinueError listFileMembersContinueError = (ListFileMembersContinueError) obj;
        if (this._tag != listFileMembersContinueError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == listFileMembersContinueError.userErrorValue || this.userErrorValue.equals(listFileMembersContinueError.userErrorValue);
            case ACCESS_ERROR:
                return this.accessErrorValue == listFileMembersContinueError.accessErrorValue || this.accessErrorValue.equals(listFileMembersContinueError.accessErrorValue);
            case INVALID_CURSOR:
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

    class Serializer extends UnionSerializer<ListFileMembersContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFileMembersContinueError listFileMembersContinueError, g gVar) throws IOException {
            switch (listFileMembersContinueError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(listFileMembersContinueError.userErrorValue, gVar);
                    gVar.f();
                    break;
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharingFileAccessError.Serializer.INSTANCE.serialize(listFileMembersContinueError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case INVALID_CURSOR:
                    gVar.b("invalid_cursor");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFileMembersContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFileMembersContinueError listFileMembersContinueErrorAccessError;
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
                listFileMembersContinueErrorAccessError = ListFileMembersContinueError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("access_error".equals(tag)) {
                expectField("access_error", kVar);
                listFileMembersContinueErrorAccessError = ListFileMembersContinueError.accessError(SharingFileAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_cursor".equals(tag)) {
                listFileMembersContinueErrorAccessError = ListFileMembersContinueError.INVALID_CURSOR;
            } else {
                listFileMembersContinueErrorAccessError = ListFileMembersContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFileMembersContinueErrorAccessError;
        }
    }
}
