package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFolderAccessError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListFolderMembersContinueError {
    public static final ListFolderMembersContinueError INVALID_CURSOR = new ListFolderMembersContinueError().withTag(Tag.INVALID_CURSOR);
    public static final ListFolderMembersContinueError OTHER = new ListFolderMembersContinueError().withTag(Tag.OTHER);
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;

    public enum Tag {
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    private ListFolderMembersContinueError() {
    }

    private ListFolderMembersContinueError withTag(Tag tag) {
        ListFolderMembersContinueError listFolderMembersContinueError = new ListFolderMembersContinueError();
        listFolderMembersContinueError._tag = tag;
        return listFolderMembersContinueError;
    }

    private ListFolderMembersContinueError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        ListFolderMembersContinueError listFolderMembersContinueError = new ListFolderMembersContinueError();
        listFolderMembersContinueError._tag = tag;
        listFolderMembersContinueError.accessErrorValue = sharedFolderAccessError;
        return listFolderMembersContinueError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static ListFolderMembersContinueError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFolderMembersContinueError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
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
        return Arrays.hashCode(new Object[]{this._tag, this.accessErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFolderMembersContinueError)) {
            return false;
        }
        ListFolderMembersContinueError listFolderMembersContinueError = (ListFolderMembersContinueError) obj;
        if (this._tag != listFolderMembersContinueError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == listFolderMembersContinueError.accessErrorValue || this.accessErrorValue.equals(listFolderMembersContinueError.accessErrorValue);
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

    class Serializer extends UnionSerializer<ListFolderMembersContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFolderMembersContinueError listFolderMembersContinueError, g gVar) throws IOException {
            switch (listFolderMembersContinueError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(listFolderMembersContinueError.accessErrorValue, gVar);
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
        public ListFolderMembersContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFolderMembersContinueError listFolderMembersContinueErrorAccessError;
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
                listFolderMembersContinueErrorAccessError = ListFolderMembersContinueError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("invalid_cursor".equals(tag)) {
                listFolderMembersContinueErrorAccessError = ListFolderMembersContinueError.INVALID_CURSOR;
            } else {
                listFolderMembersContinueErrorAccessError = ListFolderMembersContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFolderMembersContinueErrorAccessError;
        }
    }
}
