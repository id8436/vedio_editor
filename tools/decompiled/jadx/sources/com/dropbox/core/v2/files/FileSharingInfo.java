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
public class FileSharingInfo extends SharingInfo {
    protected final String modifiedBy;
    protected final String parentSharedFolderId;

    public FileSharingInfo(boolean z, String str, String str2) {
        super(z);
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str;
        if (str2 != null) {
            if (str2.length() < 40) {
                throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
            }
            if (str2.length() > 40) {
                throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
            }
        }
        this.modifiedBy = str2;
    }

    public FileSharingInfo(boolean z, String str) {
        this(z, str, null);
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public boolean getReadOnly() {
        return this.readOnly;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getModifiedBy() {
        return this.modifiedBy;
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.parentSharedFolderId, this.modifiedBy}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileSharingInfo fileSharingInfo = (FileSharingInfo) obj;
            if (this.readOnly == fileSharingInfo.readOnly && (this.parentSharedFolderId == fileSharingInfo.parentSharedFolderId || this.parentSharedFolderId.equals(fileSharingInfo.parentSharedFolderId))) {
                if (this.modifiedBy == fileSharingInfo.modifiedBy) {
                    return true;
                }
                if (this.modifiedBy != null && this.modifiedBy.equals(fileSharingInfo.modifiedBy)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FileSharingInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileSharingInfo fileSharingInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("read_only");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(fileSharingInfo.readOnly), gVar);
            gVar.a("parent_shared_folder_id");
            StoneSerializers.string().serialize(fileSharingInfo.parentSharedFolderId, gVar);
            if (fileSharingInfo.modifiedBy != null) {
                gVar.a("modified_by");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileSharingInfo.modifiedBy, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileSharingInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            Boolean boolDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                Boolean bool = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("read_only".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = str3;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        str = str4;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        boolDeserialize = bool;
                        str = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("modified_by".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"read_only\" missing.");
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"parent_shared_folder_id\" missing.");
                }
                FileSharingInfo fileSharingInfo = new FileSharingInfo(bool.booleanValue(), str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileSharingInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
