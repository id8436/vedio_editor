package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SharePathError {
    private Tag _tag;
    private SharedFolderMetadata alreadySharedValue;
    public static final SharePathError IS_FILE = new SharePathError().withTag(Tag.IS_FILE);
    public static final SharePathError INSIDE_SHARED_FOLDER = new SharePathError().withTag(Tag.INSIDE_SHARED_FOLDER);
    public static final SharePathError CONTAINS_SHARED_FOLDER = new SharePathError().withTag(Tag.CONTAINS_SHARED_FOLDER);
    public static final SharePathError CONTAINS_APP_FOLDER = new SharePathError().withTag(Tag.CONTAINS_APP_FOLDER);
    public static final SharePathError CONTAINS_TEAM_FOLDER = new SharePathError().withTag(Tag.CONTAINS_TEAM_FOLDER);
    public static final SharePathError IS_APP_FOLDER = new SharePathError().withTag(Tag.IS_APP_FOLDER);
    public static final SharePathError INSIDE_APP_FOLDER = new SharePathError().withTag(Tag.INSIDE_APP_FOLDER);
    public static final SharePathError IS_PUBLIC_FOLDER = new SharePathError().withTag(Tag.IS_PUBLIC_FOLDER);
    public static final SharePathError INSIDE_PUBLIC_FOLDER = new SharePathError().withTag(Tag.INSIDE_PUBLIC_FOLDER);
    public static final SharePathError INVALID_PATH = new SharePathError().withTag(Tag.INVALID_PATH);
    public static final SharePathError IS_OSX_PACKAGE = new SharePathError().withTag(Tag.IS_OSX_PACKAGE);
    public static final SharePathError INSIDE_OSX_PACKAGE = new SharePathError().withTag(Tag.INSIDE_OSX_PACKAGE);
    public static final SharePathError OTHER = new SharePathError().withTag(Tag.OTHER);

    public enum Tag {
        IS_FILE,
        INSIDE_SHARED_FOLDER,
        CONTAINS_SHARED_FOLDER,
        CONTAINS_APP_FOLDER,
        CONTAINS_TEAM_FOLDER,
        IS_APP_FOLDER,
        INSIDE_APP_FOLDER,
        IS_PUBLIC_FOLDER,
        INSIDE_PUBLIC_FOLDER,
        ALREADY_SHARED,
        INVALID_PATH,
        IS_OSX_PACKAGE,
        INSIDE_OSX_PACKAGE,
        OTHER
    }

    private SharePathError() {
    }

    private SharePathError withTag(Tag tag) {
        SharePathError sharePathError = new SharePathError();
        sharePathError._tag = tag;
        return sharePathError;
    }

    private SharePathError withTagAndAlreadyShared(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        SharePathError sharePathError = new SharePathError();
        sharePathError._tag = tag;
        sharePathError.alreadySharedValue = sharedFolderMetadata;
        return sharePathError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isIsFile() {
        return this._tag == Tag.IS_FILE;
    }

    public boolean isInsideSharedFolder() {
        return this._tag == Tag.INSIDE_SHARED_FOLDER;
    }

    public boolean isContainsSharedFolder() {
        return this._tag == Tag.CONTAINS_SHARED_FOLDER;
    }

    public boolean isContainsAppFolder() {
        return this._tag == Tag.CONTAINS_APP_FOLDER;
    }

    public boolean isContainsTeamFolder() {
        return this._tag == Tag.CONTAINS_TEAM_FOLDER;
    }

    public boolean isIsAppFolder() {
        return this._tag == Tag.IS_APP_FOLDER;
    }

    public boolean isInsideAppFolder() {
        return this._tag == Tag.INSIDE_APP_FOLDER;
    }

    public boolean isIsPublicFolder() {
        return this._tag == Tag.IS_PUBLIC_FOLDER;
    }

    public boolean isInsidePublicFolder() {
        return this._tag == Tag.INSIDE_PUBLIC_FOLDER;
    }

    public boolean isAlreadyShared() {
        return this._tag == Tag.ALREADY_SHARED;
    }

    public static SharePathError alreadyShared(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new SharePathError().withTagAndAlreadyShared(Tag.ALREADY_SHARED, sharedFolderMetadata);
    }

    public SharedFolderMetadata getAlreadySharedValue() {
        if (this._tag != Tag.ALREADY_SHARED) {
            throw new IllegalStateException("Invalid tag: required Tag.ALREADY_SHARED, but was Tag." + this._tag.name());
        }
        return this.alreadySharedValue;
    }

    public boolean isInvalidPath() {
        return this._tag == Tag.INVALID_PATH;
    }

    public boolean isIsOsxPackage() {
        return this._tag == Tag.IS_OSX_PACKAGE;
    }

    public boolean isInsideOsxPackage() {
        return this._tag == Tag.INSIDE_OSX_PACKAGE;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.alreadySharedValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof SharePathError)) {
            SharePathError sharePathError = (SharePathError) obj;
            if (this._tag != sharePathError._tag) {
                return false;
            }
            switch (this._tag) {
                case IS_FILE:
                case INSIDE_SHARED_FOLDER:
                case CONTAINS_SHARED_FOLDER:
                case CONTAINS_APP_FOLDER:
                case CONTAINS_TEAM_FOLDER:
                case IS_APP_FOLDER:
                case INSIDE_APP_FOLDER:
                case IS_PUBLIC_FOLDER:
                case INSIDE_PUBLIC_FOLDER:
                case INVALID_PATH:
                case IS_OSX_PACKAGE:
                case INSIDE_OSX_PACKAGE:
                case OTHER:
                    return true;
                case ALREADY_SHARED:
                    return this.alreadySharedValue == sharePathError.alreadySharedValue || this.alreadySharedValue.equals(sharePathError.alreadySharedValue);
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

    class Serializer extends UnionSerializer<SharePathError> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SharePathError sharePathError, g gVar) throws IOException {
            switch (sharePathError.tag()) {
                case IS_FILE:
                    gVar.b("is_file");
                    break;
                case INSIDE_SHARED_FOLDER:
                    gVar.b("inside_shared_folder");
                    break;
                case CONTAINS_SHARED_FOLDER:
                    gVar.b("contains_shared_folder");
                    break;
                case CONTAINS_APP_FOLDER:
                    gVar.b("contains_app_folder");
                    break;
                case CONTAINS_TEAM_FOLDER:
                    gVar.b("contains_team_folder");
                    break;
                case IS_APP_FOLDER:
                    gVar.b("is_app_folder");
                    break;
                case INSIDE_APP_FOLDER:
                    gVar.b("inside_app_folder");
                    break;
                case IS_PUBLIC_FOLDER:
                    gVar.b("is_public_folder");
                    break;
                case INSIDE_PUBLIC_FOLDER:
                    gVar.b("inside_public_folder");
                    break;
                case ALREADY_SHARED:
                    gVar.e();
                    writeTag("already_shared", gVar);
                    SharedFolderMetadata.Serializer.INSTANCE.serialize(sharePathError.alreadySharedValue, gVar, true);
                    gVar.f();
                    break;
                case INVALID_PATH:
                    gVar.b("invalid_path");
                    break;
                case IS_OSX_PACKAGE:
                    gVar.b("is_osx_package");
                    break;
                case INSIDE_OSX_PACKAGE:
                    gVar.b("inside_osx_package");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public SharePathError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            SharePathError sharePathErrorAlreadyShared;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("is_file".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.IS_FILE;
            } else if ("inside_shared_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.INSIDE_SHARED_FOLDER;
            } else if ("contains_shared_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.CONTAINS_SHARED_FOLDER;
            } else if ("contains_app_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.CONTAINS_APP_FOLDER;
            } else if ("contains_team_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.CONTAINS_TEAM_FOLDER;
            } else if ("is_app_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.IS_APP_FOLDER;
            } else if ("inside_app_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.INSIDE_APP_FOLDER;
            } else if ("is_public_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.IS_PUBLIC_FOLDER;
            } else if ("inside_public_folder".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.INSIDE_PUBLIC_FOLDER;
            } else if ("already_shared".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.alreadyShared(SharedFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("invalid_path".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.INVALID_PATH;
            } else if ("is_osx_package".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.IS_OSX_PACKAGE;
            } else if ("inside_osx_package".equals(tag)) {
                sharePathErrorAlreadyShared = SharePathError.INSIDE_OSX_PACKAGE;
            } else {
                sharePathErrorAlreadyShared = SharePathError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return sharePathErrorAlreadyShared;
        }
    }
}
