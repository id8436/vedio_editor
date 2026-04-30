package com.dropbox.core.v2.files;

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
public class RelocationPath {
    protected final String fromPath;
    protected final String toPath;

    public RelocationPath(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'fromPath' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
            throw new IllegalArgumentException("String 'fromPath' does not match pattern");
        }
        this.fromPath = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'toPath' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str2)) {
            throw new IllegalArgumentException("String 'toPath' does not match pattern");
        }
        this.toPath = str2;
    }

    public String getFromPath() {
        return this.fromPath;
    }

    public String getToPath() {
        return this.toPath;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fromPath, this.toPath});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RelocationPath relocationPath = (RelocationPath) obj;
            return (this.fromPath == relocationPath.fromPath || this.fromPath.equals(relocationPath.fromPath)) && (this.toPath == relocationPath.toPath || this.toPath.equals(relocationPath.toPath));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RelocationPath> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RelocationPath relocationPath, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("from_path");
            StoneSerializers.string().serialize(relocationPath.fromPath, gVar);
            gVar.a("to_path");
            StoneSerializers.string().serialize(relocationPath.toPath, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RelocationPath deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("from_path".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("to_path".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"from_path\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"to_path\" missing.");
                }
                RelocationPath relocationPath = new RelocationPath(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return relocationPath;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
