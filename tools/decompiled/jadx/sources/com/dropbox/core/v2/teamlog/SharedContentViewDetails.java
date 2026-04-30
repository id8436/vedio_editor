package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class SharedContentViewDetails {
    protected final String sharedContentLink;
    protected final String sharingPermission;
    protected final long targetAssetIndex;

    public SharedContentViewDetails(String str, long j, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'sharedContentLink' is null");
        }
        this.sharedContentLink = str;
        this.sharingPermission = str2;
        this.targetAssetIndex = j;
    }

    public SharedContentViewDetails(String str, long j) {
        this(str, j, null);
    }

    public String getSharedContentLink() {
        return this.sharedContentLink;
    }

    public long getTargetAssetIndex() {
        return this.targetAssetIndex;
    }

    public String getSharingPermission() {
        return this.sharingPermission;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.sharedContentLink, this.sharingPermission, Long.valueOf(this.targetAssetIndex)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            SharedContentViewDetails sharedContentViewDetails = (SharedContentViewDetails) obj;
            if ((this.sharedContentLink == sharedContentViewDetails.sharedContentLink || this.sharedContentLink.equals(sharedContentViewDetails.sharedContentLink)) && this.targetAssetIndex == sharedContentViewDetails.targetAssetIndex) {
                if (this.sharingPermission == sharedContentViewDetails.sharingPermission) {
                    return true;
                }
                if (this.sharingPermission != null && this.sharingPermission.equals(sharedContentViewDetails.sharingPermission)) {
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

    class Serializer extends StructSerializer<SharedContentViewDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(SharedContentViewDetails sharedContentViewDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("shared_content_link");
            StoneSerializers.string().serialize(sharedContentViewDetails.sharedContentLink, gVar);
            gVar.a("target_asset_index");
            StoneSerializers.uInt64().serialize(Long.valueOf(sharedContentViewDetails.targetAssetIndex), gVar);
            if (sharedContentViewDetails.sharingPermission != null) {
                gVar.a("sharing_permission");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(sharedContentViewDetails.sharingPermission, gVar);
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
        public com.dropbox.core.v2.teamlog.SharedContentViewDetails deserialize(com.d.a.a.k r8, boolean r9) throws java.io.IOException {
            /*
                r7 = this;
                r1 = 0
                if (r9 != 0) goto Lb7
                expectStartObject(r8)
                java.lang.String r0 = readTag(r8)
            La:
                if (r0 != 0) goto L96
                r2 = r1
                r3 = r1
            Le:
                com.d.a.a.o r0 = r8.c()
                com.d.a.a.o r4 = com.d.a.a.o.FIELD_NAME
                if (r0 != r4) goto L71
                java.lang.String r0 = r8.d()
                r8.a()
                java.lang.String r4 = "shared_content_link"
                boolean r4 = r4.equals(r0)
                if (r4 == 0) goto L38
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                java.lang.Object r0 = r0.deserialize(r8)
                java.lang.String r0 = (java.lang.String) r0
                r6 = r1
                r1 = r2
                r2 = r0
                r0 = r6
            L34:
                r3 = r2
                r2 = r1
                r1 = r0
                goto Le
            L38:
                java.lang.String r4 = "target_asset_index"
                boolean r4 = r4.equals(r0)
                if (r4 == 0) goto L50
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.uInt64()
                java.lang.Object r0 = r0.deserialize(r8)
                java.lang.Long r0 = (java.lang.Long) r0
                r2 = r3
                r6 = r0
                r0 = r1
                r1 = r6
                goto L34
            L50:
                java.lang.String r4 = "sharing_permission"
                boolean r0 = r4.equals(r0)
                if (r0 == 0) goto L6a
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.string()
                com.dropbox.core.stone.StoneSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullable(r0)
                java.lang.Object r0 = r0.deserialize(r8)
                java.lang.String r0 = (java.lang.String) r0
                r1 = r2
                r2 = r3
                goto L34
            L6a:
                skipValue(r8)
                r0 = r1
                r1 = r2
                r2 = r3
                goto L34
            L71:
                if (r3 != 0) goto L7c
                com.d.a.a.j r0 = new com.d.a.a.j
                java.lang.String r1 = "Required field \"shared_content_link\" missing."
                r0.<init>(r8, r1)
                throw r0
            L7c:
                if (r2 != 0) goto L87
                com.d.a.a.j r0 = new com.d.a.a.j
                java.lang.String r1 = "Required field \"target_asset_index\" missing."
                r0.<init>(r8, r1)
                throw r0
            L87:
                com.dropbox.core.v2.teamlog.SharedContentViewDetails r0 = new com.dropbox.core.v2.teamlog.SharedContentViewDetails
                long r4 = r2.longValue()
                r0.<init>(r3, r4, r1)
                if (r9 != 0) goto L95
                expectEndObject(r8)
            L95:
                return r0
            L96:
                com.d.a.a.j r1 = new com.d.a.a.j
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "No subtype found that matches tag: \""
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r2 = "\""
                java.lang.StringBuilder r0 = r0.append(r2)
                java.lang.String r0 = r0.toString()
                r1.<init>(r8, r0)
                throw r1
            Lb7:
                r0 = r1
                goto La
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.v2.teamlog.SharedContentViewDetails.Serializer.deserialize(com.d.a.a.k, boolean):com.dropbox.core.v2.teamlog.SharedContentViewDetails");
        }
    }
}
