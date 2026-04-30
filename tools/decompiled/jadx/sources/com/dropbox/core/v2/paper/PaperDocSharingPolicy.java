package com.dropbox.core.v2.paper;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.paper.SharingPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class PaperDocSharingPolicy extends RefPaperDoc {
    protected final SharingPolicy sharingPolicy;

    public PaperDocSharingPolicy(String str, SharingPolicy sharingPolicy) {
        super(str);
        if (sharingPolicy == null) {
            throw new IllegalArgumentException("Required value for 'sharingPolicy' is null");
        }
        this.sharingPolicy = sharingPolicy;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String getDocId() {
        return this.docId;
    }

    public SharingPolicy getSharingPolicy() {
        return this.sharingPolicy;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharingPolicy}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocSharingPolicy paperDocSharingPolicy = (PaperDocSharingPolicy) obj;
            return (this.docId == paperDocSharingPolicy.docId || this.docId.equals(paperDocSharingPolicy.docId)) && (this.sharingPolicy == paperDocSharingPolicy.sharingPolicy || this.sharingPolicy.equals(paperDocSharingPolicy.sharingPolicy));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.paper.RefPaperDoc
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocSharingPolicy> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocSharingPolicy paperDocSharingPolicy, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("doc_id");
            StoneSerializers.string().serialize(paperDocSharingPolicy.docId, gVar);
            gVar.a("sharing_policy");
            SharingPolicy.Serializer.INSTANCE.serialize(paperDocSharingPolicy.sharingPolicy, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocSharingPolicy deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharingPolicy sharingPolicyDeserialize;
            String strDeserialize;
            SharingPolicy sharingPolicy = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("doc_id".equals(strD)) {
                        SharingPolicy sharingPolicy2 = sharingPolicy;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        sharingPolicyDeserialize = sharingPolicy2;
                    } else if ("sharing_policy".equals(strD)) {
                        sharingPolicyDeserialize = SharingPolicy.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        sharingPolicyDeserialize = sharingPolicy;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    sharingPolicy = sharingPolicyDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"doc_id\" missing.");
                }
                if (sharingPolicy == null) {
                    throw new j(kVar, "Required field \"sharing_policy\" missing.");
                }
                PaperDocSharingPolicy paperDocSharingPolicy = new PaperDocSharingPolicy(str, sharingPolicy);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocSharingPolicy;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
