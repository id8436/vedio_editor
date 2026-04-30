package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.paper.PaperApiCursorError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListUsersCursorError {
    private Tag _tag;
    private PaperApiCursorError cursorErrorValue;
    public static final ListUsersCursorError INSUFFICIENT_PERMISSIONS = new ListUsersCursorError().withTag(Tag.INSUFFICIENT_PERMISSIONS);
    public static final ListUsersCursorError OTHER = new ListUsersCursorError().withTag(Tag.OTHER);
    public static final ListUsersCursorError DOC_NOT_FOUND = new ListUsersCursorError().withTag(Tag.DOC_NOT_FOUND);

    public enum Tag {
        INSUFFICIENT_PERMISSIONS,
        OTHER,
        DOC_NOT_FOUND,
        CURSOR_ERROR
    }

    private ListUsersCursorError() {
    }

    private ListUsersCursorError withTag(Tag tag) {
        ListUsersCursorError listUsersCursorError = new ListUsersCursorError();
        listUsersCursorError._tag = tag;
        return listUsersCursorError;
    }

    private ListUsersCursorError withTagAndCursorError(Tag tag, PaperApiCursorError paperApiCursorError) {
        ListUsersCursorError listUsersCursorError = new ListUsersCursorError();
        listUsersCursorError._tag = tag;
        listUsersCursorError.cursorErrorValue = paperApiCursorError;
        return listUsersCursorError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInsufficientPermissions() {
        return this._tag == Tag.INSUFFICIENT_PERMISSIONS;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public boolean isDocNotFound() {
        return this._tag == Tag.DOC_NOT_FOUND;
    }

    public boolean isCursorError() {
        return this._tag == Tag.CURSOR_ERROR;
    }

    public static ListUsersCursorError cursorError(PaperApiCursorError paperApiCursorError) {
        if (paperApiCursorError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListUsersCursorError().withTagAndCursorError(Tag.CURSOR_ERROR, paperApiCursorError);
    }

    public PaperApiCursorError getCursorErrorValue() {
        if (this._tag != Tag.CURSOR_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.CURSOR_ERROR, but was Tag." + this._tag.name());
        }
        return this.cursorErrorValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.cursorErrorValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListUsersCursorError)) {
            return false;
        }
        ListUsersCursorError listUsersCursorError = (ListUsersCursorError) obj;
        if (this._tag != listUsersCursorError._tag) {
            return false;
        }
        switch (this._tag) {
            case INSUFFICIENT_PERMISSIONS:
                return true;
            case OTHER:
                return true;
            case DOC_NOT_FOUND:
                return true;
            case CURSOR_ERROR:
                return this.cursorErrorValue == listUsersCursorError.cursorErrorValue || this.cursorErrorValue.equals(listUsersCursorError.cursorErrorValue);
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

    class Serializer extends UnionSerializer<ListUsersCursorError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListUsersCursorError listUsersCursorError, g gVar) throws IOException {
            switch (listUsersCursorError.tag()) {
                case INSUFFICIENT_PERMISSIONS:
                    gVar.b("insufficient_permissions");
                    return;
                case OTHER:
                    gVar.b("other");
                    return;
                case DOC_NOT_FOUND:
                    gVar.b("doc_not_found");
                    return;
                case CURSOR_ERROR:
                    gVar.e();
                    writeTag("cursor_error", gVar);
                    gVar.a("cursor_error");
                    PaperApiCursorError.Serializer.INSTANCE.serialize(listUsersCursorError.cursorErrorValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + listUsersCursorError.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListUsersCursorError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListUsersCursorError listUsersCursorErrorCursorError;
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
            if ("insufficient_permissions".equals(tag)) {
                listUsersCursorErrorCursorError = ListUsersCursorError.INSUFFICIENT_PERMISSIONS;
            } else if ("other".equals(tag)) {
                listUsersCursorErrorCursorError = ListUsersCursorError.OTHER;
            } else if ("doc_not_found".equals(tag)) {
                listUsersCursorErrorCursorError = ListUsersCursorError.DOC_NOT_FOUND;
            } else if ("cursor_error".equals(tag)) {
                expectField("cursor_error", kVar);
                listUsersCursorErrorCursorError = ListUsersCursorError.cursorError(PaperApiCursorError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listUsersCursorErrorCursorError;
        }
    }
}
