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
public final class ListDocsCursorError {
    public static final ListDocsCursorError OTHER = new ListDocsCursorError().withTag(Tag.OTHER);
    private Tag _tag;
    private PaperApiCursorError cursorErrorValue;

    public enum Tag {
        CURSOR_ERROR,
        OTHER
    }

    private ListDocsCursorError() {
    }

    private ListDocsCursorError withTag(Tag tag) {
        ListDocsCursorError listDocsCursorError = new ListDocsCursorError();
        listDocsCursorError._tag = tag;
        return listDocsCursorError;
    }

    private ListDocsCursorError withTagAndCursorError(Tag tag, PaperApiCursorError paperApiCursorError) {
        ListDocsCursorError listDocsCursorError = new ListDocsCursorError();
        listDocsCursorError._tag = tag;
        listDocsCursorError.cursorErrorValue = paperApiCursorError;
        return listDocsCursorError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isCursorError() {
        return this._tag == Tag.CURSOR_ERROR;
    }

    public static ListDocsCursorError cursorError(PaperApiCursorError paperApiCursorError) {
        if (paperApiCursorError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListDocsCursorError().withTagAndCursorError(Tag.CURSOR_ERROR, paperApiCursorError);
    }

    public PaperApiCursorError getCursorErrorValue() {
        if (this._tag != Tag.CURSOR_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.CURSOR_ERROR, but was Tag." + this._tag.name());
        }
        return this.cursorErrorValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.cursorErrorValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListDocsCursorError)) {
            return false;
        }
        ListDocsCursorError listDocsCursorError = (ListDocsCursorError) obj;
        if (this._tag != listDocsCursorError._tag) {
            return false;
        }
        switch (this._tag) {
            case CURSOR_ERROR:
                return this.cursorErrorValue == listDocsCursorError.cursorErrorValue || this.cursorErrorValue.equals(listDocsCursorError.cursorErrorValue);
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

    class Serializer extends UnionSerializer<ListDocsCursorError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListDocsCursorError listDocsCursorError, g gVar) throws IOException {
            switch (listDocsCursorError.tag()) {
                case CURSOR_ERROR:
                    gVar.e();
                    writeTag("cursor_error", gVar);
                    gVar.a("cursor_error");
                    PaperApiCursorError.Serializer.INSTANCE.serialize(listDocsCursorError.cursorErrorValue, gVar);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListDocsCursorError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListDocsCursorError listDocsCursorErrorCursorError;
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
            if ("cursor_error".equals(tag)) {
                expectField("cursor_error", kVar);
                listDocsCursorErrorCursorError = ListDocsCursorError.cursorError(PaperApiCursorError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                listDocsCursorErrorCursorError = ListDocsCursorError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listDocsCursorErrorCursorError;
        }
    }
}
