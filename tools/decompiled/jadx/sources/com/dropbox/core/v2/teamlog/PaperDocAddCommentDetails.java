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
public class PaperDocAddCommentDetails {
    protected final String commentText;
    protected final String eventUuid;

    public PaperDocAddCommentDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        this.commentText = str2;
    }

    public PaperDocAddCommentDetails(String str) {
        this(str, null);
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public String getCommentText() {
        return this.commentText;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.commentText});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            PaperDocAddCommentDetails paperDocAddCommentDetails = (PaperDocAddCommentDetails) obj;
            if (this.eventUuid == paperDocAddCommentDetails.eventUuid || this.eventUuid.equals(paperDocAddCommentDetails.eventUuid)) {
                if (this.commentText == paperDocAddCommentDetails.commentText) {
                    return true;
                }
                if (this.commentText != null && this.commentText.equals(paperDocAddCommentDetails.commentText)) {
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

    class Serializer extends StructSerializer<PaperDocAddCommentDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PaperDocAddCommentDetails paperDocAddCommentDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("event_uuid");
            StoneSerializers.string().serialize(paperDocAddCommentDetails.eventUuid, gVar);
            if (paperDocAddCommentDetails.commentText != null) {
                gVar.a("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(paperDocAddCommentDetails.commentText, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PaperDocAddCommentDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String strDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("event_uuid".equals(strD)) {
                        String str4 = str2;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str4;
                    } else if ("comment_text".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        strDeserialize = str3;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        strDeserialize = str3;
                    }
                    str3 = strDeserialize;
                    str2 = str;
                }
                if (str3 == null) {
                    throw new j(kVar, "Required field \"event_uuid\" missing.");
                }
                PaperDocAddCommentDetails paperDocAddCommentDetails = new PaperDocAddCommentDetails(str3, str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return paperDocAddCommentDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
