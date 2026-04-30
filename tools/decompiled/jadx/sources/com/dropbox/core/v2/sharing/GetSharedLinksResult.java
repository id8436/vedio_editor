package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.storage.photo.AdobePhotoSession;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.LinkMetadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetSharedLinksResult {
    protected final List<LinkMetadata> links;

    public GetSharedLinksResult(List<LinkMetadata> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'links' is null");
        }
        Iterator<LinkMetadata> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'links' is null");
            }
        }
        this.links = list;
    }

    public List<LinkMetadata> getLinks() {
        return this.links;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.links});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetSharedLinksResult getSharedLinksResult = (GetSharedLinksResult) obj;
        return this.links == getSharedLinksResult.links || this.links.equals(getSharedLinksResult.links);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetSharedLinksResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetSharedLinksResult getSharedLinksResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobePhotoSession.LINKS);
            StoneSerializers.list(LinkMetadata.Serializer.INSTANCE).serialize(getSharedLinksResult.links, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetSharedLinksResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobePhotoSession.LINKS.equals(strD)) {
                        list = (List) StoneSerializers.list(LinkMetadata.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"links\" missing.");
                }
                GetSharedLinksResult getSharedLinksResult = new GetSharedLinksResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getSharedLinksResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
