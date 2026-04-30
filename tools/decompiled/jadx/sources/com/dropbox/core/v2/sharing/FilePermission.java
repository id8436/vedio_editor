package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.FileAction;
import com.dropbox.core.v2.sharing.PermissionDeniedReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class FilePermission {
    protected final FileAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    public FilePermission(FileAction fileAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (fileAction == null) {
            throw new IllegalArgumentException("Required value for 'action' is null");
        }
        this.action = fileAction;
        this.allow = z;
        this.reason = permissionDeniedReason;
    }

    public FilePermission(FileAction fileAction, boolean z) {
        this(fileAction, z, null);
    }

    public FileAction getAction() {
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
            FilePermission filePermission = (FilePermission) obj;
            if ((this.action == filePermission.action || this.action.equals(filePermission.action)) && this.allow == filePermission.allow) {
                if (this.reason == filePermission.reason) {
                    return true;
                }
                if (this.reason != null && this.reason.equals(filePermission.reason)) {
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

    class Serializer extends StructSerializer<FilePermission> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FilePermission filePermission, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsSDKReporter.AnalyticAction);
            FileAction.Serializer.INSTANCE.serialize(filePermission.action, gVar);
            gVar.a("allow");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(filePermission.allow), gVar);
            if (filePermission.reason != null) {
                gVar.a("reason");
                StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).serialize(filePermission.reason, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FilePermission deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PermissionDeniedReason permissionDeniedReason;
            Boolean boolDeserialize;
            FileAction fileActionDeserialize;
            PermissionDeniedReason permissionDeniedReason2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                FileAction fileAction = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobeAnalyticsSDKReporter.AnalyticAction.equals(strD)) {
                        PermissionDeniedReason permissionDeniedReason3 = permissionDeniedReason2;
                        boolDeserialize = bool;
                        fileActionDeserialize = FileAction.Serializer.INSTANCE.deserialize(kVar);
                        permissionDeniedReason = permissionDeniedReason3;
                    } else if ("allow".equals(strD)) {
                        fileActionDeserialize = fileAction;
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("reason".equals(strD)) {
                        permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        fileActionDeserialize = fileAction;
                    } else {
                        skipValue(kVar);
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = bool;
                        fileActionDeserialize = fileAction;
                    }
                    fileAction = fileActionDeserialize;
                    bool = boolDeserialize;
                    permissionDeniedReason2 = permissionDeniedReason;
                }
                if (fileAction == null) {
                    throw new j(kVar, "Required field \"action\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"allow\" missing.");
                }
                FilePermission filePermission = new FilePermission(fileAction, bool.booleanValue(), permissionDeniedReason2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return filePermission;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
