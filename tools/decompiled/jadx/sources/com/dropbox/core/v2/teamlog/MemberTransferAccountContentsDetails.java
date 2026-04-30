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
public class MemberTransferAccountContentsDetails {
    protected final long destParticipantIndex;
    protected final long srcParticipantIndex;

    public MemberTransferAccountContentsDetails(long j, long j2) {
        this.srcParticipantIndex = j;
        this.destParticipantIndex = j2;
    }

    public long getSrcParticipantIndex() {
        return this.srcParticipantIndex;
    }

    public long getDestParticipantIndex() {
        return this.destParticipantIndex;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.srcParticipantIndex), Long.valueOf(this.destParticipantIndex)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            MemberTransferAccountContentsDetails memberTransferAccountContentsDetails = (MemberTransferAccountContentsDetails) obj;
            return this.srcParticipantIndex == memberTransferAccountContentsDetails.srcParticipantIndex && this.destParticipantIndex == memberTransferAccountContentsDetails.destParticipantIndex;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<MemberTransferAccountContentsDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberTransferAccountContentsDetails memberTransferAccountContentsDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("src_participant_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(memberTransferAccountContentsDetails.srcParticipantIndex), gVar);
            gVar.a("dest_participant_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(memberTransferAccountContentsDetails.destParticipantIndex), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberTransferAccountContentsDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Long lDeserialize;
            Long lDeserialize2;
            Long l = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("src_participant_index".equals(strD)) {
                        Long l3 = l;
                        lDeserialize2 = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize = l3;
                    } else if ("dest_participant_index".equals(strD)) {
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        lDeserialize2 = l2;
                    } else {
                        skipValue(kVar);
                        lDeserialize = l;
                        lDeserialize2 = l2;
                    }
                    l2 = lDeserialize2;
                    l = lDeserialize;
                }
                if (l2 == null) {
                    throw new j(kVar, "Required field \"src_participant_index\" missing.");
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"dest_participant_index\" missing.");
                }
                MemberTransferAccountContentsDetails memberTransferAccountContentsDetails = new MemberTransferAccountContentsDetails(l2.longValue(), l.longValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberTransferAccountContentsDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
