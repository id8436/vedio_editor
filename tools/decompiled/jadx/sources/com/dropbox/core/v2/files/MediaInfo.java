package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.files.MediaMetadata;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaInfo {
    public static final MediaInfo PENDING = new MediaInfo().withTag(Tag.PENDING);
    private Tag _tag;
    private MediaMetadata metadataValue;

    public enum Tag {
        PENDING,
        METADATA
    }

    private MediaInfo() {
    }

    private MediaInfo withTag(Tag tag) {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo._tag = tag;
        return mediaInfo;
    }

    private MediaInfo withTagAndMetadata(Tag tag, MediaMetadata mediaMetadata) {
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo._tag = tag;
        mediaInfo.metadataValue = mediaMetadata;
        return mediaInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isPending() {
        return this._tag == Tag.PENDING;
    }

    public boolean isMetadata() {
        return this._tag == Tag.METADATA;
    }

    public static MediaInfo metadata(MediaMetadata mediaMetadata) {
        if (mediaMetadata == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new MediaInfo().withTagAndMetadata(Tag.METADATA, mediaMetadata);
    }

    public MediaMetadata getMetadataValue() {
        if (this._tag != Tag.METADATA) {
            throw new IllegalStateException("Invalid tag: required Tag.METADATA, but was Tag." + this._tag.name());
        }
        return this.metadataValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.metadataValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        if (this._tag != mediaInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case PENDING:
                return true;
            case METADATA:
                return this.metadataValue == mediaInfo.metadataValue || this.metadataValue.equals(mediaInfo.metadataValue);
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

    class Serializer extends UnionSerializer<MediaInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(MediaInfo mediaInfo, g gVar) throws IOException {
            switch (mediaInfo.tag()) {
                case PENDING:
                    gVar.b("pending");
                    return;
                case METADATA:
                    gVar.e();
                    writeTag("metadata", gVar);
                    gVar.a("metadata");
                    MediaMetadata.Serializer.INSTANCE.serialize(mediaInfo.metadataValue, gVar);
                    gVar.f();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + mediaInfo.tag());
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public MediaInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            MediaInfo mediaInfoMetadata;
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
            if ("pending".equals(tag)) {
                mediaInfoMetadata = MediaInfo.PENDING;
            } else if ("metadata".equals(tag)) {
                expectField("metadata", kVar);
                mediaInfoMetadata = MediaInfo.metadata(MediaMetadata.Serializer.INSTANCE.deserialize(kVar));
            } else {
                throw new j(kVar, "Unknown tag: " + tag);
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return mediaInfoMetadata;
        }
    }
}
