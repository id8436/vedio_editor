package com.dropbox.core.v2.common;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.common.InvalidPathRootError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class PathRootError {
    public static final PathRootError NO_PERMISSION = new PathRootError().withTag(Tag.NO_PERMISSION);
    public static final PathRootError OTHER = new PathRootError().withTag(Tag.OTHER);
    private Tag _tag;
    private InvalidPathRootError invalidValue;

    public enum Tag {
        INVALID,
        NO_PERMISSION,
        OTHER
    }

    private PathRootError() {
    }

    private PathRootError withTag(Tag tag) {
        PathRootError pathRootError = new PathRootError();
        pathRootError._tag = tag;
        return pathRootError;
    }

    private PathRootError withTagAndInvalid(Tag tag, InvalidPathRootError invalidPathRootError) {
        PathRootError pathRootError = new PathRootError();
        pathRootError._tag = tag;
        pathRootError.invalidValue = invalidPathRootError;
        return pathRootError;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInvalid() {
        return this._tag == Tag.INVALID;
    }

    public static PathRootError invalid(InvalidPathRootError invalidPathRootError) {
        if (invalidPathRootError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new PathRootError().withTagAndInvalid(Tag.INVALID, invalidPathRootError);
    }

    public InvalidPathRootError getInvalidValue() {
        if (this._tag != Tag.INVALID) {
            throw new IllegalStateException("Invalid tag: required Tag.INVALID, but was Tag." + this._tag.name());
        }
        return this.invalidValue;
    }

    public boolean isNoPermission() {
        return this._tag == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.invalidValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PathRootError)) {
            return false;
        }
        PathRootError pathRootError = (PathRootError) obj;
        if (this._tag != pathRootError._tag) {
            return false;
        }
        switch (this._tag) {
            case INVALID:
                return this.invalidValue == pathRootError.invalidValue || this.invalidValue.equals(pathRootError.invalidValue);
            case NO_PERMISSION:
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

    public class Serializer extends UnionSerializer<PathRootError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PathRootError pathRootError, g gVar) throws IOException {
            switch (pathRootError.tag()) {
                case INVALID:
                    gVar.e();
                    writeTag("invalid", gVar);
                    InvalidPathRootError.Serializer.INSTANCE.serialize(pathRootError.invalidValue, gVar, true);
                    gVar.f();
                    break;
                case NO_PERMISSION:
                    gVar.b("no_permission");
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PathRootError deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PathRootError pathRootErrorInvalid;
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
            if ("invalid".equals(tag)) {
                pathRootErrorInvalid = PathRootError.invalid(InvalidPathRootError.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("no_permission".equals(tag)) {
                pathRootErrorInvalid = PathRootError.NO_PERMISSION;
            } else {
                pathRootErrorInvalid = PathRootError.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return pathRootErrorInvalid;
        }
    }
}
