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
class DownloadArg {
    protected final String path;
    protected final String rev;

    public DownloadArg(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str;
        if (str2 != null) {
            if (str2.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", str2)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        this.rev = str2;
    }

    public DownloadArg(String str) {
        this(str, null);
    }

    public String getPath() {
        return this.path;
    }

    public String getRev() {
        return this.rev;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.rev});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DownloadArg downloadArg = (DownloadArg) obj;
            if (this.path == downloadArg.path || this.path.equals(downloadArg.path)) {
                if (this.rev == downloadArg.rev) {
                    return true;
                }
                if (this.rev != null && this.rev.equals(downloadArg.rev)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DownloadArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DownloadArg downloadArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("path");
            StoneSerializers.string().serialize(downloadArg.path, gVar);
            if (downloadArg.rev != null) {
                gVar.a("rev");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(downloadArg.rev, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DownloadArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("path".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("rev".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                DownloadArg downloadArg = new DownloadArg(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return downloadArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
