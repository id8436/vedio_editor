package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.TfaConfiguration;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class TfaChangeStatusDetails {
    protected final TfaConfiguration newValue;
    protected final TfaConfiguration previousValue;
    protected final Boolean usedRescueCode;

    public TfaChangeStatusDetails(TfaConfiguration tfaConfiguration, TfaConfiguration tfaConfiguration2, Boolean bool) {
        if (tfaConfiguration == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = tfaConfiguration;
        this.previousValue = tfaConfiguration2;
        this.usedRescueCode = bool;
    }

    public TfaChangeStatusDetails(TfaConfiguration tfaConfiguration) {
        this(tfaConfiguration, null, null);
    }

    public TfaConfiguration getNewValue() {
        return this.newValue;
    }

    public TfaConfiguration getPreviousValue() {
        return this.previousValue;
    }

    public Boolean getUsedRescueCode() {
        return this.usedRescueCode;
    }

    public static Builder newBuilder(TfaConfiguration tfaConfiguration) {
        return new Builder(tfaConfiguration);
    }

    public class Builder {
        protected final TfaConfiguration newValue;
        protected TfaConfiguration previousValue;
        protected Boolean usedRescueCode;

        protected Builder(TfaConfiguration tfaConfiguration) {
            if (tfaConfiguration == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = tfaConfiguration;
            this.previousValue = null;
            this.usedRescueCode = null;
        }

        public Builder withPreviousValue(TfaConfiguration tfaConfiguration) {
            this.previousValue = tfaConfiguration;
            return this;
        }

        public Builder withUsedRescueCode(Boolean bool) {
            this.usedRescueCode = bool;
            return this;
        }

        public TfaChangeStatusDetails build() {
            return new TfaChangeStatusDetails(this.newValue, this.previousValue, this.usedRescueCode);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue, this.usedRescueCode});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            TfaChangeStatusDetails tfaChangeStatusDetails = (TfaChangeStatusDetails) obj;
            if ((this.newValue == tfaChangeStatusDetails.newValue || this.newValue.equals(tfaChangeStatusDetails.newValue)) && (this.previousValue == tfaChangeStatusDetails.previousValue || (this.previousValue != null && this.previousValue.equals(tfaChangeStatusDetails.previousValue)))) {
                if (this.usedRescueCode == tfaChangeStatusDetails.usedRescueCode) {
                    return true;
                }
                if (this.usedRescueCode != null && this.usedRescueCode.equals(tfaChangeStatusDetails.usedRescueCode)) {
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

    class Serializer extends StructSerializer<TfaChangeStatusDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TfaChangeStatusDetails tfaChangeStatusDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("new_value");
            TfaConfiguration.Serializer.INSTANCE.serialize(tfaChangeStatusDetails.newValue, gVar);
            if (tfaChangeStatusDetails.previousValue != null) {
                gVar.a("previous_value");
                StoneSerializers.nullable(TfaConfiguration.Serializer.INSTANCE).serialize(tfaChangeStatusDetails.previousValue, gVar);
            }
            if (tfaChangeStatusDetails.usedRescueCode != null) {
                gVar.a("used_rescue_code");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize(tfaChangeStatusDetails.usedRescueCode, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TfaChangeStatusDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Boolean bool;
            TfaConfiguration tfaConfiguration;
            TfaConfiguration tfaConfigurationDeserialize;
            Boolean bool2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                TfaConfiguration tfaConfiguration2 = null;
                TfaConfiguration tfaConfiguration3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("new_value".equals(strD)) {
                        Boolean bool3 = bool2;
                        tfaConfiguration = tfaConfiguration2;
                        tfaConfigurationDeserialize = TfaConfiguration.Serializer.INSTANCE.deserialize(kVar);
                        bool = bool3;
                    } else if ("previous_value".equals(strD)) {
                        tfaConfigurationDeserialize = tfaConfiguration3;
                        bool = bool2;
                        tfaConfiguration = (TfaConfiguration) StoneSerializers.nullable(TfaConfiguration.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("used_rescue_code".equals(strD)) {
                        bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(kVar);
                        tfaConfiguration = tfaConfiguration2;
                        tfaConfigurationDeserialize = tfaConfiguration3;
                    } else {
                        skipValue(kVar);
                        bool = bool2;
                        tfaConfiguration = tfaConfiguration2;
                        tfaConfigurationDeserialize = tfaConfiguration3;
                    }
                    tfaConfiguration3 = tfaConfigurationDeserialize;
                    tfaConfiguration2 = tfaConfiguration;
                    bool2 = bool;
                }
                if (tfaConfiguration3 == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                TfaChangeStatusDetails tfaChangeStatusDetails = new TfaChangeStatusDetails(tfaConfiguration3, tfaConfiguration2, bool2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return tfaChangeStatusDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
