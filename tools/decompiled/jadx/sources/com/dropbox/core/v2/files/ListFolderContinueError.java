package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.LookupError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ListFolderContinueError {
    private Tag _tag;
    private LookupError pathValue;
    public static final ListFolderContinueError RESET = new ListFolderContinueError().withTag(Tag.RESET);
    public static final ListFolderContinueError OTHER = new ListFolderContinueError().withTag(Tag.OTHER);

    public enum Tag {
        PATH,
        RESET,
        OTHER
    }

    private ListFolderContinueError() {
    }

    private ListFolderContinueError withTag(Tag tag) {
        ListFolderContinueError listFolderContinueError = new ListFolderContinueError();
        listFolderContinueError._tag = tag;
        return listFolderContinueError;
    }

    private ListFolderContinueError withTagAndPath(Tag tag, LookupError lookupError) {
        ListFolderContinueError listFolderContinueError = new ListFolderContinueError();
        listFolderContinueError._tag = tag;
        listFolderContinueError.pathValue = lookupError;
        return listFolderContinueError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPath() {
        return this._tag == Tag.PATH;
    }

    public static ListFolderContinueError path(LookupError lookupError) {
        if (lookupError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ListFolderContinueError().withTagAndPath(Tag.PATH, lookupError);
    }

    public LookupError getPathValue() {
        if (this._tag != Tag.PATH) {
            throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this._tag.name());
        }
        return this.pathValue;
    }

    public boolean isReset() {
        return this._tag == Tag.RESET;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.pathValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFolderContinueError)) {
            return false;
        }
        ListFolderContinueError listFolderContinueError = (ListFolderContinueError) obj;
        if (this._tag != listFolderContinueError._tag) {
            return false;
        }
        switch (this._tag) {
            case PATH:
                return this.pathValue == listFolderContinueError.pathValue || this.pathValue.equals(listFolderContinueError.pathValue);
            case RESET:
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

    class Serializer extends UnionSerializer<ListFolderContinueError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ListFolderContinueError listFolderContinueError, g gVar) throws IOException {
            switch (listFolderContinueError.tag()) {
                case PATH:
                    gVar.e();
                    writeTag("path", gVar);
                    gVar.a("path");
                    LookupError.Serializer.INSTANCE.serialize(listFolderContinueError.pathValue, gVar);
                    gVar.f();
                    break;
                case RESET:
                    gVar.b("reset");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ListFolderContinueError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ListFolderContinueError listFolderContinueErrorPath;
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
            if ("path".equals(tag)) {
                expectField("path", kVar);
                listFolderContinueErrorPath = ListFolderContinueError.path(LookupError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("reset".equals(tag)) {
                listFolderContinueErrorPath = ListFolderContinueError.RESET;
            } else {
                listFolderContinueErrorPath = ListFolderContinueError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return listFolderContinueErrorPath;
        }
    }
}
