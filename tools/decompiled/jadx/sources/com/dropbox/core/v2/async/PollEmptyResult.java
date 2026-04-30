package com.dropbox.core.v2.async;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum PollEmptyResult {
    IN_PROGRESS,
    COMPLETE;

    public class Serializer extends UnionSerializer<PollEmptyResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PollEmptyResult pollEmptyResult, g gVar) throws IOException {
            switch (pollEmptyResult) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.b("complete");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + pollEmptyResult);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public PollEmptyResult deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            PollEmptyResult pollEmptyResult;
            if (kVar.c() == o.VALUE_STRING) {
                z = true;
                tag = getStringValue(kVar);
                kVar.a();
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("in_progress".equals(tag)) {
                pollEmptyResult = PollEmptyResult.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                pollEmptyResult = PollEmptyResult.COMPLETE;
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return pollEmptyResult;
        }
    }
}
