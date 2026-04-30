package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PaperContentRemoveMemberDetails {
    protected final String eventUuid;

    public PaperContentRemoveMemberDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperContentRemoveMemberDetails paperContentRemoveMemberDetails = (PaperContentRemoveMemberDetails) obj;
        return this.eventUuid == paperContentRemoveMemberDetails.eventUuid || this.eventUuid.equals(paperContentRemoveMemberDetails.eventUuid);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperContentRemoveMemberDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperContentRemoveMemberDetails paperContentRemoveMemberDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperContentRemoveMemberDetails.eventUuid, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperContentRemoveMemberDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
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
                    if ("event_uuid".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                PaperContentRemoveMemberDetails paperContentRemoveMemberDetails = new PaperContentRemoveMemberDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperContentRemoveMemberDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
