package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.FileCommentNotificationPolicy;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FileChangeCommentSubscriptionDetails {
    protected final FileCommentNotificationPolicy newValue;
    protected final FileCommentNotificationPolicy previousValue;
    protected final long targetAssetIndex;

    public FileChangeCommentSubscriptionDetails(long j, FileCommentNotificationPolicy fileCommentNotificationPolicy, FileCommentNotificationPolicy fileCommentNotificationPolicy2) {
        this.targetAssetIndex = j;
        if (fileCommentNotificationPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = fileCommentNotificationPolicy;
        this.previousValue = fileCommentNotificationPolicy2;
    }

    public FileChangeCommentSubscriptionDetails(long j, FileCommentNotificationPolicy fileCommentNotificationPolicy) {
        this(j, fileCommentNotificationPolicy, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public FileCommentNotificationPolicy getNewValue() {
        return this.newValue;
    }

    public FileCommentNotificationPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.newValue, this.previousValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails = (FileChangeCommentSubscriptionDetails) obj;
            if (this.targetAssetIndex == fileChangeCommentSubscriptionDetails.targetAssetIndex && (this.newValue == fileChangeCommentSubscriptionDetails.newValue || this.newValue.equals(fileChangeCommentSubscriptionDetails.newValue))) {
                if (this.previousValue == fileChangeCommentSubscriptionDetails.previousValue) {
                    return true;
                }
                if (this.previousValue != null && this.previousValue.equals(fileChangeCommentSubscriptionDetails.previousValue)) {
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

    class Serializer extends StructSerializer<FileChangeCommentSubscriptionDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(fileChangeCommentSubscriptionDetails.targetAssetIndex), gVar);
            gVar.a("new_value");
            FileCommentNotificationPolicy.Serializer.INSTANCE.serialize(fileChangeCommentSubscriptionDetails.newValue, gVar);
            if (fileChangeCommentSubscriptionDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(FileCommentNotificationPolicy.Serializer.INSTANCE).serialize(fileChangeCommentSubscriptionDetails.previousValue, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FileChangeCommentSubscriptionDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            FileCommentNotificationPolicy fileCommentNotificationPolicy;
            FileCommentNotificationPolicy fileCommentNotificationPolicyDeserialize;
            Long lDeserialize;
            FileCommentNotificationPolicy fileCommentNotificationPolicy2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                FileCommentNotificationPolicy fileCommentNotificationPolicy3 = null;
                Long l = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("target_asset_index".equals(strD)) {
                        FileCommentNotificationPolicy fileCommentNotificationPolicy4 = fileCommentNotificationPolicy2;
                        fileCommentNotificationPolicyDeserialize = fileCommentNotificationPolicy3;
                        lDeserialize = StoneSerializers.uInt64().deserialize(kVar);
                        fileCommentNotificationPolicy = fileCommentNotificationPolicy4;
                    } else if ("new_value".equals(strD)) {
                        lDeserialize = l;
                        fileCommentNotificationPolicy = fileCommentNotificationPolicy2;
                        fileCommentNotificationPolicyDeserialize = FileCommentNotificationPolicy.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("previous_value".equals(strD)) {
                        fileCommentNotificationPolicy = (FileCommentNotificationPolicy) StoneSerializers.nullable(FileCommentNotificationPolicy.Serializer.INSTANCE).deserialize(kVar);
                        fileCommentNotificationPolicyDeserialize = fileCommentNotificationPolicy3;
                        lDeserialize = l;
                    } else {
                        skipValue(kVar);
                        fileCommentNotificationPolicy = fileCommentNotificationPolicy2;
                        fileCommentNotificationPolicyDeserialize = fileCommentNotificationPolicy3;
                        lDeserialize = l;
                    }
                    l = lDeserialize;
                    fileCommentNotificationPolicy3 = fileCommentNotificationPolicyDeserialize;
                    fileCommentNotificationPolicy2 = fileCommentNotificationPolicy;
                }
                if (l == null) {
                    throw new j(kVar, "Required field \"target_asset_index\" missing.");
                }
                if (fileCommentNotificationPolicy3 == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                FileChangeCommentSubscriptionDetails fileChangeCommentSubscriptionDetails = new FileChangeCommentSubscriptionDetails(l.longValue(), fileCommentNotificationPolicy3, fileCommentNotificationPolicy2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return fileChangeCommentSubscriptionDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
