package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FolderAction;
import com.dropbox.core.v2.sharing.PermissionDeniedReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FolderPermission {
    protected final FolderAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    public FolderPermission(FolderAction folderAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (folderAction == null) {
            throw new IllegalArgumentException("Required value for 'action' is null");
        }
        this.action = folderAction;
        this.allow = z;
        this.reason = permissionDeniedReason;
    }

    public FolderPermission(FolderAction folderAction, boolean z) {
        this(folderAction, z, null);
    }

    public FolderAction getAction() {
        return this.action;
    }

    public boolean getAllow() {
        return this.allow;
    }

    public PermissionDeniedReason getReason() {
        return this.reason;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.action, Boolean.valueOf(this.allow), this.reason});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            FolderPermission folderPermission = (FolderPermission) obj;
            if ((this.action == folderPermission.action || this.action.equals(folderPermission.action)) && this.allow == folderPermission.allow) {
                if (this.reason == folderPermission.reason) {
                    return true;
                }
                if (this.reason != null && this.reason.equals(folderPermission.reason)) {
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

    class Serializer extends StructSerializer<FolderPermission> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FolderPermission folderPermission, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsSDKReporter.AnalyticAction);
            FolderAction.Serializer.INSTANCE.serialize(folderPermission.action, gVar);
            gVar.a("allow");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(folderPermission.allow), gVar);
            if (folderPermission.reason != null) {
                gVar.a("reason");
                StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).serialize(folderPermission.reason, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FolderPermission deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PermissionDeniedReason permissionDeniedReason;
            Boolean boolDeserialize;
            FolderAction folderActionDeserialize;
            PermissionDeniedReason permissionDeniedReason2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                FolderAction folderAction = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobeAnalyticsSDKReporter.AnalyticAction.equals(strD)) {
                        PermissionDeniedReason permissionDeniedReason3 = permissionDeniedReason2;
                        boolDeserialize = bool;
                        folderActionDeserialize = FolderAction.Serializer.INSTANCE.deserialize(kVar);
                        permissionDeniedReason = permissionDeniedReason3;
                    } else if ("allow".equals(strD)) {
                        folderActionDeserialize = folderAction;
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("reason".equals(strD)) {
                        permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        folderActionDeserialize = folderAction;
                    } else {
                        skipValue(kVar);
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = bool;
                        folderActionDeserialize = folderAction;
                    }
                    folderAction = folderActionDeserialize;
                    bool = boolDeserialize;
                    permissionDeniedReason2 = permissionDeniedReason;
                }
                if (folderAction == null) {
                    throw new j(kVar, "Required field \"action\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"allow\" missing.");
                }
                FolderPermission folderPermission = new FolderPermission(folderAction, bool.booleanValue(), permissionDeniedReason2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return folderPermission;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
