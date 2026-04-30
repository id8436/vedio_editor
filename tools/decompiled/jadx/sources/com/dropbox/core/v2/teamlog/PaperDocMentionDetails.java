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
public class PaperDocMentionDetails {
    protected final String eventUuid;

    public PaperDocMentionDetails(String str) {
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
        PaperDocMentionDetails paperDocMentionDetails = (PaperDocMentionDetails) obj;
        return this.eventUuid == paperDocMentionDetails.eventUuid || this.eventUuid.equals(paperDocMentionDetails.eventUuid);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<PaperDocMentionDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocMentionDetails paperDocMentionDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperDocMentionDetails.eventUuid, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to analyze thrown exceptions
        java.util.ConcurrentModificationException
        	at java.base/java.util.HashMap$HashIterator.nextNode(HashMap.java:1597)
        	at java.base/java.util.HashMap$KeyIterator.next(HashMap.java:1620)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.mergeExceptions(MethodThrowsVisitor.java:100)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:86)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
        	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
         */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocMentionDetails deserialize(k kVar, boolean z) throws IOException {
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
                PaperDocMentionDetails paperDocMentionDetails = new PaperDocMentionDetails(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocMentionDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
