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
class TransferFolderArg {
    protected final String sharedFolderId;
    protected final String toDropboxId;

    public TransferFolderArg(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'toDropboxId' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'toDropboxId' is shorter than 1");
        }
        this.toDropboxId = str2;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public String getToDropboxId() {
        return this.toDropboxId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.toDropboxId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TransferFolderArg transferFolderArg = (TransferFolderArg) obj;
            return (this.sharedFolderId == transferFolderArg.sharedFolderId || this.sharedFolderId.equals(transferFolderArg.sharedFolderId)) && (this.toDropboxId == transferFolderArg.toDropboxId || this.toDropboxId.equals(transferFolderArg.toDropboxId));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TransferFolderArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TransferFolderArg transferFolderArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(transferFolderArg.sharedFolderId, gVar);
            gVar.a("to_dropbox_id");
            StoneSerializers.string().serialize(transferFolderArg.toDropboxId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TransferFolderArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("shared_folder_id".equals(strD)) {
                        String str3 = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        strDeserialize = str3;
                    } else if ("to_dropbox_id".equals(strD)) {
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
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"to_dropbox_id\" missing.");
                }
                TransferFolderArg transferFolderArg = new TransferFolderArg(str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return transferFolderArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
