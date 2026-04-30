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
public final class UnshareFolderError {
    private Tag _tag;
    private SharedFolderAccessError accessErrorValue;
    public static final UnshareFolderError TEAM_FOLDER = new UnshareFolderError().withTag(Tag.TEAM_FOLDER);
    public static final UnshareFolderError NO_PERMISSION = new UnshareFolderError().withTag(Tag.NO_PERMISSION);
    public static final UnshareFolderError TOO_MANY_FILES = new UnshareFolderError().withTag(Tag.TOO_MANY_FILES);
    public static final UnshareFolderError OTHER = new UnshareFolderError().withTag(Tag.OTHER);

    public enum Tag {
        ACCESS_ERROR,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    private UnshareFolderError() {
    }

    private UnshareFolderError withTag(Tag tag) {
        UnshareFolderError unshareFolderError = new UnshareFolderError();
        unshareFolderError._tag = tag;
        return unshareFolderError;
    }

    private UnshareFolderError withTagAndAccessError(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UnshareFolderError unshareFolderError = new UnshareFolderError();
        unshareFolderError._tag = tag;
        unshareFolderError.accessErrorValue = sharedFolderAccessError;
        return unshareFolderError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAccessError() {
        return this._tag == Tag.ACCESS_ERROR;
    }

    public static UnshareFolderError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new UnshareFolderError().withTagAndAccessError(Tag.ACCESS_ERROR, sharedFolderAccessError);
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this._tag != Tag.ACCESS_ERROR) {
            throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this._tag.name());
        }
        return this.accessErrorValue;
    }

    public boolean isTeamFolder() {
        return this._tag == Tag.TEAM_FOLDER;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isTooManyFiles() {
        return this._tag == Tag.TOO_MANY_FILES;
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
        if (obj != null && (obj instanceof UnshareFolderError)) {
            UnshareFolderError unshareFolderError = (UnshareFolderError) obj;
            if (this._tag != unshareFolderError._tag) {
                return false;
            }
            switch (this._tag) {
                case ACCESS_ERROR:
                    return this.accessErrorValue == unshareFolderError.accessErrorValue || this.accessErrorValue.equals(unshareFolderError.accessErrorValue);
                case TEAM_FOLDER:
                case NO_PERMISSION:
                case TOO_MANY_FILES:
                case OTHER:
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<UnshareFolderError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UnshareFolderError unshareFolderError, g gVar) throws IOException {
            switch (unshareFolderError.tag()) {
                case ACCESS_ERROR:
                    gVar.e();
                    writeTag("access_error", gVar);
                    gVar.a("access_error");
                    SharedFolderAccessError.Serializer.INSTANCE.serialize(unshareFolderError.accessErrorValue, gVar);
                    gVar.f();
                    break;
                case TEAM_FOLDER:
                    gVar.b("team_folder");
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                case TOO_MANY_FILES:
                    gVar.b("too_many_files");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public UnshareFolderError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            UnshareFolderError unshareFolderErrorAccessError;
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
                unshareFolderErrorAccessError = UnshareFolderError.accessError(SharedFolderAccessError.Serializer.INSTANCE.deserialize(kVar));
            } else if ("team_folder".equals(tag)) {
                unshareFolderErrorAccessError = UnshareFolderError.TEAM_FOLDER;
            } else if ("no_permission".equals(tag)) {
                unshareFolderErrorAccessError = UnshareFolderError.NO_PERMISSION;
            } else if ("too_many_files".equals(tag)) {
                unshareFolderErrorAccessError = UnshareFolderError.TOO_MANY_FILES;
            } else {
                unshareFolderErrorAccessError = UnshareFolderError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return unshareFolderErrorAccessError;
        }
    }
}
