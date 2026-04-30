package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.SharedContentDownloadsPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentChangeDownloadsPolicyDetails {
    protected final SharedContentDownloadsPolicy newValue;
    protected final String originalFolderName;
    protected final SharedContentDownloadsPolicy previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedContentChangeDownloadsPolicyDetails(long j, SharedContentDownloadsPolicy sharedContentDownloadsPolicy, String str, String str2, SharedContentDownloadsPolicy sharedContentDownloadsPolicy2) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (sharedContentDownloadsPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sharedContentDownloadsPolicy;
        this.previousValue = sharedContentDownloadsPolicy2;
    }

    public SharedContentChangeDownloadsPolicyDetails(long j, SharedContentDownloadsPolicy sharedContentDownloadsPolicy) {
        this(j, sharedContentDownloadsPolicy, null, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public SharedContentDownloadsPolicy getNewValue() {
        return this.newValue;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public SharedContentDownloadsPolicy getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, SharedContentDownloadsPolicy sharedContentDownloadsPolicy) {
        return new Builder(j, sharedContentDownloadsPolicy);
    }

    public class Builder {
        protected final SharedContentDownloadsPolicy newValue;
        protected String originalFolderName;
        protected SharedContentDownloadsPolicy previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, SharedContentDownloadsPolicy sharedContentDownloadsPolicy) {
            this.targetAssetIndex = j;
            if (sharedContentDownloadsPolicy == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = sharedContentDownloadsPolicy;
            this.originalFolderName = null;
            this.sharedFolderType = null;
            this.previousValue = null;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public Builder withPreviousValue(SharedContentDownloadsPolicy sharedContentDownloadsPolicy) {
            this.previousValue = sharedContentDownloadsPolicy;
            return this;
        }

        public SharedContentChangeDownloadsPolicyDetails build() {
            return new SharedContentChangeDownloadsPolicyDetails(this.targetAssetIndex, this.newValue, this.originalFolderName, this.sharedFolderType, this.previousValue);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedFolderType, this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails = (SharedContentChangeDownloadsPolicyDetails) obj;
            if (this.targetAssetIndex == sharedContentChangeDownloadsPolicyDetails.targetAssetIndex && ((this.newValue == sharedContentChangeDownloadsPolicyDetails.newValue || this.newValue.equals(sharedContentChangeDownloadsPolicyDetails.newValue)) && ((this.originalFolderName == sharedContentChangeDownloadsPolicyDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentChangeDownloadsPolicyDetails.originalFolderName))) && (this.sharedFolderType == sharedContentChangeDownloadsPolicyDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentChangeDownloadsPolicyDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedContentChangeDownloadsPolicyDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedContentChangeDownloadsPolicyDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedContentChangeDownloadsPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentChangeDownloadsPolicyDetails.targetAssetIndex), gVar);
            gVar.a("new_value");
            SharedContentDownloadsPolicy.Serializer.INSTANCE.serialize(sharedContentChangeDownloadsPolicyDetails.newValue, gVar);
            if (sharedContentChangeDownloadsPolicyDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeDownloadsPolicyDetails.originalFolderName, gVar);
            }
            if (sharedContentChangeDownloadsPolicyDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeDownloadsPolicyDetails.sharedFolderType, gVar);
            }
            if (sharedContentChangeDownloadsPolicyDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(SharedContentDownloadsPolicy.Serializer.INSTANCE).serialize(sharedContentChangeDownloadsPolicyDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentChangeDownloadsPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            SharedContentDownloadsPolicy sharedContentDownloadsPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                String str2 = null;
                SharedContentDownloadsPolicy sharedContentDownloadsPolicyDeserialize = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        sharedContentDownloadsPolicyDeserialize = SharedContentDownloadsPolicy.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("original_folder_name".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        sharedContentDownloadsPolicy = (SharedContentDownloadsPolicy) StoneSerializers.nullable(SharedContentDownloadsPolicy.Serializer.INSTANCE).deserialize(kVar);
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
                if (sharedContentDownloadsPolicyDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedContentChangeDownloadsPolicyDetails sharedContentChangeDownloadsPolicyDetails = new SharedContentChangeDownloadsPolicyDetails(l.longValue(), sharedContentDownloadsPolicyDeserialize, str2, str, sharedContentDownloadsPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentChangeDownloadsPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
