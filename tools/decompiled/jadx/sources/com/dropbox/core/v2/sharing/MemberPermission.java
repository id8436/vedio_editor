package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.MemberAction;
import com.dropbox.core.v2.sharing.PermissionDeniedReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class MemberPermission {
    protected final MemberAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    public MemberPermission(MemberAction memberAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (memberAction == null) {
            throw new IllegalArgumentException("Required value for 'action' is null");
        }
        this.action = memberAction;
        this.allow = z;
        this.reason = permissionDeniedReason;
    }

    public MemberPermission(MemberAction memberAction, boolean z) {
        this(memberAction, z, null);
    }

    public MemberAction getAction() {
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
            MemberPermission memberPermission = (MemberPermission) obj;
            if ((this.action == memberPermission.action || this.action.equals(memberPermission.action)) && this.allow == memberPermission.allow) {
                if (this.reason == memberPermission.reason) {
                    return true;
                }
                if (this.reason != null && this.reason.equals(memberPermission.reason)) {
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

    class Serializer extends StructSerializer<MemberPermission> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(MemberPermission memberPermission, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsSDKReporter.AnalyticAction);
            MemberAction.Serializer.INSTANCE.serialize(memberPermission.action, gVar);
            gVar.a("allow");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(memberPermission.allow), gVar);
            if (memberPermission.reason != null) {
                gVar.a("reason");
                StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).serialize(memberPermission.reason, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public MemberPermission deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PermissionDeniedReason permissionDeniedReason;
            Boolean boolDeserialize;
            MemberAction memberActionDeserialize;
            PermissionDeniedReason permissionDeniedReason2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                MemberAction memberAction = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobeAnalyticsSDKReporter.AnalyticAction.equals(strD)) {
                        PermissionDeniedReason permissionDeniedReason3 = permissionDeniedReason2;
                        boolDeserialize = bool;
                        memberActionDeserialize = MemberAction.Serializer.INSTANCE.deserialize(kVar);
                        permissionDeniedReason = permissionDeniedReason3;
                    } else if ("allow".equals(strD)) {
                        memberActionDeserialize = memberAction;
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("reason".equals(strD)) {
                        permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        memberActionDeserialize = memberAction;
                    } else {
                        skipValue(kVar);
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = bool;
                        memberActionDeserialize = memberAction;
                    }
                    memberAction = memberActionDeserialize;
                    bool = boolDeserialize;
                    permissionDeniedReason2 = permissionDeniedReason;
                }
                if (memberAction == null) {
                    throw new j(kVar, "Required field \"action\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"allow\" missing.");
                }
                MemberPermission memberPermission = new MemberPermission(memberAction, bool.booleanValue(), permissionDeniedReason2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return memberPermission;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
