package com.dropbox.core.v2.common;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidPathRootError {
    protected final String pathRoot;

    public InvalidPathRootError(String str) {
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'pathRoot' does not match pattern");
        }
        this.pathRoot = str;
    }

    public InvalidPathRootError() {
        this(null);
    }

    public String getPathRoot() {
        return this.pathRoot;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.pathRoot});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        InvalidPathRootError invalidPathRootError = (InvalidPathRootError) obj;
        return this.pathRoot == invalidPathRootError.pathRoot || (this.pathRoot != null && this.pathRoot.equals(invalidPathRootError.pathRoot));
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<InvalidPathRootError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(InvalidPathRootError invalidPathRootError, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            if (invalidPathRootError.pathRoot != null) {
                gVar.a("path_root");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(invalidPathRootError.pathRoot, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public InvalidPathRootError deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path_root".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                InvalidPathRootError invalidPathRootError = new InvalidPathRootError(str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return invalidPathRootError;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
