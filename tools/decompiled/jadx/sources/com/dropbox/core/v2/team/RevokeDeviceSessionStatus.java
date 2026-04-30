package com.dropbox.core.v2.team;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.RevokeDeviceSessionError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class RevokeDeviceSessionStatus {
    protected final RevokeDeviceSessionError errorType;
    protected final boolean success;

    public RevokeDeviceSessionStatus(boolean z, RevokeDeviceSessionError revokeDeviceSessionError) {
        this.success = z;
        this.errorType = revokeDeviceSessionError;
    }

    public RevokeDeviceSessionStatus(boolean z) {
        this(z, null);
    }

    public boolean getSuccess() {
        return this.success;
    }

    public RevokeDeviceSessionError getErrorType() {
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
            RevokeDeviceSessionStatus revokeDeviceSessionStatus = (RevokeDeviceSessionStatus) obj;
            if (this.success == revokeDeviceSessionStatus.success) {
                if (this.errorType == revokeDeviceSessionStatus.errorType) {
                    return true;
                }
                if (this.errorType != null && this.errorType.equals(revokeDeviceSessionStatus.errorType)) {
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

    class Serializer extends StructSerializer<RevokeDeviceSessionStatus> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(RevokeDeviceSessionStatus revokeDeviceSessionStatus, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            StoneSerializers.boolean_().serialize(Boolean.valueOf(revokeDeviceSessionStatus.success), gVar);
            if (revokeDeviceSessionStatus.errorType != null) {
                gVar.a("error_type");
                StoneSerializers.nullable(RevokeDeviceSessionError.Serializer.INSTANCE).serialize(revokeDeviceSessionStatus.errorType, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public RevokeDeviceSessionStatus deserialize(k kVar, boolean z) throws IOException {
            String tag;
            RevokeDeviceSessionError revokeDeviceSessionError;
            Boolean boolDeserialize;
            RevokeDeviceSessionError revokeDeviceSessionError2 = null;
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
                        RevokeDeviceSessionError revokeDeviceSessionError3 = revokeDeviceSessionError2;
                        boolDeserialize = StoneSerializers.boolean_().deserialize(kVar);
                        revokeDeviceSessionError = revokeDeviceSessionError3;
                    } else if ("error_type".equals(strD)) {
                        revokeDeviceSessionError = (RevokeDeviceSessionError) StoneSerializers.nullable(RevokeDeviceSessionError.Serializer.INSTANCE).deserialize(kVar);
                        boolDeserialize = bool;
                    } else {
                        skipValue(kVar);
                        revokeDeviceSessionError = revokeDeviceSessionError2;
                        boolDeserialize = bool;
                    }
                    bool = boolDeserialize;
                    revokeDeviceSessionError2 = revokeDeviceSessionError;
                }
                if (bool == null) {
                    throw new j(kVar, "Required field \"success\" missing.");
                }
                RevokeDeviceSessionStatus revokeDeviceSessionStatus = new RevokeDeviceSessionStatus(bool.booleanValue(), revokeDeviceSessionError2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return revokeDeviceSessionStatus;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
