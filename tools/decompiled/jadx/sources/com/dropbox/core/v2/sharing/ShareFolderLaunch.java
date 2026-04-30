package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.SharedFolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ShareFolderLaunch {
    private Tag _tag;
    private String asyncJobIdValue;
    private SharedFolderMetadata completeValue;

    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    private ShareFolderLaunch() {
    }

    private ShareFolderLaunch withTag(Tag tag) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch._tag = tag;
        return shareFolderLaunch;
    }

    private ShareFolderLaunch withTagAndAsyncJobId(Tag tag, String str) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch._tag = tag;
        shareFolderLaunch.asyncJobIdValue = str;
        return shareFolderLaunch;
    }

    private ShareFolderLaunch withTagAndComplete(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        ShareFolderLaunch shareFolderLaunch = new ShareFolderLaunch();
        shareFolderLaunch._tag = tag;
        shareFolderLaunch.completeValue = sharedFolderMetadata;
        return shareFolderLaunch;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isAsyncJobId() {
        return this._tag == Tag.ASYNC_JOB_ID;
    }

    public static ShareFolderLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        return new ShareFolderLaunch().withTagAndAsyncJobId(Tag.ASYNC_JOB_ID, str);
    }

    public String getAsyncJobIdValue() {
        if (this._tag != Tag.ASYNC_JOB_ID) {
            throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this._tag.name());
        }
        return this.asyncJobIdValue;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static ShareFolderLaunch complete(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ShareFolderLaunch().withTagAndComplete(Tag.COMPLETE, sharedFolderMetadata);
    }

    public SharedFolderMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.asyncJobIdValue, this.completeValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ShareFolderLaunch)) {
            return false;
        }
        ShareFolderLaunch shareFolderLaunch = (ShareFolderLaunch) obj;
        if (this._tag != shareFolderLaunch._tag) {
            return false;
        }
        switch (this._tag) {
            case ASYNC_JOB_ID:
                return this.asyncJobIdValue == shareFolderLaunch.asyncJobIdValue || this.asyncJobIdValue.equals(shareFolderLaunch.asyncJobIdValue);
            case COMPLETE:
                return this.completeValue == shareFolderLaunch.completeValue || this.completeValue.equals(shareFolderLaunch.completeValue);
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<ShareFolderLaunch> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ShareFolderLaunch shareFolderLaunch, g gVar) throws IOException {
            switch (shareFolderLaunch.tag()) {
                case ASYNC_JOB_ID:
                    gVar.e();
                    writeTag("async_job_id", gVar);
                    gVar.a("async_job_id");
                    StoneSerializers.string().serialize(shareFolderLaunch.asyncJobIdValue, gVar);
                    gVar.f();
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    SharedFolderMetadata.Serializer.INSTANCE.serialize(shareFolderLaunch.completeValue, gVar, true);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + shareFolderLaunch.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ShareFolderLaunch deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ShareFolderLaunch shareFolderLaunchComplete;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("async_job_id".equals(tag)) {
                expectField("async_job_id", kVar);
                shareFolderLaunchComplete = ShareFolderLaunch.asyncJobId(StoneSerializers.string().deserialize(kVar));
            } else if ("complete".equals(tag)) {
                shareFolderLaunchComplete = ShareFolderLaunch.complete(SharedFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return shareFolderLaunchComplete;
        }
    }
}
