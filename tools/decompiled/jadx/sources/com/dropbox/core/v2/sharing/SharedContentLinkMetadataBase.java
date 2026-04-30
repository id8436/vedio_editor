package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.AccessLevel;
import com.dropbox.core.v2.sharing.AudienceRestrictingSharedFolder;
import com.dropbox.core.v2.sharing.LinkAudience;
import com.dropbox.core.v2.sharing.LinkPermission;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentLinkMetadataBase {
    protected final AccessLevel accessLevel;
    protected final List<LinkAudience> audienceOptions;
    protected final AudienceRestrictingSharedFolder audienceRestrictingSharedFolder;
    protected final LinkAudience currentAudience;
    protected final Date expiry;
    protected final List<LinkPermission> linkPermissions;
    protected final boolean passwordProtected;

    public SharedContentLinkMetadataBase(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z, AccessLevel accessLevel, AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, Date date) {
        this.accessLevel = accessLevel;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
        }
        Iterator<LinkAudience> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
            }
        }
        this.audienceOptions = list;
        this.audienceRestrictingSharedFolder = audienceRestrictingSharedFolder;
        if (linkAudience == null) {
            throw new IllegalArgumentException("Required value for 'currentAudience' is null");
        }
        this.currentAudience = linkAudience;
        this.expiry = LangUtil.truncateMillis(date);
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
        }
        Iterator<LinkPermission> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
            }
        }
        this.linkPermissions = list2;
        this.passwordProtected = z;
    }

    public SharedContentLinkMetadataBase(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        this(list, linkAudience, list2, z, null, null, null);
    }

    public List<LinkAudience> getAudienceOptions() {
        return this.audienceOptions;
    }

    public LinkAudience getCurrentAudience() {
        return this.currentAudience;
    }

    public List<LinkPermission> getLinkPermissions() {
        return this.linkPermissions;
    }

    public boolean getPasswordProtected() {
        return this.passwordProtected;
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public AudienceRestrictingSharedFolder getAudienceRestrictingSharedFolder() {
        return this.audienceRestrictingSharedFolder;
    }

    public Date getExpiry() {
        return this.expiry;
    }

    public static Builder newBuilder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
        return new Builder(list, linkAudience, list2, z);
    }

    public class Builder {
        protected AccessLevel accessLevel;
        protected final List<LinkAudience> audienceOptions;
        protected AudienceRestrictingSharedFolder audienceRestrictingSharedFolder;
        protected final LinkAudience currentAudience;
        protected Date expiry;
        protected final List<LinkPermission> linkPermissions;
        protected final boolean passwordProtected;

        protected Builder(List<LinkAudience> list, LinkAudience linkAudience, List<LinkPermission> list2, boolean z) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'audienceOptions' is null");
            }
            Iterator<LinkAudience> it = list.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("An item in list 'audienceOptions' is null");
                }
            }
            this.audienceOptions = list;
            if (linkAudience == null) {
                throw new IllegalArgumentException("Required value for 'currentAudience' is null");
            }
            this.currentAudience = linkAudience;
            if (list2 == null) {
                throw new IllegalArgumentException("Required value for 'linkPermissions' is null");
            }
            Iterator<LinkPermission> it2 = list2.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'linkPermissions' is null");
                }
            }
            this.linkPermissions = list2;
            this.passwordProtected = z;
            this.accessLevel = null;
            this.audienceRestrictingSharedFolder = null;
            this.expiry = null;
        }

        public Builder withAccessLevel(AccessLevel accessLevel) {
            this.accessLevel = accessLevel;
            return this;
        }

        public Builder withAudienceRestrictingSharedFolder(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder) {
            this.audienceRestrictingSharedFolder = audienceRestrictingSharedFolder;
            return this;
        }

        public Builder withExpiry(Date date) {
            this.expiry = LangUtil.truncateMillis(date);
            return this;
        }

        public SharedContentLinkMetadataBase build() {
            return new SharedContentLinkMetadataBase(this.audienceOptions, this.currentAudience, this.linkPermissions, this.passwordProtected, this.accessLevel, this.audienceRestrictingSharedFolder, this.expiry);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accessLevel, this.audienceOptions, this.audienceRestrictingSharedFolder, this.currentAudience, this.expiry, this.linkPermissions, Boolean.valueOf(this.passwordProtected)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentLinkMetadataBase sharedContentLinkMetadataBase = (SharedContentLinkMetadataBase) obj;
            if ((this.audienceOptions == sharedContentLinkMetadataBase.audienceOptions || this.audienceOptions.equals(sharedContentLinkMetadataBase.audienceOptions)) && ((this.currentAudience == sharedContentLinkMetadataBase.currentAudience || this.currentAudience.equals(sharedContentLinkMetadataBase.currentAudience)) && ((this.linkPermissions == sharedContentLinkMetadataBase.linkPermissions || this.linkPermissions.equals(sharedContentLinkMetadataBase.linkPermissions)) && this.passwordProtected == sharedContentLinkMetadataBase.passwordProtected && ((this.accessLevel == sharedContentLinkMetadataBase.accessLevel || (this.accessLevel != null && this.accessLevel.equals(sharedContentLinkMetadataBase.accessLevel))) && (this.audienceRestrictingSharedFolder == sharedContentLinkMetadataBase.audienceRestrictingSharedFolder || (this.audienceRestrictingSharedFolder != null && this.audienceRestrictingSharedFolder.equals(sharedContentLinkMetadataBase.audienceRestrictingSharedFolder))))))) {
                if (this.expiry == sharedContentLinkMetadataBase.expiry) {
                    return true;
                }
                if (this.expiry != null && this.expiry.equals(sharedContentLinkMetadataBase.expiry)) {
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

    class Serializer extends StructSerializer<SharedContentLinkMetadataBase> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentLinkMetadataBase sharedContentLinkMetadataBase, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("audience_options");
            StoneSerializers.list(LinkAudience.Serializer.INSTANCE).serialize(sharedContentLinkMetadataBase.audienceOptions, gVar);
            gVar.a("current_audience");
            LinkAudience.Serializer.INSTANCE.serialize(sharedContentLinkMetadataBase.currentAudience, gVar);
            gVar.a("link_permissions");
            StoneSerializers.list(LinkPermission.Serializer.INSTANCE).serialize(sharedContentLinkMetadataBase.linkPermissions, gVar);
            gVar.a("password_protected");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(sharedContentLinkMetadataBase.passwordProtected), gVar);
            if (sharedContentLinkMetadataBase.accessLevel != null) {
                gVar.a("access_level");
                StoneSerializers.nullable(AccessLevel.Serializer.INSTANCE).serialize(sharedContentLinkMetadataBase.accessLevel, gVar);
            }
            if (sharedContentLinkMetadataBase.audienceRestrictingSharedFolder != null) {
                gVar.a("audience_restricting_shared_folder");
                StoneSerializers.nullableStruct(AudienceRestrictingSharedFolder.Serializer.INSTANCE).serialize(sharedContentLinkMetadataBase.audienceRestrictingSharedFolder, gVar);
            }
            if (sharedContentLinkMetadataBase.expiry != null) {
                gVar.a("expiry");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(sharedContentLinkMetadataBase.expiry, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public SharedContentLinkMetadataBase deserialize(k kVar, boolean z) throws IOException {
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
                SharedContentLinkMetadataBase sharedContentLinkMetadataBase = new SharedContentLinkMetadataBase(list2, linkAudienceDeserialize, list, bool.booleanValue(), accessLevel, audienceRestrictingSharedFolder, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return sharedContentLinkMetadataBase;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
