package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.Confidentiality;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedFolderChangeConfidentialityDetails {
    protected final Confidentiality newValue;
    protected final String originalFolderName;
    protected final Confidentiality previousValue;
    protected final long targetAssetIndex;

    public SharedFolderChangeConfidentialityDetails(long j, String str, Confidentiality confidentiality, Confidentiality confidentiality2) {
        this.targetAssetIndex = j;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'originalFolderName' is null");
        }
        this.originalFolderName = str;
        if (confidentiality == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = confidentiality;
        this.previousValue = confidentiality2;
    }

    public SharedFolderChangeConfidentialityDetails(long j, String str, Confidentiality confidentiality) {
        this(j, str, confidentiality, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public Confidentiality getNewValue() {
        return this.newValue;
    }

    public Confidentiality getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetails = (SharedFolderChangeConfidentialityDetails) obj;
            if (this.targetAssetIndex == sharedFolderChangeConfidentialityDetails.targetAssetIndex && ((this.originalFolderName == sharedFolderChangeConfidentialityDetails.originalFolderName || this.originalFolderName.equals(sharedFolderChangeConfidentialityDetails.originalFolderName)) && (this.newValue == sharedFolderChangeConfidentialityDetails.newValue || this.newValue.equals(sharedFolderChangeConfidentialityDetails.newValue)))) {
                if (this.previousValue == sharedFolderChangeConfidentialityDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedFolderChangeConfidentialityDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedFolderChangeConfidentialityDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedFolderChangeConfidentialityDetails.targetAssetIndex), gVar);
            gVar.a("original_folder_name");
            StoneSerializers.string().serialize(sharedFolderChangeConfidentialityDetails.originalFolderName, gVar);
            gVar.a("new_value");
            Confidentiality.Serializer.INSTANCE.serialize(sharedFolderChangeConfidentialityDetails.newValue, gVar);
            if (sharedFolderChangeConfidentialityDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(Confidentiality.Serializer.INSTANCE).serialize(sharedFolderChangeConfidentialityDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedFolderChangeConfidentialityDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Confidentiality confidentiality = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Confidentiality confidentialityDeserialize = null;
                String strDeserialize = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("original_folder_name".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("new_value".equals(strD)) {
                        confidentialityDeserialize = Confidentiality.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        confidentiality = (Confidentiality) StoneSerializers.nullable(Confidentiality.Serializer.INSTANCE).deserialize(kVar);
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
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"original_folder_name\" missing.");
                }
                if (confidentialityDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedFolderChangeConfidentialityDetails sharedFolderChangeConfidentialityDetails = new SharedFolderChangeConfidentialityDetails(l.longValue(), strDeserialize, confidentialityDeserialize, confidentiality);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedFolderChangeConfidentialityDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
