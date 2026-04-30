package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentChangeMemberRoleDetails {
    protected final String newSharingPermission;
    protected final String originalFolderName;
    protected final String previousSharingPermission;
    protected final String sharedFolderType;
    protected final long targetAssetIndex;

    public SharedContentChangeMemberRoleDetails(long j, String str, String str2, String str3, String str4) {
        this.targetAssetIndex = j;
        this.originalFolderName = str;
        this.newSharingPermission = str2;
        this.previousSharingPermission = str3;
        this.sharedFolderType = str4;
    }

    public SharedContentChangeMemberRoleDetails(long j) {
        this(j, null, null, null, null);
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getOriginalFolderName() {
        return this.originalFolderName;
    }

    public String getNewSharingPermission() {
        return this.newSharingPermission;
    }

    public String getPreviousSharingPermission() {
        return this.previousSharingPermission;
    }

    public String getSharedFolderType() {
        return this.sharedFolderType;
    }

    public static Builder newBuilder(long j) {
        return new Builder(j);
    }

    public class Builder {
        protected final long targetAssetIndex;
        protected String originalFolderName = null;
        protected String newSharingPermission = null;
        protected String previousSharingPermission = null;
        protected String sharedFolderType = null;

        protected Builder(long j) {
            this.targetAssetIndex = j;
        }

        public Builder withOriginalFolderName(String str) {
            this.originalFolderName = str;
            return this;
        }

        public Builder withNewSharingPermission(String str) {
            this.newSharingPermission = str;
            return this;
        }

        public Builder withPreviousSharingPermission(String str) {
            this.previousSharingPermission = str;
            return this;
        }

        public Builder withSharedFolderType(String str) {
            this.sharedFolderType = str;
            return this;
        }

        public SharedContentChangeMemberRoleDetails build() {
            return new SharedContentChangeMemberRoleDetails(this.targetAssetIndex, this.originalFolderName, this.newSharingPermission, this.previousSharingPermission, this.sharedFolderType);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.targetAssetIndex), this.originalFolderName, this.newSharingPermission, this.previousSharingPermission, this.sharedFolderType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails = (SharedContentChangeMemberRoleDetails) obj;
            if (this.targetAssetIndex == sharedContentChangeMemberRoleDetails.targetAssetIndex && ((this.originalFolderName == sharedContentChangeMemberRoleDetails.originalFolderName || (this.originalFolderName != null && this.originalFolderName.equals(sharedContentChangeMemberRoleDetails.originalFolderName))) && ((this.newSharingPermission == sharedContentChangeMemberRoleDetails.newSharingPermission || (this.newSharingPermission != null && this.newSharingPermission.equals(sharedContentChangeMemberRoleDetails.newSharingPermission))) && (this.previousSharingPermission == sharedContentChangeMemberRoleDetails.previousSharingPermission || (this.previousSharingPermission != null && this.previousSharingPermission.equals(sharedContentChangeMemberRoleDetails.previousSharingPermission)))))) {
                if (this.sharedFolderType == sharedContentChangeMemberRoleDetails.sharedFolderType) {
                    return true;
                }
                if (this.sharedFolderType != null && this.sharedFolderType.equals(sharedContentChangeMemberRoleDetails.sharedFolderType)) {
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

    class Serializer extends StructSerializer<SharedContentChangeMemberRoleDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentChangeMemberRoleDetails sharedContentChangeMemberRoleDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentChangeMemberRoleDetails.targetAssetIndex), gVar);
            if (sharedContentChangeMemberRoleDetails.originalFolderName != null) {
                gVar.a("original_folder_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeMemberRoleDetails.originalFolderName, gVar);
            }
            if (sharedContentChangeMemberRoleDetails.newSharingPermission != null) {
                gVar.a("new_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeMemberRoleDetails.newSharingPermission, gVar);
            }
            if (sharedContentChangeMemberRoleDetails.previousSharingPermission != null) {
                gVar.a("previous_sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeMemberRoleDetails.previousSharingPermission, gVar);
            }
            if (sharedContentChangeMemberRoleDetails.sharedFolderType != null) {
                gVar.a("shared_folder_type");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentChangeMemberRoleDetails.sharedFolderType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /*  JADX ERROR: ConcurrentModificationException in pass: MethodInvokeVisitor
            java.util.ConcurrentModificationException
            	at java.base/java.util.HashMap$HashIterator.nextNode(HashMap.java:1597)
            	at java.base/java.util.HashMap$KeyIterator.next(HashMap.java:1620)
            	at jadx.core.utils.Utils.collectionMap(Utils.java:252)
            	at jadx.core.dex.nodes.MethodNode.getThrows(MethodNode.java:490)
            	at jadx.core.dex.visitors.methods.MutableMethodDetails.<init>(MutableMethodDetails.java:25)
            	at jadx.core.dex.visitors.MethodInvokeVisitor.resolveTypeVars(MethodInvokeVisitor.java:250)
            	at jadx.core.dex.visitors.MethodInvokeVisitor.processOverloaded(MethodInvokeVisitor.java:113)
            	at jadx.core.dex.visitors.MethodInvokeVisitor.processInvoke(MethodInvokeVisitor.java:98)
            	at jadx.core.dex.visitors.MethodInvokeVisitor.lambda$visit$0(MethodInvokeVisitor.java:73)
            	at jadx.core.dex.nodes.InsnNode.visitInsns(InsnNode.java:301)
            	at jadx.core.dex.nodes.InsnNode.visitInsns(InsnNode.java:304)
            	at jadx.core.dex.visitors.MethodInvokeVisitor.visit(MethodInvokeVisitor.java:71)
            */
        @Override // com.dropbox.core.stone.StructSerializer
        public com.dropbox.core.v2.teamlog.SharedContentChangeMemberRoleDetails deserialize(com.d.a.a.k r9, boolean r10) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.teamlog.SharedContentChangeMemberRoleDetails.Serializer.deserialize(com.d.a.a.k, boolean):com.dropbox.core.v2.teamlog.SharedContentChangeMemberRoleDetails");
        }
    }
}
