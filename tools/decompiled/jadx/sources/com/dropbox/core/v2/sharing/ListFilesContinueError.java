package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharingUserError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListFilesContinueError {
    public static final ListFilesContinueError INVALID_CURSOR = new ListFilesContinueError().withTag(Tag.INVALID_CURSOR);
    public static final ListFilesContinueError OTHER = new ListFilesContinueError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharingUserError userErrorValue;

    public enum Tag {
        USER_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    private ListFilesContinueError() {
    }

    private ListFilesContinueError withTag(Tag tag) {
        ListFilesContinueError listFilesContinueError = new ListFilesContinueError();
        listFilesContinueError._tag = tag;
        return listFilesContinueError;
    }

    private ListFilesContinueError withTagAndUserError(Tag tag, SharingUserError sharingUserError) {
        ListFilesContinueError listFilesContinueError = new ListFilesContinueError();
        listFilesContinueError._tag = tag;
        listFilesContinueError.userErrorValue = sharingUserError;
        return listFilesContinueError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isUserError() {
        return this._tag == Tag.USER_ERROR;
    }

    public static ListFilesContinueError userError(SharingUserError sharingUserError) {
        if (sharingUserError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFilesContinueError().withTagAndUserError(Tag.USER_ERROR, sharingUserError);
    }

    public SharingUserError getUserErrorValue() {
        if (this._tag != Tag.USER_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.USER_ERROR, but was Tag." + this._tag.name());
        }
        return this.userErrorValue;
    }

    public boolean isInvalidCursor() {
        return this._tag == Tag.INVALID_CURSOR;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.userErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFilesContinueError)) {
            return false;
        }
        ListFilesContinueError listFilesContinueError = (ListFilesContinueError) obj;
        if (this._tag != listFilesContinueError._tag) {
            return false;
        }
        switch (this._tag) {
            case USER_ERROR:
                return this.userErrorValue == listFilesContinueError.userErrorValue || this.userErrorValue.equals(listFilesContinueError.userErrorValue);
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

    class Serializer extends UnionSerializer<ListFilesContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFilesContinueError listFilesContinueError, g gVar) throws IOException {
            switch (listFilesContinueError.tag()) {
                case USER_ERROR:
                    gVar.e();
                    writeTag("user_error", gVar);
                    gVar.a("user_error");
                    SharingUserError.Serializer.INSTANCE.serialize(listFilesContinueError.userErrorValue, gVar);
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
        public ListFilesContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFilesContinueError listFilesContinueErrorUserError;
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
                listFilesContinueErrorUserError = ListFilesContinueError.userError(SharingUserError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_cursor".equals(tag)) {
                listFilesContinueErrorUserError = ListFilesContinueError.INVALID_CURSOR;
            } else {
                listFilesContinueErrorUserError = ListFilesContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFilesContinueErrorUserError;
        }
    }
}
