package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.RelocateAssetReferencesLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TeamFolderRenameDetails {
    protected final RelocateAssetReferencesLogInfo relocateActionDetails;

    public TeamFolderRenameDetails(RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfo) {
        if (relocateAssetReferencesLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'relocateActionDetails' is null");
        }
        this.relocateActionDetails = relocateAssetReferencesLogInfo;
    }

    public RelocateAssetReferencesLogInfo getRelocateActionDetails() {
        return this.relocateActionDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.relocateActionDetails});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamFolderRenameDetails teamFolderRenameDetails = (TeamFolderRenameDetails) obj;
        return this.relocateActionDetails == teamFolderRenameDetails.relocateActionDetails || this.relocateActionDetails.equals(teamFolderRenameDetails.relocateActionDetails);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<TeamFolderRenameDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TeamFolderRenameDetails teamFolderRenameDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("relocate_action_details");
            RelocateAssetReferencesLogInfo.Serializer.INSTANCE.serialize(teamFolderRenameDetails.relocateActionDetails, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TeamFolderRenameDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            RelocateAssetReferencesLogInfo relocateAssetReferencesLogInfoDeserialize = null;
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
                    if ("relocate_action_details".equals(strD)) {
                        relocateAssetReferencesLogInfoDeserialize = RelocateAssetReferencesLogInfo.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (relocateAssetReferencesLogInfoDeserialize == null) {
                    throw new j(kVar, "Required field \"relocate_action_details\" missing.");
                }
                TeamFolderRenameDetails teamFolderRenameDetails = new TeamFolderRenameDetails(relocateAssetReferencesLogInfoDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return teamFolderRenameDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
