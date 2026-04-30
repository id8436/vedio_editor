package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.files.CommitInfo;
import com.dropbox.core.v2.files.UploadSessionCursor;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class UploadSessionFinishArg {
    protected final CommitInfo commit;
    protected final UploadSessionCursor cursor;

    public UploadSessionFinishArg(UploadSessionCursor uploadSessionCursor, CommitInfo commitInfo) {
        if (uploadSessionCursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = uploadSessionCursor;
        if (commitInfo == null) {
            throw new IllegalArgumentException("Required value for 'commit' is null");
        }
        this.commit = commitInfo;
    }

    public UploadSessionCursor getCursor() {
        return this.cursor;
    }

    public CommitInfo getCommit() {
        return this.commit;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor, this.commit});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            UploadSessionFinishArg uploadSessionFinishArg = (UploadSessionFinishArg) obj;
            return (this.cursor == uploadSessionFinishArg.cursor || this.cursor.equals(uploadSessionFinishArg.cursor)) && (this.commit == uploadSessionFinishArg.commit || this.commit.equals(uploadSessionFinishArg.commit));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<UploadSessionFinishArg> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UploadSessionFinishArg uploadSessionFinishArg, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("cursor");
            UploadSessionCursor.Serializer.INSTANCE.serialize(uploadSessionFinishArg.cursor, gVar);
            gVar.a("commit");
            CommitInfo.Serializer.INSTANCE.serialize(uploadSessionFinishArg.commit, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UploadSessionFinishArg deserialize(k kVar, boolean z) throws IOException {
            String tag;
            CommitInfo commitInfoDeserialize;
            UploadSessionCursor uploadSessionCursorDeserialize;
            CommitInfo commitInfo = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                UploadSessionCursor uploadSessionCursor = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("cursor".equals(strD)) {
                        CommitInfo commitInfo2 = commitInfo;
                        uploadSessionCursorDeserialize = UploadSessionCursor.Serializer.INSTANCE.deserialize(kVar);
                        commitInfoDeserialize = commitInfo2;
                    } else if ("commit".equals(strD)) {
                        commitInfoDeserialize = CommitInfo.Serializer.INSTANCE.deserialize(kVar);
                        uploadSessionCursorDeserialize = uploadSessionCursor;
                    } else {
                        skipValue(kVar);
                        commitInfoDeserialize = commitInfo;
                        uploadSessionCursorDeserialize = uploadSessionCursor;
                    }
                    uploadSessionCursor = uploadSessionCursorDeserialize;
                    commitInfo = commitInfoDeserialize;
                }
                if (uploadSessionCursor == null) {
                    throw new j(kVar, "Required field \"cursor\" missing.");
                }
                if (commitInfo == null) {
                    throw new j(kVar, "Required field \"commit\" missing.");
                }
                UploadSessionFinishArg uploadSessionFinishArg = new UploadSessionFinishArg(uploadSessionCursor, commitInfo);
                if (!z) {
                    expectEndObject(kVar);
                }
                return uploadSessionFinishArg;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
