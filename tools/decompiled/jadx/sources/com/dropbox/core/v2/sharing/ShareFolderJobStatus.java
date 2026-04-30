package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.sharing.ShareFolderError;
import com.dropbox.core.v2.sharing.SharedFolderMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ShareFolderJobStatus {
    public static final ShareFolderJobStatus IN_PROGRESS = new ShareFolderJobStatus().withTag(Tag.IN_PROGRESS);
    private Tag _tag;
    private SharedFolderMetadata completeValue;
    private ShareFolderError failedValue;

    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    private ShareFolderJobStatus() {
    }

    private ShareFolderJobStatus withTag(Tag tag) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus._tag = tag;
        return shareFolderJobStatus;
    }

    private ShareFolderJobStatus withTagAndComplete(Tag tag, SharedFolderMetadata sharedFolderMetadata) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus._tag = tag;
        shareFolderJobStatus.completeValue = sharedFolderMetadata;
        return shareFolderJobStatus;
    }

    private ShareFolderJobStatus withTagAndFailed(Tag tag, ShareFolderError shareFolderError) {
        ShareFolderJobStatus shareFolderJobStatus = new ShareFolderJobStatus();
        shareFolderJobStatus._tag = tag;
        shareFolderJobStatus.failedValue = shareFolderError;
        return shareFolderJobStatus;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isInProgress() {
        return this._tag == Tag.IN_PROGRESS;
    }

    public boolean isComplete() {
        return this._tag == Tag.COMPLETE;
    }

    public static ShareFolderJobStatus complete(SharedFolderMetadata sharedFolderMetadata) {
        if (sharedFolderMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ShareFolderJobStatus().withTagAndComplete(Tag.COMPLETE, sharedFolderMetadata);
    }

    public SharedFolderMetadata getCompleteValue() {
        if (this._tag != Tag.COMPLETE) {
            throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this._tag.name());
        }
        return this.completeValue;
    }

    public boolean isFailed() {
        return this._tag == Tag.FAILED;
    }

    public static ShareFolderJobStatus failed(ShareFolderError shareFolderError) {
        if (shareFolderError == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new ShareFolderJobStatus().withTagAndFailed(Tag.FAILED, shareFolderError);
    }

    public ShareFolderError getFailedValue() {
        if (this._tag != Tag.FAILED) {
            throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this._tag.name());
        }
        return this.failedValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.completeValue, this.failedValue}) + (super.hashCode() * 31);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ShareFolderJobStatus)) {
            return false;
        }
        ShareFolderJobStatus shareFolderJobStatus = (ShareFolderJobStatus) obj;
        if (this._tag != shareFolderJobStatus._tag) {
            return false;
        }
        switch (this._tag) {
            case IN_PROGRESS:
                return true;
            case COMPLETE:
                return this.completeValue == shareFolderJobStatus.completeValue || this.completeValue.equals(shareFolderJobStatus.completeValue);
            case FAILED:
                return this.failedValue == shareFolderJobStatus.failedValue || this.failedValue.equals(shareFolderJobStatus.failedValue);
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

    class Serializer extends UnionSerializer<ShareFolderJobStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ShareFolderJobStatus shareFolderJobStatus, g gVar) throws IOException {
            switch (shareFolderJobStatus.tag()) {
                case IN_PROGRESS:
                    gVar.b("in_progress");
                    return;
                case COMPLETE:
                    gVar.e();
                    writeTag("complete", gVar);
                    SharedFolderMetadata.Serializer.INSTANCE.serialize(shareFolderJobStatus.completeValue, gVar, true);
                    gVar.f();
                    return;
                case FAILED:
                    gVar.e();
                    writeTag("failed", gVar);
                    gVar.a("failed");
                    ShareFolderError.Serializer.INSTANCE.serialize(shareFolderJobStatus.failedValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + shareFolderJobStatus.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public ShareFolderJobStatus deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            ShareFolderJobStatus shareFolderJobStatusFailed;
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
            if ("in_progress".equals(tag)) {
                shareFolderJobStatusFailed = ShareFolderJobStatus.IN_PROGRESS;
            } else if ("complete".equals(tag)) {
                shareFolderJobStatusFailed = ShareFolderJobStatus.complete(SharedFolderMetadata.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("failed".equals(tag)) {
                expectField("failed", kVar);
                shareFolderJobStatusFailed = ShareFolderJobStatus.failed(ShareFolderError.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return shareFolderJobStatusFailed;
        }
    }
}
