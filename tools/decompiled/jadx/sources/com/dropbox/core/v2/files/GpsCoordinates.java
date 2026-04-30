package com.dropbox.core.v2.files;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GpsCoordinates {
    protected final double latitude;
    protected final double longitude;

    public GpsCoordinates(double d2, double d3) {
        this.latitude = d2;
        this.longitude = d3;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.latitude), Double.valueOf(this.longitude)});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GpsCoordinates gpsCoordinates = (GpsCoordinates) obj;
            return this.latitude == gpsCoordinates.latitude && this.longitude == gpsCoordinates.longitude;
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GpsCoordinates> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GpsCoordinates gpsCoordinates, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("latitude");
            StoneSerializers.float64().serialize(Double.valueOf(gpsCoordinates.latitude), gVar);
            gVar.a("longitude");
            StoneSerializers.float64().serialize(Double.valueOf(gpsCoordinates.longitude), gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GpsCoordinates deserialize(k kVar, boolean z) throws IOException {
            String tag;
            Double dDeserialize;
            Double dDeserialize2;
            Double d2 = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                Double d3 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("latitude".equals(strD)) {
                        Double d4 = d2;
                        dDeserialize2 = StoneSerializers.float64().deserialize(kVar);
                        dDeserialize = d4;
                    } else if ("longitude".equals(strD)) {
                        dDeserialize = StoneSerializers.float64().deserialize(kVar);
                        dDeserialize2 = d3;
                    } else {
                        skipValue(kVar);
                        dDeserialize = d2;
                        dDeserialize2 = d3;
                    }
                    d3 = dDeserialize2;
                    d2 = dDeserialize;
                }
                if (d3 == null) {
                    throw new j(kVar, "Required field \"latitude\" missing.");
                }
                if (d2 == null) {
                    throw new j(kVar, "Required field \"longitude\" missing.");
                }
                GpsCoordinates gpsCoordinates = new GpsCoordinates(d3.doubleValue(), d2.doubleValue());
                if (!z) {
                    expectEndObject(kVar);
                }
                return gpsCoordinates;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
