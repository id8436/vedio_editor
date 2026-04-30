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
public class FileAddCommentDetails {
    protected final String commentText;
    protected final long targetAssetIndex;

    public FileAddCommentDetails(long j, String str) {
        this.targetAssetIndex = j;
        this.commentText = str;
    }

    public FileAddCommentDetails(long j) {
        this(j, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getCommentText() {
        return this.commentText;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.commentText});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileAddCommentDetails fileAddCommentDetails = (FileAddCommentDetails) obj;
            if (this.targetAssetIndex == fileAddCommentDetails.targetAssetIndex) {
                if (this.commentText == fileAddCommentDetails.commentText) {
                    return true;
                }
                if (this.commentText != null && this.commentText.equals(fileAddCommentDetails.commentText)) {
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

    class Serializer extends StructSerializer<FileAddCommentDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileAddCommentDetails fileAddCommentDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(fileAddCommentDetails.targetAssetIndex), gVar);
            if (fileAddCommentDetails.commentText != null) {
                gVar.a("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(fileAddCommentDetails.commentText, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileAddCommentDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            Long lDeserialize;
            String str2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        String str3 = str2;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        str = str3;
                    } else if ("comment_text".equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        str = str2;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    str2 = str;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                FileAddCommentDetails fileAddCommentDetails = new FileAddCommentDetails(l.longValue(), str2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileAddCommentDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
