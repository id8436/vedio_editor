package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.LinkAudience;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AudienceRestrictingSharedFolder {
    protected final LinkAudience audience;
    protected final String name;
    protected final String sharedFolderId;

    public AudienceRestrictingSharedFolder(String str, String str2, LinkAudience linkAudience) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        this.sharedFolderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (linkAudience == null) {
            throw new IllegalArgumentException("Required value for 'audience' is null");
        }
        this.audience = linkAudience;
    }

    public String getSharedFolderId() {
        return this.sharedFolderId;
    }

    public String getName() {
        return this.name;
    }

    public LinkAudience getAudience() {
        return this.audience;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedFolderId, this.name, this.audience});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = (AudienceRestrictingSharedFolder) obj;
            return (this.sharedFolderId == audienceRestrictingSharedFolder.sharedFolderId || this.sharedFolderId.equals(audienceRestrictingSharedFolder.sharedFolderId)) && (this.name == audienceRestrictingSharedFolder.name || this.name.equals(audienceRestrictingSharedFolder.name)) && (this.audience == audienceRestrictingSharedFolder.audience || this.audience.equals(audienceRestrictingSharedFolder.audience));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<AudienceRestrictingSharedFolder> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(AudienceRestrictingSharedFolder audienceRestrictingSharedFolder, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_folder_id");
            StoneSerializers.string().serialize(audienceRestrictingSharedFolder.sharedFolderId, gVar);
            gVar.a("name");
            StoneSerializers.string().serialize(audienceRestrictingSharedFolder.name, gVar);
            gVar.a("audience");
            LinkAudience.Serializer.INSTANCE.serialize(audienceRestrictingSharedFolder.audience, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public AudienceRestrictingSharedFolder deserialize(k kVar, boolean z) throws IOException {
            String tag;
            LinkAudience linkAudienceDeserialize;
            String strDeserialize;
            String strDeserialize2;
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
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("shared_folder_id".equals(strD)) {
                        LinkAudience linkAudience2 = linkAudience;
                        strDeserialize = str;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        linkAudienceDeserialize = linkAudience2;
                    } else if ("name".equals(strD)) {
                        strDeserialize2 = str2;
                        linkAudienceDeserialize = linkAudience;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("audience".equals(strD)) {
                        linkAudienceDeserialize = LinkAudience.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        linkAudienceDeserialize = linkAudience;
                        strDeserialize = str;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    str = strDeserialize;
                    linkAudience = linkAudienceDeserialize;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"shared_folder_id\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"name\" missing.");
                }
                if (linkAudience == null) {
                    throw new j(kVar, "Required field \"audience\" missing.");
                }
                AudienceRestrictingSharedFolder audienceRestrictingSharedFolder = new AudienceRestrictingSharedFolder(str2, str, linkAudience);
                if (!z) {
                    expectEndObject(kVar);
                }
                return audienceRestrictingSharedFolder;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
