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
class RelocationArg extends RelocationPath {
    protected final boolean allowOwnershipTransfer;
    protected final boolean allowSharedFolder;
    protected final boolean autorename;

    public RelocationArg(String str, String str2, boolean z, boolean z2, boolean z3) {
        super(str, str2);
        this.allowSharedFolder = z;
        this.autorename = z2;
        this.allowOwnershipTransfer = z3;
    }

    public RelocationArg(String str, String str2) {
        this(str, str2, false, false, false);
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public String getFromPath() {
        return this.fromPath;
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public String getToPath() {
        return this.toPath;
    }

    public boolean getAllowSharedFolder() {
        return this.allowSharedFolder;
    }

    public boolean getAutorename() {
        return this.autorename;
    }

    public boolean getAllowOwnershipTransfer() {
        return this.allowOwnershipTransfer;
    }

    public static Builder newBuilder(String str, String str2) {
        return new Builder(str, str2);
    }

    public class Builder {
        protected boolean allowOwnershipTransfer;
        protected boolean allowSharedFolder;
        protected boolean autorename;
        protected final String fromPath;
        protected final String toPath;

        protected Builder(String str, String str2) {
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
            this.allowSharedFolder = false;
            this.autorename = false;
            this.allowOwnershipTransfer = false;
        }

        public Builder withAllowSharedFolder(Boolean bool) {
            if (bool != null) {
                this.allowSharedFolder = bool.booleanValue();
            } else {
                this.allowSharedFolder = false;
            }
            return this;
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }

        public Builder withAllowOwnershipTransfer(Boolean bool) {
            if (bool != null) {
                this.allowOwnershipTransfer = bool.booleanValue();
            } else {
                this.allowOwnershipTransfer = false;
            }
            return this;
        }

        public RelocationArg build() {
            return new RelocationArg(this.fromPath, this.toPath, this.allowSharedFolder, this.autorename, this.allowOwnershipTransfer);
        }
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.allowSharedFolder), Boolean.valueOf(this.autorename), Boolean.valueOf(this.allowOwnershipTransfer)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RelocationArg relocationArg = (RelocationArg) obj;
            return (this.fromPath == relocationArg.fromPath || this.fromPath.equals(relocationArg.fromPath)) && (this.toPath == relocationArg.toPath || this.toPath.equals(relocationArg.toPath)) && this.allowSharedFolder == relocationArg.allowSharedFolder && this.autorename == relocationArg.autorename && this.allowOwnershipTransfer == relocationArg.allowOwnershipTransfer;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.RelocationPath
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<RelocationArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RelocationArg relocationArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("from_path");
            StoneSerializers.string().serialize(relocationArg.fromPath, gVar);
            gVar.a("to_path");
            StoneSerializers.string().serialize(relocationArg.toPath, gVar);
            gVar.a("allow_shared_folder");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationArg.allowSharedFolder), gVar);
            gVar.a("autorename");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationArg.autorename), gVar);
            gVar.a("allow_ownership_transfer");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(relocationArg.allowOwnershipTransfer), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RelocationArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
            String strDeserialize2;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                Boolean bool2 = false;
                Boolean bool3 = false;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("from_path".equals(strD)) {
                        boolDeserialize2 = bool2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        String str3 = str;
                        boolDeserialize3 = bool;
                        strDeserialize2 = str3;
                    } else if ("to_path".equals(strD)) {
                        boolDeserialize3 = bool;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool4 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool4;
                    } else if ("allow_shared_folder".equals(strD)) {
                        strDeserialize2 = str;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        Boolean bool5 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool5;
                    } else if ("autorename".equals(strD)) {
                        strDeserialize = str2;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool3;
                        String str4 = str;
                        boolDeserialize3 = bool;
                        strDeserialize2 = str4;
                    } else if ("allow_ownership_transfer".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool6 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool6;
                        String str5 = str;
                        boolDeserialize3 = bool;
                        strDeserialize2 = str5;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool3;
                        Boolean bool7 = bool2;
                        strDeserialize = str2;
                        boolDeserialize2 = bool7;
                        String str6 = str;
                        boolDeserialize3 = bool;
                        strDeserialize2 = str6;
                    }
                    bool3 = boolDeserialize;
                    Boolean bool8 = boolDeserialize2;
                    str2 = strDeserialize;
                    bool2 = bool8;
                    String str7 = strDeserialize2;
                    bool = boolDeserialize3;
                    str = str7;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"from_path\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"to_path\" missing.");
                }
                RelocationArg relocationArg = new RelocationArg(str2, str, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return relocationArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
