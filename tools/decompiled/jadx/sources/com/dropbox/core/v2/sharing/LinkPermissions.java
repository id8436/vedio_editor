package com.dropbox.core.v2.sharing;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.sharing.RequestedVisibility;
import com.dropbox.core.v2.sharing.ResolvedVisibility;
import com.dropbox.core.v2.sharing.SharedLinkAccessFailureReason;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LinkPermissions {
    protected final boolean canRevoke;
    protected final RequestedVisibility requestedVisibility;
    protected final ResolvedVisibility resolvedVisibility;
    protected final SharedLinkAccessFailureReason revokeFailureReason;

    public LinkPermissions(boolean z, ResolvedVisibility resolvedVisibility, RequestedVisibility requestedVisibility, SharedLinkAccessFailureReason sharedLinkAccessFailureReason) {
        this.resolvedVisibility = resolvedVisibility;
        this.requestedVisibility = requestedVisibility;
        this.canRevoke = z;
        this.revokeFailureReason = sharedLinkAccessFailureReason;
    }

    public LinkPermissions(boolean z) {
        this(z, null, null, null);
    }

    public boolean getCanRevoke() {
        return this.canRevoke;
    }

    public ResolvedVisibility getResolvedVisibility() {
        return this.resolvedVisibility;
    }

    public RequestedVisibility getRequestedVisibility() {
        return this.requestedVisibility;
    }

    public SharedLinkAccessFailureReason getRevokeFailureReason() {
        return this.revokeFailureReason;
    }

    public static Builder newBuilder(boolean z) {
        return new Builder(z);
    }

    public class Builder {
        protected final boolean canRevoke;
        protected ResolvedVisibility resolvedVisibility = null;
        protected RequestedVisibility requestedVisibility = null;
        protected SharedLinkAccessFailureReason revokeFailureReason = null;

        protected Builder(boolean z) {
            this.canRevoke = z;
        }

        public Builder withResolvedVisibility(ResolvedVisibility resolvedVisibility) {
            this.resolvedVisibility = resolvedVisibility;
            return this;
        }

        public Builder withRequestedVisibility(RequestedVisibility requestedVisibility) {
            this.requestedVisibility = requestedVisibility;
            return this;
        }

        public Builder withRevokeFailureReason(SharedLinkAccessFailureReason sharedLinkAccessFailureReason) {
            this.revokeFailureReason = sharedLinkAccessFailureReason;
            return this;
        }

        public LinkPermissions build() {
            return new LinkPermissions(this.canRevoke, this.resolvedVisibility, this.requestedVisibility, this.revokeFailureReason);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.resolvedVisibility, this.requestedVisibility, Boolean.valueOf(this.canRevoke), this.revokeFailureReason});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            LinkPermissions linkPermissions = (LinkPermissions) obj;
            if (this.canRevoke == linkPermissions.canRevoke && ((this.resolvedVisibility == linkPermissions.resolvedVisibility || (this.resolvedVisibility != null && this.resolvedVisibility.equals(linkPermissions.resolvedVisibility))) && (this.requestedVisibility == linkPermissions.requestedVisibility || (this.requestedVisibility != null && this.requestedVisibility.equals(linkPermissions.requestedVisibility))))) {
                if (this.revokeFailureReason == linkPermissions.revokeFailureReason) {
                    return true;
                }
                if (this.revokeFailureReason != null && this.revokeFailureReason.equals(linkPermissions.revokeFailureReason)) {
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

    class Serializer extends StructSerializer<LinkPermissions> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(LinkPermissions linkPermissions, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("can_revoke");
            StoneSerializers.boolean_().serialize(Boolean.valueOf(linkPermissions.canRevoke), gVar);
            if (linkPermissions.resolvedVisibility != null) {
                gVar.a("resolved_visibility");
                StoneSerializers.nullable(ResolvedVisibility.Serializer.INSTANCE).serialize(linkPermissions.resolvedVisibility, gVar);
            }
            if (linkPermissions.requestedVisibility != null) {
                gVar.a("requested_visibility");
                StoneSerializers.nullable(RequestedVisibility.Serializer.INSTANCE).serialize(linkPermissions.requestedVisibility, gVar);
            }
            if (linkPermissions.revokeFailureReason != null) {
                gVar.a("revoke_failure_reason");
                StoneSerializers.nullable(SharedLinkAccessFailureReason.Serializer.INSTANCE).serialize(linkPermissions.revokeFailureReason, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public LinkPermissions deserialize(k kVar, boolean z) throws IOException {
            String tag;
            SharedLinkAccessFailureReason sharedLinkAccessFailureReason;
            RequestedVisibility requestedVisibility;
            ResolvedVisibility resolvedVisibility;
            Boolean boolDeserialize;
            SharedLinkAccessFailureReason sharedLinkAccessFailureReason2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                RequestedVisibility requestedVisibility2 = null;
                ResolvedVisibility resolvedVisibility2 = null;
                Boolean bool = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("can_revoke".equals(strD)) {
                        SharedLinkAccessFailureReason sharedLinkAccessFailureReason3 = sharedLinkAccessFailureReason2;
                        requestedVisibility = requestedVisibility2;
                        resolvedVisibility = resolvedVisibility2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        sharedLinkAccessFailureReason = sharedLinkAccessFailureReason3;
                    } else if ("resolved_visibility".equals(strD)) {
                        boolDeserialize = bool;
                        RequestedVisibility requestedVisibility3 = requestedVisibility2;
                        resolvedVisibility = (ResolvedVisibility) StoneSerializers.nullable(ResolvedVisibility.Serializer.INSTANCE).deserialize(kVar);
                        sharedLinkAccessFailureReason = sharedLinkAccessFailureReason2;
                        requestedVisibility = requestedVisibility3;
                    } else if ("requested_visibility".equals(strD)) {
                        resolvedVisibility = resolvedVisibility2;
                        boolDeserialize = bool;
                        SharedLinkAccessFailureReason sharedLinkAccessFailureReason4 = sharedLinkAccessFailureReason2;
                        requestedVisibility = (RequestedVisibility) StoneSerializers.nullable(RequestedVisibility.Serializer.INSTANCE).deserialize(kVar);
                        sharedLinkAccessFailureReason = sharedLinkAccessFailureReason4;
                    } else if ("revoke_failure_reason".equals(strD)) {
                        sharedLinkAccessFailureReason = (SharedLinkAccessFailureReason) StoneSerializers.nullable(SharedLinkAccessFailureReason.Serializer.INSTANCE).deserialize(kVar);
                        requestedVisibility = requestedVisibility2;
                        resolvedVisibility = resolvedVisibility2;
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        sharedLinkAccessFailureReason = sharedLinkAccessFailureReason2;
                        requestedVisibility = requestedVisibility2;
                        resolvedVisibility = resolvedVisibility2;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    resolvedVisibility2 = resolvedVisibility;
                    requestedVisibility2 = requestedVisibility;
                    sharedLinkAccessFailureReason2 = sharedLinkAccessFailureReason;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"can_revoke\" missing.");
                }
                LinkPermissions linkPermissions = new LinkPermissions(bool.booleanValue(), resolvedVisibility2, requestedVisibility2, sharedLinkAccessFailureReason2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return linkPermissions;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
