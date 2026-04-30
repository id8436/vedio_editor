package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.sharing.CollectionLinkMetadata;
import com.dropbox.core.v2.sharing.PathLinkMetadata;
import com.dropbox.core.v2.sharing.Visibility;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class LinkMetadata {
    protected final Date expires;
    protected final String url;
    protected final Visibility visibility;

    public LinkMetadata(String str, Visibility visibility, Date date) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'url' is null");
        }
        this.url = str;
        if (visibility == null) {
            throw new IllegalArgumentException("Required value for 'visibility' is null");
        }
        this.visibility = visibility;
        this.expires = LangUtil.truncateMillis(date);
    }

    public LinkMetadata(String str, Visibility visibility) {
        this(str, visibility, null);
    }

    public String getUrl() {
        return this.url;
    }

    public Visibility getVisibility() {
        return this.visibility;
    }

    public Date getExpires() {
        return this.expires;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.visibility, this.expires});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            LinkMetadata linkMetadata = (LinkMetadata) obj;
            if ((this.url == linkMetadata.url || this.url.equals(linkMetadata.url)) && (this.visibility == linkMetadata.visibility || this.visibility.equals(linkMetadata.visibility))) {
                if (this.expires == linkMetadata.expires) {
                    return true;
                }
                if (this.expires != null && this.expires.equals(linkMetadata.expires)) {
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

    class Serializer extends StructSerializer<LinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(LinkMetadata linkMetadata, g gVar, boolean z) throws IOException {
            if (linkMetadata instanceof PathLinkMetadata) {
                PathLinkMetadata.Serializer.INSTANCE.serialize((PathLinkMetadata) linkMetadata, gVar, z);
                return;
            }
            if (linkMetadata instanceof CollectionLinkMetadata) {
                CollectionLinkMetadata.Serializer.INSTANCE.serialize((CollectionLinkMetadata) linkMetadata, gVar, z);
                return;
            }
            if (!z) {
                gVar.e();
            }
            gVar.a("url");
            StoneSerializers.string().serialize(linkMetadata.url, gVar);
            gVar.a("visibility");
            Visibility.Serializer.INSTANCE.serialize(linkMetadata.visibility, gVar);
            if (linkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(linkMetadata.expires, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public LinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            LinkMetadata linkMetadataDeserialize;
            Date date;
            Visibility visibilityDeserialize;
            String strDeserialize;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                Visibility visibility = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        Date date3 = date2;
                        visibilityDeserialize = visibility;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        date = date3;
                    } else if ("visibility".equals(strD)) {
                        strDeserialize = str;
                        date = date2;
                        visibilityDeserialize = Visibility.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        visibilityDeserialize = visibility;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        visibilityDeserialize = visibility;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    visibility = visibilityDeserialize;
                    date2 = date;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (visibility == null) {
                    throw new j(kVar, "Required field \"visibility\" missing.");
                }
                linkMetadataDeserialize = new LinkMetadata(str, visibility, date2);
            } else if ("".equals(tag)) {
                linkMetadataDeserialize = INSTANCE.deserialize(kVar, true);
            } else if ("path".equals(tag)) {
                linkMetadataDeserialize = PathLinkMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else if ("collection".equals(tag)) {
                linkMetadataDeserialize = CollectionLinkMetadata.Serializer.INSTANCE.deserialize(kVar, true);
            } else {
                throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
            }
            if (!z) {
                expectEndObject(kVar);
            }
            return linkMetadataDeserialize;
        }
    }
}
