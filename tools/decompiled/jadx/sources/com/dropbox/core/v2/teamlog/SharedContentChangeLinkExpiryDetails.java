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
public class SharedContentChangeLinkExpiryDetails {
    protected final long expirationDays;
    protected final String expirationStartDate;
    protected final String originalFolderName;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedContentChangeLinkExpiryDetails(long j, String str, long j2, String str2, String str3) {
        this.targetAssetIndex = j;
        this.originalFolderName = str2;
        this.sharedFolderType = str3;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'expirationStartDate' is null");
        }
        this.expirationStartDate = str;
        this.expirationDays = j2;
    }

    public SharedContentChangeLinkExpiryDetails(long j, String str, long j2) {
        this(j, str, j2, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getExpirationStartDate() {
        return this.expirationStartDate;
    }

    public long getExpirationDays() {
        return this.expirationDays;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public static Builder newBuilder(long j, String str, long j2) {
        return new Builder(j, str, j2);
    }

    public class Builder {
        protected final long expirationDays;
        protected final String expirationStartDate;
        protected String originalFolderName;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, String str, long j2) {
            this.targetAssetIndex = j;
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'expirationStartDate' is null");
            }
            this.expirationStartDate = str;
            this.expirationDays = j2;
            this.originalFolderName = null;
            this.sharedFolderType = null;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public SharedContentChangeLinkExpiryDetails build() {
            return new SharedContentChangeLinkExpiryDetails(this.targetAssetIndex, this.expirationStartDate, this.expirationDays, this.originalFolderName, this.sharedFolderType);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.sharedFolderType, this.expirationStartDate, Long.valueOf(this.expirationDays)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails = (SharedContentChangeLinkExpiryDetails) obj;
            if (this.targetAssetIndex == sharedContentChangeLinkExpiryDetails.targetAssetIndex && ((this.expirationStartDate == sharedContentChangeLinkExpiryDetails.expirationStartDate || this.expirationStartDate.equals(sharedContentChangeLinkExpiryDetails.expirationStartDate)) && this.expirationDays == sharedContentChangeLinkExpiryDetails.expirationDays && (this.originalFolderName == sharedContentChangeLinkExpiryDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentChangeLinkExpiryDetails.originalFolderName))))) {
                if (this.sharedFolderType == sharedContentChangeLinkExpiryDetails.sharedFolderType) {
                    return true;
                }
                if (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentChangeLinkExpiryDetails.sharedFolderType)) {
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

    class Serializer extends StructSerializer<SharedContentChangeLinkExpiryDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentChangeLinkExpiryDetails.targetAssetIndex), gVar);
            gVar.a("expiration_start_date");
            StoneSerializers.string().serialize(sharedContentChangeLinkExpiryDetails.expirationStartDate, gVar);
            gVar.a("expiration_days");
            StoneSerializers.int64().serialize(Long.valueOf(sharedContentChangeLinkExpiryDetails.expirationDays), gVar);
            if (sharedContentChangeLinkExpiryDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeLinkExpiryDetails.originalFolderName, gVar);
            }
            if (sharedContentChangeLinkExpiryDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeLinkExpiryDetails.sharedFolderType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentChangeLinkExpiryDetails deserialize(k kVar, boolean z) throws IOException {
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
                String str2 = null;
                Long l = null;
                String strDeserialize = null;
                Long lDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("expiration_start_date".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        lDeserialize = l;
                    } else if ("expiration_days".equals(strD)) {
                        lDeserialize = StoneSerializers.int64().deserialize(kVar);
                    } else if ("original_folder_name".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                }
                if (lDeserialize2 == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"expiration_start_date\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"expiration_days\" missing.");
                }
                SharedContentChangeLinkExpiryDetails sharedContentChangeLinkExpiryDetails = new SharedContentChangeLinkExpiryDetails(lDeserialize2.longValue(), strDeserialize, l.longValue(), str2, str);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentChangeLinkExpiryDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
