package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SfAddGroupDetails {
    protected final String originalFolderName;
    protected final String sharingPermission;
    protected final long targetAssetIndex;
    protected final String teamName;

    public SfAddGroupDetails(long j, String str, String str2, String str3) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        this.sharingPermission = str3;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'teamName' is null");
        }
        this.teamName = str2;
    }

    public SfAddGroupDetails(long j, String str, String str2) {
        this(j, str, str2, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getTeamName() {
        return this.teamName;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharingPermission, this.teamName});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SfAddGroupDetails sfAddGroupDetails = (SfAddGroupDetails) obj;
            if (this.targetAssetIndex == sfAddGroupDetails.targetAssetIndex && ((this.originalFolderName == sfAddGroupDetails.originalFolderName || this.originalFolderName.equals(sfAddGroupDetails.originalFolderName)) && (this.teamName == sfAddGroupDetails.teamName || this.teamName.equals(sfAddGroupDetails.teamName)))) {
                if (this.sharingPermission == sfAddGroupDetails.sharingPermission) {
                    return true;
                }
                if (this.sharingPermission != null && this.sharingPermission.equals(sfAddGroupDetails.sharingPermission)) {
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

    class Serializer extends StructSerializer<SfAddGroupDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SfAddGroupDetails sfAddGroupDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sfAddGroupDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sfAddGroupDetails.originalFolderName, gVar);
            gVar.a("team_name");
            StoneSerializers.string().serialize(sfAddGroupDetails.teamName, gVar);
            if (sfAddGroupDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sfAddGroupDetails.sharingPermission, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SfAddGroupDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            String str = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String strDeserialize = null;
                String strDeserialize2 = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("original_folder_name".equals(strD)) {
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("team_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("sharing_permission".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (strDeserialize2 == null) {
                    throw new j(kVar, "Required field \"original_folder_name\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"team_name\" missing.");
                }
                SfAddGroupDetails sfAddGroupDetails = new SfAddGroupDetails(l.longValue(), strDeserialize2, strDeserialize, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sfAddGroupDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
