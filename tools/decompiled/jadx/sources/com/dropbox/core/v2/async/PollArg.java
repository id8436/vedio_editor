package com.dropbox.core.v2.async;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PollArg {
    protected final String asyncJobId;

    public PollArg(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'asyncJobId' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'asyncJobId' is shorter than 1");
        }
        this.asyncJobId = str;
    }

    public String getAsyncJobId() {
        return this.asyncJobId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.asyncJobId});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PollArg pollArg = (PollArg) obj;
        return this.asyncJobId == pollArg.asyncJobId || this.asyncJobId.equals(pollArg.asyncJobId);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    public class Serializer extends StructSerializer<PollArg> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(PollArg pollArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("async_job_id");
            StoneSerializers.string().serialize(pollArg.asyncJobId, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public PollArg deserialize(k kVar, boolean z) throws IOException {
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
                    if ("async_job_id".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"async_job_id\" missing.");
                }
                PollArg pollArg = new PollArg(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return pollArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
