package com.dropbox.core.v2.sharing;

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
class RelinquishFileMembershipArg {
    protected final String file;

    public RelinquishFileMembershipArg(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'file' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
            throw new IllegalArgumentException("String 'file' does not match pattern");
        }
        this.file = str;
    }

    public String getFile() {
        return this.file;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.file});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RelinquishFileMembershipArg relinquishFileMembershipArg = (RelinquishFileMembershipArg) obj;
        return this.file == relinquishFileMembershipArg.file || this.file.equals(relinquishFileMembershipArg.file);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RelinquishFileMembershipArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RelinquishFileMembershipArg relinquishFileMembershipArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("file");
            StoneSerializers.string().serialize(relinquishFileMembershipArg.file, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RelinquishFileMembershipArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("file".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"file\" missing.");
                }
                RelinquishFileMembershipArg relinquishFileMembershipArg = new RelinquishFileMembershipArg(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return relinquishFileMembershipArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
