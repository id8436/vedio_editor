package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PaperAccessType;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperDocChangeMemberRoleDetails {
    protected final PaperAccessType accessType;
    protected final String eventUuid;

    public PaperDocChangeMemberRoleDetails(String str, PaperAccessType paperAccessType) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (paperAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = paperAccessType;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public PaperAccessType getAccessType() {
        return this.accessType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.accessType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails = (PaperDocChangeMemberRoleDetails) obj;
            return (this.eventUuid == paperDocChangeMemberRoleDetails.eventUuid || this.eventUuid.equals(paperDocChangeMemberRoleDetails.eventUuid)) && (this.accessType == paperDocChangeMemberRoleDetails.accessType || this.accessType.equals(paperDocChangeMemberRoleDetails.accessType));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocChangeMemberRoleDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperDocChangeMemberRoleDetails.eventUuid, gVar);
            gVar.a("access_type");
            PaperAccessType.Serializer.INSTANCE.serialize(paperDocChangeMemberRoleDetails.accessType, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocChangeMemberRoleDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PaperAccessType paperAccessTypeDeserialize;
            String strDeserialize;
            PaperAccessType paperAccessType = null;
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
                    if ("event_uuid".equals(strD)) {
                        PaperAccessType paperAccessType2 = paperAccessType;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        paperAccessTypeDeserialize = paperAccessType2;
                    } else if ("access_type".equals(strD)) {
                        paperAccessTypeDeserialize = PaperAccessType.Serializer.INSTANCE.deserialize(kVar);
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        paperAccessTypeDeserialize = paperAccessType;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    paperAccessType = paperAccessTypeDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                if (paperAccessType == null) {
                    throw new j(kVar, "Required field \"access_type\" missing.");
                }
                PaperDocChangeMemberRoleDetails paperDocChangeMemberRoleDetails = new PaperDocChangeMemberRoleDetails(str, paperAccessType);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocChangeMemberRoleDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
