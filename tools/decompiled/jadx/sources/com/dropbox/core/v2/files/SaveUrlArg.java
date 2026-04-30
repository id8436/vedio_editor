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
class SaveUrlArg {
    protected final String path;
    protected final String url;

    public SaveUrlArg(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str2;
    }

    public String getPath() {
        return this.path;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.url});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SaveUrlArg saveUrlArg = (SaveUrlArg) obj;
            return (this.path == saveUrlArg.path || this.path.equals(saveUrlArg.path)) && (this.url == saveUrlArg.url || this.url.equals(saveUrlArg.url));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SaveUrlArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SaveUrlArg saveUrlArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(saveUrlArg.path, gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(saveUrlArg.url, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SaveUrlArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("path".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("url".equals(strD)) {
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
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                SaveUrlArg saveUrlArg = new SaveUrlArg(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return saveUrlArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
