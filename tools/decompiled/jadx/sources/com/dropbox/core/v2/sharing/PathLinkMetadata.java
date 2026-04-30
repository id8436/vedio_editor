package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.Visibility;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class PathLinkMetadata extends LinkMetadata {
    protected final String path;

    public PathLinkMetadata(String str, Visibility visibility, String str2, Date date) {
        super(str, visibility, date);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        this.path = str2;
    }

    public PathLinkMetadata(String str, Visibility visibility, String str2) {
        this(str, visibility, str2, null);
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public String getUrl() {
        return this.url;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public Visibility getVisibility() {
        return this.visibility;
    }

    public String getPath() {
        return this.path;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public Date getExpires() {
        return this.expires;
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.sharing.LinkMetadata
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PathLinkMetadata pathLinkMetadata = (PathLinkMetadata) obj;
            if ((this.url == pathLinkMetadata.url || this.url.equals(pathLinkMetadata.url)) && ((this.visibility == pathLinkMetadata.visibility || this.visibility.equals(pathLinkMetadata.visibility)) && (this.path == pathLinkMetadata.path || this.path.equals(pathLinkMetadata.path)))) {
                if (this.expires == pathLinkMetadata.expires) {
                    return true;
                }
                if (this.expires != null && this.expires.equals(pathLinkMetadata.expires)) {
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

    class Serializer extends StructSerializer<PathLinkMetadata> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PathLinkMetadata pathLinkMetadata, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            writeTag("path", gVar);
            gVar.a("url");
            StoneSerializers.string().serialize(pathLinkMetadata.url, gVar);
            gVar.a("visibility");
            Visibility.Serializer.INSTANCE.serialize(pathLinkMetadata.visibility, gVar);
            gVar.a("path");
            StoneSerializers.string().serialize(pathLinkMetadata.path, gVar);
            if (pathLinkMetadata.expires != null) {
                gVar.a("expires");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize(pathLinkMetadata.expires, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PathLinkMetadata deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date date;
            String strDeserialize;
            Visibility visibilityDeserialize;
            String strDeserialize2;
            Date date2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
                if ("path".equals(tag)) {
                    tag = null;
                }
            }
            if (tag == null) {
                String str = null;
                Visibility visibility = null;
                String str2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("url".equals(strD)) {
                        Date date3 = date2;
                        strDeserialize = str;
                        visibilityDeserialize = visibility;
                        strDeserialize2 = StoneSerializers.string().deserialize(kVar);
                        date = date3;
                    } else if ("visibility".equals(strD)) {
                        strDeserialize2 = str2;
                        String str3 = str;
                        visibilityDeserialize = Visibility.Serializer.INSTANCE.deserialize(kVar);
                        date = date2;
                        strDeserialize = str3;
                    } else if ("path".equals(strD)) {
                        visibilityDeserialize = visibility;
                        strDeserialize2 = str2;
                        Date date4 = date2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        date = date4;
                    } else if ("expires".equals(strD)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(kVar);
                        strDeserialize = str;
                        visibilityDeserialize = visibility;
                        strDeserialize2 = str2;
                    } else {
                        skipValue(kVar);
                        date = date2;
                        strDeserialize = str;
                        visibilityDeserialize = visibility;
                        strDeserialize2 = str2;
                    }
                    str2 = strDeserialize2;
                    visibility = visibilityDeserialize;
                    str = strDeserialize;
                    date2 = date;
                }
                if (str2 == null) {
                    throw new j(kVar, "Required field \"url\" missing.");
                }
                if (visibility == null) {
                    throw new j(kVar, "Required field \"visibility\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"path\" missing.");
                }
                PathLinkMetadata pathLinkMetadata = new PathLinkMetadata(str2, visibility, str, date2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return pathLinkMetadata;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
