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
public class FolderSharingInfo extends SharingInfo {
    protected final boolean noAccess;
    protected final String parentSharedFolderId;
    protected final String sharedFolderId;
    protected final boolean traverseOnly;

    public FolderSharingInfo(boolean z, String str, String str2, boolean z2, boolean z3) {
        super(z);
        if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        this.parentSharedFolderId = str;
        if (str2 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str2;
        this.traverseOnly = z2;
        this.noAccess = z3;
    }

    public FolderSharingInfo(boolean z) {
        this(z, null, null, false, false);
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public boolean getReadOnly() {
        return this.readOnly;
    }

    public String getParentSharedFolderId() {
        return this.parentSharedFolderId;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public boolean getTraverseOnly() {
        return this.traverseOnly;
    }

    public boolean getNoAccess() {
        return this.noAccess;
    }

    public static Builder newBuilder(boolean z) {
        return new Builder(z);
    }

    public class Builder {
        protected final boolean readOnly;
        protected String parentSharedFolderId = null;
        protected String sharedFolderId = null;
        protected boolean traverseOnly = false;
        protected boolean noAccess = false;

        protected Builder(boolean z) {
            this.readOnly = z;
        }

        public Builder withParentSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
            }
            this.parentSharedFolderId = str;
            return this;
        }

        public Builder withSharedFolderId(String str) {
            if (str != null && !Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
            return this;
        }

        public Builder withTraverseOnly(Boolean bool) {
            if (bool != null) {
                this.traverseOnly = bool.booleanValue();
            } else {
                this.traverseOnly = false;
            }
            return this;
        }

        public Builder withNoAccess(Boolean bool) {
            if (bool != null) {
                this.noAccess = bool.booleanValue();
            } else {
                this.noAccess = false;
            }
            return this;
        }

        public FolderSharingInfo build() {
            return new FolderSharingInfo(this.readOnly, this.parentSharedFolderId, this.sharedFolderId, this.traverseOnly, this.noAccess);
        }
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.parentSharedFolderId, this.sharedFolderId, Boolean.valueOf(this.traverseOnly), Boolean.valueOf(this.noAccess)}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.files.SharingInfo
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderSharingInfo folderSharingInfo = (FolderSharingInfo) obj;
            return this.readOnly == folderSharingInfo.readOnly && (this.parentSharedFolderId == folderSharingInfo.parentSharedFolderId || (this.parentSharedFolderId != null && this.parentSharedFolderId.equals(folderSharingInfo.parentSharedFolderId))) && ((this.sharedFolderId == folderSharingInfo.sharedFolderId || (this.sharedFolderId != null && this.sharedFolderId.equals(folderSharingInfo.sharedFolderId))) && this.traverseOnly == folderSharingInfo.traverseOnly && this.noAccess == folderSharingInfo.noAccess);
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

    class Serializer extends StructSerializer<FolderSharingInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderSharingInfo folderSharingInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("read_only");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(folderSharingInfo.readOnly), gVar);
            if (folderSharingInfo.parentSharedFolderId != null) {
                gVar.a("parent_shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderSharingInfo.parentSharedFolderId, gVar);
            }
            if (folderSharingInfo.sharedFolderId != null) {
                gVar.a("shared_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(folderSharingInfo.sharedFolderId, gVar);
            }
            gVar.a("traverse_only");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(folderSharingInfo.traverseOnly), gVar);
            gVar.a("no_access");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(folderSharingInfo.noAccess), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderSharingInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Boolean boolDeserialize2;
            Boolean boolDeserialize3;
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
                String str2 = null;
                Boolean bool3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("read_only".equals(strD)) {
                        boolDeserialize3 = bool;
                        boolDeserialize2 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("parent_shared_folder_id".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool4 = bool;
                        boolDeserialize2 = bool3;
                        boolDeserialize3 = bool4;
                    } else if ("shared_folder_id".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        boolDeserialize = bool2;
                        Boolean bool5 = bool;
                        boolDeserialize2 = bool3;
                        boolDeserialize3 = bool5;
                    } else if ("traverse_only".equals(strD)) {
                        boolDeserialize2 = bool3;
                        boolDeserialize3 = StoneSerializers.boolean_().deserialize(kVar);
                        boolDeserialize = bool2;
                    } else if ("no_access".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        Boolean bool6 = bool;
                        boolDeserialize2 = bool3;
                        boolDeserialize3 = bool6;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool2;
                        Boolean bool7 = bool;
                        boolDeserialize2 = bool3;
                        boolDeserialize3 = bool7;
                    }
                    bool2 = boolDeserialize;
                    Boolean bool8 = boolDeserialize3;
                    bool3 = boolDeserialize2;
                    bool = bool8;
                }
                if (bool3 == null) {
                    throw new j(kVar, "Required field \"read_only\" missing.");
                }
                FolderSharingInfo folderSharingInfo = new FolderSharingInfo(bool3.booleanValue(), str2, str, bool.booleanValue(), bool2.booleanValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderSharingInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
