package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.AudienceExceptions;
import com.dropbox.core.v2.sharing.AudienceRestrictingSharedFolder;
import com.dropbox.core.v2.sharing.LinkAudience;
import com.dropbox.core.v2.sharing.LinkPermission;
import com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentLinkMetadata extends SharedContentLinkMetadataBase {
    protected final AudienceExceptions audienceExceptions;
    protected final String url;

    public SharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, String str, AccessLevel accessLevel, AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, Date date, AudienceExceptions audienceExceptions) {
        super(list, linkAudience, list2, z, accessLevel, audienceRestrictingSharedFolder, date);
        this.audienceExceptions = audienceExceptions;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
    }

    public SharedContentLinkMetadata(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, String str) {
        this(list, linkAudience, list2, z, str, null, null, null, null);
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

    public String getUrl() {
        return this.url;
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

    public AudienceExceptions getAudienceExceptions() {
        return this.audienceExceptions;
    }

    public static Builder newBuilder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, String str) {
        return new Builder(list, linkAudience, list2, z, str);
    }

    public class Builder extends SharedContentLinkMetadataBase.Builder {
        protected AudienceExceptions audienceExceptions;
        protected final String url;

        protected Builder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, String str) {
            super(list, linkAudience, list2, z);
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'url' is null");
            }
            this.url = str;
            this.audienceExceptions = null;
        }

        public Builder withAudienceExceptions(AudienceExceptions audienceExceptions) {
            this.audienceExceptions = audienceExceptions;
            return this;
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
        public SharedContentLinkMetadata build() {
            return new SharedContentLinkMetadata(this.audienceOptions, this.currentAudience, this.linkPermissions, this.passwordProtected, this.url, this.accessLevel, this.audienceRestrictingSharedFolder, this.expiry, this.audienceExceptions);
        }
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.audienceExceptions, this.url}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.SharedContentLinkMetadataBase
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentLinkMetadata sharedContentLinkMetadata = (SharedContentLinkMetadata) obj;
            if ((this.audienceOptions == sharedContentLinkMetadata.audienceOptions || this.audienceOptions.equals(sharedContentLinkMetadata.audienceOptions)) && ((this.currentAudience == sharedContentLinkMetadata.currentAudience || this.currentAudience.equals(sharedContentLinkMetadata.currentAudience)) && ((this.linkPermissions == sharedContentLinkMetadata.linkPermissions || this.linkPermissions.equals(sharedContentLinkMetadata.linkPermissions)) && this.passwordProtected == sharedContentLinkMetadata.passwordProtected && ((this.url == sharedContentLinkMetadata.url || this.url.equals(sharedContentLinkMetadata.url)) && ((this.accessLevel == sharedContentLinkMetadata.accessLevel || (this.accessLevel != null && this.accessLevel.equals(sharedContentLinkMetadata.accessLevel))) && ((this.audienceRestrictingSharedFolder == sharedContentLinkMetadata.audienceRestrictingSharedFolder || (this.audienceRestrictingSharedFolder != null && this.audienceRestrictingSharedFolder.equals(sharedContentLinkMetadata.audienceRestrictingSharedFolder))) && (this.expiry == sharedContentLinkMetadata.expiry || (this.expiry != null && this.expiry.equals(sharedContentLinkMetadata.expiry))))))))) {
                if (this.audienceExceptions == sharedContentLinkMetadata.audienceExceptions) {
                    return true;
                }
                if (this.audienceExceptions != null && this.audienceExceptions.equals(sharedContentLinkMetadata.audienceExceptions)) {
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

    class Serializer extends StructSerializer<SharedContentLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentLinkMetadata sharedContentLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("audience_options");
            StoneSerializers.list(LinkAudience.Serializer.INSTANCE).serialize(sharedContentLinkMetadata.audienceOptions, gVar);
            gVar.a("current_audience");
            LinkAudience.Serializer.INSTANCE.serialize(sharedContentLinkMetadata.currentAudience, gVar);
            gVar.a("link_permissions");
            StoneSerializers.list(LinkPermission.Serializer.INSTANCE).serialize(sharedContentLinkMetadata.linkPermissions, gVar);
            gVar.a("password_protected");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedContentLinkMetadata.passwordProtected), gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(sharedContentLinkMetadata.url, gVar);
            if (sharedContentLinkMetadata.accessLevel != null) {
                gVar.a("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(sharedContentLinkMetadata.accessLevel, gVar);
            }
            if (sharedContentLinkMetadata.audienceRestrictingSharedFolder != null) {
                gVar.a("audience_restricting_shared_folder");
                StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.Serializer.INSTANCE).serialize(sharedContentLinkMetadata.audienceRestrictingSharedFolder, gVar);
            }
            if (sharedContentLinkMetadata.expiry != null) {
                gVar.a("expiry");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(sharedContentLinkMetadata.expiry, gVar);
            }
            if (sharedContentLinkMetadata.audienceExceptions != null) {
                gVar.a("audience_exceptions");
                StoneSerializers.nullableStruct(AudienceExceptions.Serializer.INSTANCE).serialize(sharedContentLinkMetadata.audienceExceptions, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean boolDeserialize;
            AudienceExceptions audienceExceptions = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Date date = null;
                AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = null;
                AccessLevel accessLevel = null;
                String strDeserialize = null;
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
                    } else if ("url".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("access_level".equals(strD)) {
                        accessLevel = (AccessLevel) StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("audience_restricting_shared_folder".equals(strD)) {
                        audienceRestrictingSharedFolder = (AudienceRestrictingSharedFolder) StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("expiry".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        boolDeserialize = bool;
                    } else if ("audience_exceptions".equals(strD)) {
                        audienceExceptions = (AudienceExceptions) StoneSerializers.nullableStruct(AudienceExceptions.Serializer.INSTANCE).deserialize(kVar);
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
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                SharedContentLinkMetadata sharedContentLinkMetadata = new SharedContentLinkMetadata(list2, linkAudienceDeserialize, list, bool.booleanValue(), strDeserialize, accessLevel, audienceRestrictingSharedFolder, date, audienceExceptions);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
