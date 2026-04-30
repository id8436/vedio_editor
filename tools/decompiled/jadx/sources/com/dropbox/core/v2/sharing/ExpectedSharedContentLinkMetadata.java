package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.AudienceRestrictingSharedFolder;
import com.dropbox.core.v2.sharing.LinkAudience;
import com.dropbox.core.v2.sharing.LinkPermission;
import com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ExpectedSharedContentLinkMetadata extends SharedContentLinkMetadataBase {
    public ExpectedSharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, AccessLevel accessLevel, AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, Date date) {
        super(list, linkAudience, list2, z, accessLevel, audienceRestrictingSharedFolder, date);
    }

    public ExpectedSharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        this(list, linkAudience, list2, z, null, null, null);
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public List<LinkAudience> getAudienceOptions() {
        return this.audienceOptions;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public LinkAudience getCurrentAudience() {
        return this.currentAudience;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public List<LinkPermission> getLinkPermissions() {
        return this.linkPermissions;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public boolean getPasswordProtected() {
        return this.passwordProtected;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public AudienceRestrictingSharedFolder getAudienceRestrictingSharedFolder() {
        return this.audienceRestrictingSharedFolder;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public Date getExpiry() {
        return this.expiry;
    }

    public static Builder newBuilder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        return new Builder(list, linkAudience, list2, z);
    }

    public class Builder extends SharedContentLinkMetadataBase.Builder {
        protected Builder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
            super(list, linkAudience, list2, z);
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withAccessLevel(AccessLevel accessLevel) {
            super.withAccessLevel(accessLevel);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withAudienceRestrictingSharedFolder(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder) {
            super.withAudienceRestrictingSharedFolder(audienceRestrictingSharedFolder);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public Builder withExpiry(Date date) {
            super.withExpiry(date);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase.Builder
        public ExpectedSharedContentLinkMetadata build() {
            return new ExpectedSharedContentLinkMetadata(this.audienceOptions, this.currentAudience, this.linkPermissions, this.passwordProtected, this.accessLevel, this.audienceRestrictingSharedFolder, this.expiry);
        }
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = (ExpectedSharedContentLinkMetadata) obj;
            if ((this.audienceOptions == expectedSharedContentLinkMetadata.audienceOptions || this.audienceOptions.equals(expectedSharedContentLinkMetadata.audienceOptions)) && ((this.currentAudience == expectedSharedContentLinkMetadata.currentAudience || this.currentAudience.equals(expectedSharedContentLinkMetadata.currentAudience)) && ((this.linkPermissions == expectedSharedContentLinkMetadata.linkPermissions || this.linkPermissions.equals(expectedSharedContentLinkMetadata.linkPermissions)) && this.passwordProtected == expectedSharedContentLinkMetadata.passwordProtected && ((this.accessLevel == expectedSharedContentLinkMetadata.accessLevel || (this.accessLevel != null && this.accessLevel.equals(expectedSharedContentLinkMetadata.accessLevel))) && (this.audienceRestrictingSharedFolder == expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder || (this.audienceRestrictingSharedFolder != null && this.audienceRestrictingSharedFolder.equals(expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder))))))) {
                if (this.expiry == expectedSharedContentLinkMetadata.expiry) {
                    return true;
                }
                if (this.expiry != null && this.expiry.equals(expectedSharedContentLinkMetadata.expiry)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<ExpectedSharedContentLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("audience_options");
            StoneSerializers.list(LinkAudience.Serializer.INSTANCE).serialize(expectedSharedContentLinkMetadata.audienceOptions, gVar);
            gVar.a("current_audience");
            LinkAudience.Serializer.INSTANCE.serialize(expectedSharedContentLinkMetadata.currentAudience, gVar);
            gVar.a("link_permissions");
            StoneSerializers.list(LinkPermission.Serializer.INSTANCE).serialize(expectedSharedContentLinkMetadata.linkPermissions, gVar);
            gVar.a("password_protected");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(expectedSharedContentLinkMetadata.passwordProtected), gVar);
            if (expectedSharedContentLinkMetadata.accessLevel != null) {
                gVar.a("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(expectedSharedContentLinkMetadata.accessLevel, gVar);
            }
            if (expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder != null) {
                gVar.a("audience_restricting_shared_folder");
                StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.Serializer.INSTANCE).serialize(expectedSharedContentLinkMetadata.audienceRestrictingSharedFolder, gVar);
            }
            if (expectedSharedContentLinkMetadata.expiry != null) {
                gVar.a("expiry");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(expectedSharedContentLinkMetadata.expiry, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public ExpectedSharedContentLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = null;
                AccessLevel accessLevel = null;
                Boolean bool = null;
                List list = null;
                LinkAudience linkAudienceDeserialize = null;
                List list2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("audience_options".equals(strD)) {
                        list2 = (List) StoneSerializers.list(LinkAudience.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("current_audience".equals(strD)) {
                        linkAudienceDeserialize = LinkAudience.Serializer.INSTANCE.deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("link_permissions".equals(strD)) {
                        list = (List) StoneSerializers.list(LinkPermission.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("password_protected".equals(strD)) {
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("access_level".equals(strD)) {
                        accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("audience_restricting_shared_folder".equals(strD)) {
                        audienceRestrictingSharedFolder = (AudienceRestrictingSharedFolder) StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("expiry".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                }
                if (list2 == null) {
                    throw new j(kVar, "Required field \"audience_options\" missing.");
                }
                if (linkAudienceDeserialize == null) {
                    throw new j(kVar, "Required field \"current_audience\" missing.");
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"link_permissions\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"password_protected\" missing.");
                }
                ExpectedSharedContentLinkMetadata expectedSharedContentLinkMetadata = new ExpectedSharedContentLinkMetadata(list2, linkAudienceDeserialize, list, bool.booleanValue(), accessLevel, audienceRestrictingSharedFolder, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return expectedSharedContentLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
