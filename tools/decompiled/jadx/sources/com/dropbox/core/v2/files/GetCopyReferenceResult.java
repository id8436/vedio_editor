package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.v2.files.Metadata;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class GetCopyReferenceResult {
    protected final String copyReference;
    protected final Date expires;
    protected final Metadata metadata;

    public GetCopyReferenceResult(Metadata metadata, String str, Date date) {
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'copyReference' is null");
        }
        this.copyReference = str;
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'expires' is null");
        }
        this.expires = LangUtil.truncateMillis(date);
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public String getCopyReference() {
        return this.copyReference;
    }

    public Date getExpires() {
        return this.expires;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.copyReference, this.expires});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetCopyReferenceResult getCopyReferenceResult = (GetCopyReferenceResult) obj;
            return (this.metadata == getCopyReferenceResult.metadata || this.metadata.equals(getCopyReferenceResult.metadata)) && (this.copyReference == getCopyReferenceResult.copyReference || this.copyReference.equals(getCopyReferenceResult.copyReference)) && (this.expires == getCopyReferenceResult.expires || this.expires.equals(getCopyReferenceResult.expires));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetCopyReferenceResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetCopyReferenceResult getCopyReferenceResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("metadata");
            Metadata.Serializer.INSTANCE.serialize(getCopyReferenceResult.metadata, gVar);
            gVar.a("copy_reference");
            StoneSerializers.string().serialize(getCopyReferenceResult.copyReference, gVar);
            gVar.a("expires");
            StoneSerializers.timestamp().serialize(getCopyReferenceResult.expires, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetCopyReferenceResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Date dateDeserialize;
            String strDeserialize;
            Metadata metadataDeserialize;
            Date date = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                Metadata metadata = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("metadata".equals(strD)) {
                        Date date2 = date;
                        strDeserialize = str;
                        metadataDeserialize = Metadata.Serializer.INSTANCE.deserialize(kVar);
                        dateDeserialize = date2;
                    } else if ("copy_reference".equals(strD)) {
                        metadataDeserialize = metadata;
                        dateDeserialize = date;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else if ("expires".equals(strD)) {
                        dateDeserialize = StoneSerializers.timestamp().deserialize(kVar);
                        strDeserialize = str;
                        metadataDeserialize = metadata;
                    } else {
                        skipValue(kVar);
                        dateDeserialize = date;
                        strDeserialize = str;
                        metadataDeserialize = metadata;
                    }
                    metadata = metadataDeserialize;
                    str = strDeserialize;
                    date = dateDeserialize;
                }
                if (metadata == null) {
                    throw new j(kVar, "Required field \"metadata\" missing.");
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"copy_reference\" missing.");
                }
                if (date == null) {
                    throw new j(kVar, "Required field \"expires\" missing.");
                }
                GetCopyReferenceResult getCopyReferenceResult = new GetCopyReferenceResult(metadata, str, date);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getCopyReferenceResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
