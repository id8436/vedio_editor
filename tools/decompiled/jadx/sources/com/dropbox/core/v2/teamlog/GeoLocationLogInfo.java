package com.dropbox.core.v2.teamlog;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GeoLocationLogInfo {
    protected final String city;
    protected final String country;
    protected final String ipAddress;
    protected final String region;

    public GeoLocationLogInfo(String str, String str2, String str3, String str4) {
        this.city = str2;
        this.region = str3;
        this.country = str4;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'ipAddress' is null");
        }
        this.ipAddress = str;
    }

    public GeoLocationLogInfo(String str) {
        this(str, null, null, null);
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getCity() {
        return this.city;
    }

    public String getRegion() {
        return this.region;
    }

    public String getCountry() {
        return this.country;
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public class Builder {
        protected String city;
        protected String country;
        protected final String ipAddress;
        protected String region;

        protected Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'ipAddress' is null");
            }
            this.ipAddress = str;
            this.city = null;
            this.region = null;
            this.country = null;
        }

        public Builder withCity(String str) {
            this.city = str;
            return this;
        }

        public Builder withRegion(String str) {
            this.region = str;
            return this;
        }

        public Builder withCountry(String str) {
            this.country = str;
            return this;
        }

        public GeoLocationLogInfo build() {
            return new GeoLocationLogInfo(this.ipAddress, this.city, this.region, this.country);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.city, this.region, this.country, this.ipAddress});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GeoLocationLogInfo geoLocationLogInfo = (GeoLocationLogInfo) obj;
            if ((this.ipAddress == geoLocationLogInfo.ipAddress || this.ipAddress.equals(geoLocationLogInfo.ipAddress)) && ((this.city == geoLocationLogInfo.city || (this.city != null && this.city.equals(geoLocationLogInfo.city))) && (this.region == geoLocationLogInfo.region || (this.region != null && this.region.equals(geoLocationLogInfo.region))))) {
                if (this.country == geoLocationLogInfo.country) {
                    return true;
                }
                if (this.country != null && this.country.equals(geoLocationLogInfo.country)) {
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

    class Serializer extends StructSerializer<GeoLocationLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GeoLocationLogInfo geoLocationLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("ip_address");
            StoneSerializers.string().serialize(geoLocationLogInfo.ipAddress, gVar);
            if (geoLocationLogInfo.city != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_CITY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(geoLocationLogInfo.city, gVar);
            }
            if (geoLocationLogInfo.region != null) {
                gVar.a("region");
                StoneSerializers.nullable(StoneSerializers.string()).serialize(geoLocationLogInfo.region, gVar);
            }
            if (geoLocationLogInfo.country != null) {
                gVar.a(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY);
                StoneSerializers.nullable(StoneSerializers.string()).serialize(geoLocationLogInfo.country, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GeoLocationLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String str;
            String str2;
            String str3;
            String strDeserialize;
            String str4 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                String str5 = null;
                String str6 = null;
                String str7 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("ip_address".equals(strD)) {
                        String str8 = str4;
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        str = str8;
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_CITY.equals(strD)) {
                        strDeserialize = str7;
                        String str9 = str5;
                        str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str4;
                        str2 = str9;
                    } else if ("region".equals(strD)) {
                        str3 = str6;
                        strDeserialize = str7;
                        String str10 = str4;
                        str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str = str10;
                    } else if (BehanceSDKUrlUtil.PARAM_KEY_COUNTRY.equals(strD)) {
                        str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(kVar);
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = str7;
                    } else {
                        skipValue(kVar);
                        str = str4;
                        str2 = str5;
                        str3 = str6;
                        strDeserialize = str7;
                    }
                    str7 = strDeserialize;
                    str6 = str3;
                    str5 = str2;
                    str4 = str;
                }
                if (str7 == null) {
                    throw new j(kVar, "Required field \"ip_address\" missing.");
                }
                GeoLocationLogInfo geoLocationLogInfo = new GeoLocationLogInfo(str7, str6, str5, str4);
                if (!z) {
                    expectEndObject(kVar);
                }
                return geoLocationLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
