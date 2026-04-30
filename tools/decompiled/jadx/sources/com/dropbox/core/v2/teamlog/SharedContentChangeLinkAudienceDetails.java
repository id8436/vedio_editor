package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.LinkAudience;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentChangeLinkAudienceDetails {
    protected final LinkAudience newValue;
    protected final String originalFolderName;
    protected final LinkAudience previousValue;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedContentChangeLinkAudienceDetails(long j, LinkAudience linkAudience, String str, String str2, LinkAudience linkAudience2) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.sharedFolderType = str2;
        if (linkAudience == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = linkAudience;
        this.previousValue = linkAudience2;
    }

    public SharedContentChangeLinkAudienceDetails(long j, LinkAudience linkAudience) {
        this(j, linkAudience, null, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public LinkAudience getNewValue() {
        return this.newValue;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public LinkAudience getPreviousValue() {
        return this.previousValue;
    }

    public static Builder newBuilder(long j, LinkAudience linkAudience) {
        return new Builder(j, linkAudience);
    }

    public class Builder {
        protected final LinkAudience newValue;
        protected String originalFolderName;
        protected LinkAudience previousValue;
        protected String sharedFolderType;
        protected final long targetAssetIndex;

        protected Builder(long j, LinkAudience linkAudience) {
            this.targetAssetIndex = j;
            if (linkAudience == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = linkAudience;
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

        public Builder withPreviousValue(LinkAudience linkAudience) {
            this.previousValue = linkAudience;
            return this;
        }

        public SharedContentChangeLinkAudienceDetails build() {
            return new SharedContentChangeLinkAudienceDetails(this.targetAssetIndex, this.newValue, this.originalFolderName, this.sharedFolderType, this.previousValue);
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
            SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails = (SharedContentChangeLinkAudienceDetails) obj;
            if (this.targetAssetIndex == sharedContentChangeLinkAudienceDetails.targetAssetIndex && ((this.newValue == sharedContentChangeLinkAudienceDetails.newValue || this.newValue.equals(sharedContentChangeLinkAudienceDetails.newValue)) && ((this.originalFolderName == sharedContentChangeLinkAudienceDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentChangeLinkAudienceDetails.originalFolderName))) && (this.sharedFolderType == sharedContentChangeLinkAudienceDetails.sharedFolderType || (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentChangeLinkAudienceDetails.sharedFolderType)))))) {
                if (this.previousValue == sharedContentChangeLinkAudienceDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(sharedContentChangeLinkAudienceDetails.previousValue)) {
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

    class Serializer extends StructSerializer<SharedContentChangeLinkAudienceDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentChangeLinkAudienceDetails.targetAssetIndex), gVar);
            gVar.a("new_value");
            LinkAudience.Serializer.INSTANCE.serialize(sharedContentChangeLinkAudienceDetails.newValue, gVar);
            if (sharedContentChangeLinkAudienceDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeLinkAudienceDetails.originalFolderName, gVar);
            }
            if (sharedContentChangeLinkAudienceDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeLinkAudienceDetails.sharedFolderType, gVar);
            }
            if (sharedContentChangeLinkAudienceDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).serialize(sharedContentChangeLinkAudienceDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentChangeLinkAudienceDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            LinkAudience linkAudience = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                String str2 = null;
                LinkAudience linkAudienceDeserialize = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        linkAudienceDeserialize = LinkAudience.Serializer.INSTANCE.deserialize(kVar);
                        lDeserialize = l;
                    } else if ("original_folder_name".equals(strD)) {
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("shared_folder_type".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else if ("previous_value".equals(strD)) {
                        linkAudience = (LinkAudience) StoneSerializers.nullable(LinkAudience.Serializer.INSTANCE).deserialize(kVar);
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
                if (linkAudienceDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                SharedContentChangeLinkAudienceDetails sharedContentChangeLinkAudienceDetails = new SharedContentChangeLinkAudienceDetails(l.longValue(), linkAudienceDeserialize, str2, str, linkAudience);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentChangeLinkAudienceDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
