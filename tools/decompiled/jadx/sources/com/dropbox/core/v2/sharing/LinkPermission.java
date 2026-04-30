package com.dropbox.core.v2.sharing;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.LinkAction;
import com.dropbox.core.v2.sharing.PermissionDeniedReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LinkPermission {
    protected final LinkAction action;
    protected final boolean allow;
    protected final PermissionDeniedReason reason;

    public LinkPermission(LinkAction linkAction, boolean z, PermissionDeniedReason permissionDeniedReason) {
        if (linkAction == null) {
            throw new IllegalArgumentException("Required value for 'action' is null");
        }
        this.action = linkAction;
        this.allow = z;
        this.reason = permissionDeniedReason;
    }

    public LinkPermission(LinkAction linkAction, boolean z) {
        this(linkAction, z, null);
    }

    public LinkAction getAction() {
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
            LinkPermission linkPermission = (LinkPermission) obj;
            if ((this.action == linkPermission.action || this.action.equals(linkPermission.action)) && this.allow == linkPermission.allow) {
                if (this.reason == linkPermission.reason) {
                    return true;
                }
                if (this.reason != null && this.reason.equals(linkPermission.reason)) {
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

    class Serializer extends StructSerializer<LinkPermission> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(LinkPermission linkPermission, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsSDKReporter.AnalyticAction);
            LinkAction.Serializer.INSTANCE.serialize(linkPermission.action, gVar);
            gVar.a("allow");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(linkPermission.allow), gVar);
            if (linkPermission.reason != null) {
                gVar.a("reason");
                StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).serialize(linkPermission.reason, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public LinkPermission deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PermissionDeniedReason permissionDeniedReason;
            Boolean boolDeserialize;
            LinkAction linkActionDeserialize;
            PermissionDeniedReason permissionDeniedReason2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                LinkAction linkAction = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobeAnalyticsSDKReporter.AnalyticAction.equals(strD)) {
                        PermissionDeniedReason permissionDeniedReason3 = permissionDeniedReason2;
                        boolDeserialize = bool;
                        linkActionDeserialize = LinkAction.Serializer.INSTANCE.deserialize(kVar);
                        permissionDeniedReason = permissionDeniedReason3;
                    } else if ("allow".equals(strD)) {
                        linkActionDeserialize = linkAction;
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                    } else if ("reason".equals(strD)) {
                        permissionDeniedReason = (PermissionDeniedReason) StoneSerializers.nullable(PermissionDeniedReason.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                        linkActionDeserialize = linkAction;
                    } else {
                        skipValue(kVar);
                        permissionDeniedReason = permissionDeniedReason2;
                        boolDeserialize = bool;
                        linkActionDeserialize = linkAction;
                    }
                    linkAction = linkActionDeserialize;
                    bool = boolDeserialize;
                    permissionDeniedReason2 = permissionDeniedReason;
                }
                if (linkAction == null) {
                    throw new j(kVar, "Required field \"action\" missing.");
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"allow\" missing.");
                }
                LinkPermission linkPermission = new LinkPermission(linkAction, bool.booleanValue(), permissionDeniedReason2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return linkPermission;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
