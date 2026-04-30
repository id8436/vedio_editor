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
class UnshareFolderArg {
    protected final boolean leaveACopy;
    protected final String sharedFolderId;

    public UnshareFolderArg(String str, boolean z) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        this.leaveACopy = z;
    }

    public UnshareFolderArg(String str) {
        this(str, false);
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public boolean getLeaveACopy() {
        return this.leaveACopy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, Boolean.valueOf(this.leaveACopy)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UnshareFolderArg unshareFolderArg = (UnshareFolderArg) obj;
            return (this.sharedFolderId == unshareFolderArg.sharedFolderId || this.sharedFolderId.equals(unshareFolderArg.sharedFolderId)) && this.leaveACopy == unshareFolderArg.leaveACopy;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UnshareFolderArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UnshareFolderArg unshareFolderArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(unshareFolderArg.sharedFolderId, gVar);
            gVar.a("leave_a_copy");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(unshareFolderArg.leaveACopy), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UnshareFolderArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            String strDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = false;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        Boolean bool2 = bool;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("leave_a_copy".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    bool = boolDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                UnshareFolderArg unshareFolderArg = new UnshareFolderArg(str, bool.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return unshareFolderArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
