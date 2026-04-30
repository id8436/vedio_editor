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
public final class UnmountFolderError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    public static final UnmountFolderError NO_PERMISSION = new UnmountFolderError().withTag(Tag.NO_PERMISSION);
    public static final UnmountFolderError NOT_UNMOUNTABLE = new UnmountFolderError().withTag(Tag.NOT_UNMOUNTABLE);
    public static final UnmountFolderError OTHER = new UnmountFolderError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        NO_PERMISSION,
        NOT_UNMOUNTABLE,
        OTHER
    }

    private UnmountFolderError() {
    }

    private UnmountFolderError withTag(Tag tag) {
        UnmountFolderError unmountFolderError = new UnmountFolderError();
        unmountFolderError._tag = tag;
        return unmountFolderError;
    }

    private UnmountFolderError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UnmountFolderError unmountFolderError = new UnmountFolderError();
        unmountFolderError._tag = tag;
        unmountFolderError.accessErrorValue = sharedFolderAccessError;
        return unmountFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static UnmountFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UnmountFolderError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isNotUnmountable() {
        return this._tag == Tag.NOT_UNMOUNTABLE;
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
        if (obj == null || !(obj instanceof UnmountFolderError)) {
            return false;
        }
        UnmountFolderError unmountFolderError = (UnmountFolderError) obj;
        if (this._tag != unmountFolderError._tag) {
            return false;
        }
        switch (this._tag) {
            case ACCESS_ERROR:
                return this.accessErrorValue == unmountFolderError.accessErrorValue || this.accessErrorValue.equals(unmountFolderError.accessErrorValue);
            case NO_PERMISSION:
                return true;
            case NOT_UNMOUNTABLE:
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

    class Serializer extends UnionSerializer<UnmountFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UnmountFolderError unmountFolderError, g gVar) throws IOException {
            switch (unmountFolderError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(unmountFolderError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case NOT_UNMOUNTABLE:
                    gVar.b("not_unmountable");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UnmountFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UnmountFolderError unmountFolderErrorAccessError;
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
                unmountFolderErrorAccessError = UnmountFolderError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("no_permission".equals(tag)) {
                unmountFolderErrorAccessError = UnmountFolderError.NO_PERMISSION;
            } else if ("not_unmountable".equals(tag)) {
                unmountFolderErrorAccessError = UnmountFolderError.NOT_UNMOUNTABLE;
            } else {
                unmountFolderErrorAccessError = UnmountFolderError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return unmountFolderErrorAccessError;
        }
    }
}
