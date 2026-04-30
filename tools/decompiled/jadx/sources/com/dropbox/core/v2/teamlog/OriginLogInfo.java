package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.AccessMethodLogInfo;
import com.dropbox.core.v2.teamlog.GeoLocationLogInfo;
import com.dropbox.core.v2.teamlog.HostLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class OriginLogInfo {
    protected final AccessMethodLogInfo accessMethod;
    protected final GeoLocationLogInfo geoLocation;
    protected final HostLogInfo host;

    public OriginLogInfo(AccessMethodLogInfo accessMethodLogInfo, GeoLocationLogInfo geoLocationLogInfo, HostLogInfo hostLogInfo) {
        this.geoLocation = geoLocationLogInfo;
        this.host = hostLogInfo;
        if (accessMethodLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'accessMethod' is null");
        }
        this.accessMethod = accessMethodLogInfo;
    }

    public OriginLogInfo(AccessMethodLogInfo accessMethodLogInfo) {
        this(accessMethodLogInfo, null, null);
    }

    public AccessMethodLogInfo getAccessMethod() {
        return this.accessMethod;
    }

    public GeoLocationLogInfo getGeoLocation() {
        return this.geoLocation;
    }

    public HostLogInfo getHost() {
        return this.host;
    }

    public static Builder newBuilder(AccessMethodLogInfo accessMethodLogInfo) {
        return new Builder(accessMethodLogInfo);
    }

    public class Builder {
        protected final AccessMethodLogInfo accessMethod;
        protected GeoLocationLogInfo geoLocation;
        protected HostLogInfo host;

        protected Builder(AccessMethodLogInfo accessMethodLogInfo) {
            if (accessMethodLogInfo == null) {
                throw new IllegalArgumentException("Required value for 'accessMethod' is null");
            }
            this.accessMethod = accessMethodLogInfo;
            this.geoLocation = null;
            this.host = null;
        }

        public Builder withGeoLocation(GeoLocationLogInfo geoLocationLogInfo) {
            this.geoLocation = geoLocationLogInfo;
            return this;
        }

        public Builder withHost(HostLogInfo hostLogInfo) {
            this.host = hostLogInfo;
            return this;
        }

        public OriginLogInfo build() {
            return new OriginLogInfo(this.accessMethod, this.geoLocation, this.host);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.geoLocation, this.host, this.accessMethod});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            OriginLogInfo originLogInfo = (OriginLogInfo) obj;
            if ((this.accessMethod == originLogInfo.accessMethod || this.accessMethod.equals(originLogInfo.accessMethod)) && (this.geoLocation == originLogInfo.geoLocation || (this.geoLocation != null && this.geoLocation.equals(originLogInfo.geoLocation)))) {
                if (this.host == originLogInfo.host) {
                    return true;
                }
                if (this.host != null && this.host.equals(originLogInfo.host)) {
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

    class Serializer extends StructSerializer<OriginLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(OriginLogInfo originLogInfo, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("access_method");
            AccessMethodLogInfo.Serializer.INSTANCE.serialize(originLogInfo.accessMethod, gVar);
            if (originLogInfo.geoLocation != null) {
                gVar.a("geo_location");
                StoneSerializers.nullableStruct(GeoLocationLogInfo.Serializer.INSTANCE).serialize(originLogInfo.geoLocation, gVar);
            }
            if (originLogInfo.host != null) {
                gVar.a("host");
                StoneSerializers.nullableStruct(HostLogInfo.Serializer.INSTANCE).serialize(originLogInfo.host, gVar);
            }
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public OriginLogInfo deserialize(k kVar, boolean z) throws IOException {
            String tag;
            HostLogInfo hostLogInfo;
            GeoLocationLogInfo geoLocationLogInfo;
            AccessMethodLogInfo accessMethodLogInfoDeserialize;
            HostLogInfo hostLogInfo2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                GeoLocationLogInfo geoLocationLogInfo2 = null;
                AccessMethodLogInfo accessMethodLogInfo = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("access_method".equals(strD)) {
                        HostLogInfo hostLogInfo3 = hostLogInfo2;
                        geoLocationLogInfo = geoLocationLogInfo2;
                        accessMethodLogInfoDeserialize = AccessMethodLogInfo.Serializer.INSTANCE.deserialize(kVar);
                        hostLogInfo = hostLogInfo3;
                    } else if ("geo_location".equals(strD)) {
                        accessMethodLogInfoDeserialize = accessMethodLogInfo;
                        hostLogInfo = hostLogInfo2;
                        geoLocationLogInfo = (GeoLocationLogInfo) StoneSerializers.nullableStruct(GeoLocationLogInfo.Serializer.INSTANCE).deserialize(kVar);
                    } else if ("host".equals(strD)) {
                        hostLogInfo = (HostLogInfo) StoneSerializers.nullableStruct(HostLogInfo.Serializer.INSTANCE).deserialize(kVar);
                        geoLocationLogInfo = geoLocationLogInfo2;
                        accessMethodLogInfoDeserialize = accessMethodLogInfo;
                    } else {
                        skipValue(kVar);
                        hostLogInfo = hostLogInfo2;
                        geoLocationLogInfo = geoLocationLogInfo2;
                        accessMethodLogInfoDeserialize = accessMethodLogInfo;
                    }
                    accessMethodLogInfo = accessMethodLogInfoDeserialize;
                    geoLocationLogInfo2 = geoLocationLogInfo;
                    hostLogInfo2 = hostLogInfo;
                }
                if (accessMethodLogInfo == null) {
                    throw new j(kVar, "Required field \"access_method\" missing.");
                }
                OriginLogInfo originLogInfo = new OriginLogInfo(accessMethodLogInfo, geoLocationLogInfo2, hostLogInfo2);
                if (!z) {
                    expectEndObject(kVar);
                }
                return originLogInfo;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
