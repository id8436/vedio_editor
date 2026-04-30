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
class SaveCopyReferenceArg {
    protected final String copyReference;
    protected final String path;

    public SaveCopyReferenceArg(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'copyReference' is null");
        }
        this.copyReference = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*", str2)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.path = str2;
    }

    public String getCopyReference() {
        return this.copyReference;
    }

    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.copyReference, this.path});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SaveCopyReferenceArg saveCopyReferenceArg = (SaveCopyReferenceArg) obj;
            return (this.copyReference == saveCopyReferenceArg.copyReference || this.copyReference.equals(saveCopyReferenceArg.copyReference)) && (this.path == saveCopyReferenceArg.path || this.path.equals(saveCopyReferenceArg.path));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<SaveCopyReferenceArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SaveCopyReferenceArg saveCopyReferenceArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("copy_reference");
            StoneSerializers.string().serialize(saveCopyReferenceArg.copyReference, gVar);
            gVar.a("path");
            StoneSerializers.string().serialize(saveCopyReferenceArg.path, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SaveCopyReferenceArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("copy_reference".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("path".equals(strD)) {
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
                    throw new j(kVar, "Required field \"copy_reference\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                SaveCopyReferenceArg saveCopyReferenceArg = new SaveCopyReferenceArg(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return saveCopyReferenceArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
