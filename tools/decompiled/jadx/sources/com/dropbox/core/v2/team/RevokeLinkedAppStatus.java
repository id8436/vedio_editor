package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.RevokeLinkedAppError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class RevokeLinkedAppStatus {
    protected final RevokeLinkedAppError errorType;
    protected final boolean success;

    public RevokeLinkedAppStatus(boolean z, RevokeLinkedAppError revokeLinkedAppError) {
        this.success = z;
        this.errorType = revokeLinkedAppError;
    }

    public RevokeLinkedAppStatus(boolean z) {
        this(z, null);
    }

    public boolean getSuccess() {
        return this.success;
    }

    public RevokeLinkedAppError getErrorType() {
        return this.errorType;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.success), this.errorType});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RevokeLinkedAppStatus revokeLinkedAppStatus = (RevokeLinkedAppStatus) obj;
            if (this.success == revokeLinkedAppStatus.success) {
                if (this.errorType == revokeLinkedAppStatus.errorType) {
                    return true;
                }
                if (this.errorType != null && this.errorType.equals(revokeLinkedAppStatus.errorType)) {
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

    class Serializer extends StructSerializer<RevokeLinkedAppStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeLinkedAppStatus revokeLinkedAppStatus, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            StoneSerializers.boolean_().serialize(Boolean.valueOf(revokeLinkedAppStatus.success), gVar);
            if (revokeLinkedAppStatus.errorType != null) {
                gVar.a("error_type");
                StoneSerializers.nullable(RevokeLinkedAppError.Serializer.INSTANCE).serialize(revokeLinkedAppStatus.errorType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeLinkedAppStatus deserialize(k kVar, boolean z) throws IOException {
            String tag;
            RevokeLinkedAppError revokeLinkedAppError;
            Boolean boolDeserialize;
            RevokeLinkedAppError revokeLinkedAppError2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Boolean bool = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if (AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS.equals(strD)) {
                        RevokeLinkedAppError revokeLinkedAppError3 = revokeLinkedAppError2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        revokeLinkedAppError = revokeLinkedAppError3;
                    } else if ("error_type".equals(strD)) {
                        revokeLinkedAppError = (RevokeLinkedAppError) StoneSerializers.nullable(RevokeLinkedAppError.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        revokeLinkedAppError = revokeLinkedAppError2;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    revokeLinkedAppError2 = revokeLinkedAppError;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"success\" missing.");
                }
                RevokeLinkedAppStatus revokeLinkedAppStatus = new RevokeLinkedAppStatus(bool.booleanValue(), revokeLinkedAppError2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeLinkedAppStatus;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
