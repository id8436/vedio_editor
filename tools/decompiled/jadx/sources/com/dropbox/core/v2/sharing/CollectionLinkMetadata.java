package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.Visibility;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionLinkMetadata extends LinkMetadata {
    public CollectionLinkMetadata(String str, Visibility visibility, Date date) {
        super(str, visibility, date);
    }

    public CollectionLinkMetadata(String str, Visibility visibility) {
        this(str, visibility, null);
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public String getUrl() {
        return this.url;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public Visibility getVisibility() {
        return this.visibility;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            CollectionLinkMetadata collectionLinkMetadata = (CollectionLinkMetadata) obj;
            if ((this.url == collectionLinkMetadata.url || this.url.equals(collectionLinkMetadata.url)) && (this.visibility == collectionLinkMetadata.visibility || this.visibility.equals(collectionLinkMetadata.visibility))) {
                if (this.expires == collectionLinkMetadata.expires) {
                    return true;
                }
                if (this.expires != null && this.expires.equals(collectionLinkMetadata.expires)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<CollectionLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(CollectionLinkMetadata collectionLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("collection", gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(collectionLinkMetadata.url, gVar);
            gVar.a("visibility");
            Visibility.Serializer.INSTANCE.serialize(collectionLinkMetadata.visibility, gVar);
            if (collectionLinkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(collectionLinkMetadata.expires, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public CollectionLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            Visibility visibilityDeserialize;
            String strDeserialize;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("collection".equals(tag)) {
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
                CollectionLinkMetadata collectionLinkMetadata = new CollectionLinkMetadata(str, visibility, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return collectionLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
