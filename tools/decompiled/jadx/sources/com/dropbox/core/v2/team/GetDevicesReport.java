package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.DevicesActive;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class GetDevicesReport extends BaseDfbReport {
    protected final DevicesActive active1Day;
    protected final DevicesActive active28Day;
    protected final DevicesActive active7Day;

    public GetDevicesReport(String str, DevicesActive devicesActive, DevicesActive devicesActive2, DevicesActive devicesActive3) {
        super(str);
        if (devicesActive == null) {
            throw new IllegalArgumentException("Required value for 'active1Day' is null");
        }
        this.active1Day = devicesActive;
        if (devicesActive2 == null) {
            throw new IllegalArgumentException("Required value for 'active7Day' is null");
        }
        this.active7Day = devicesActive2;
        if (devicesActive3 == null) {
            throw new IllegalArgumentException("Required value for 'active28Day' is null");
        }
        this.active28Day = devicesActive3;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    public DevicesActive getActive1Day() {
        return this.active1Day;
    }

    public DevicesActive getActive7Day() {
        return this.active7Day;
    }

    public DevicesActive getActive28Day() {
        return this.active28Day;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.active1Day, this.active7Day, this.active28Day}) + (super.hashCode() * 31);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            GetDevicesReport getDevicesReport = (GetDevicesReport) obj;
            return (this.startDate == getDevicesReport.startDate || this.startDate.equals(getDevicesReport.startDate)) && (this.active1Day == getDevicesReport.active1Day || this.active1Day.equals(getDevicesReport.active1Day)) && ((this.active7Day == getDevicesReport.active7Day || this.active7Day.equals(getDevicesReport.active7Day)) && (this.active28Day == getDevicesReport.active28Day || this.active28Day.equals(getDevicesReport.active28Day)));
        }
        return false;
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    @Override // com.dropbox.core.v2.team.BaseDfbReport
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<GetDevicesReport> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(GetDevicesReport getDevicesReport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.string().serialize(getDevicesReport.startDate, gVar);
            gVar.a("active_1_day");
            DevicesActive.Serializer.INSTANCE.serialize(getDevicesReport.active1Day, gVar);
            gVar.a("active_7_day");
            DevicesActive.Serializer.INSTANCE.serialize(getDevicesReport.active7Day, gVar);
            gVar.a("active_28_day");
            DevicesActive.Serializer.INSTANCE.serialize(getDevicesReport.active28Day, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public GetDevicesReport deserialize(k kVar, boolean z) throws IOException {
            String tag;
            DevicesActive devicesActiveDeserialize;
            DevicesActive devicesActiveDeserialize2;
            DevicesActive devicesActiveDeserialize3;
            String strDeserialize;
            DevicesActive devicesActive = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                DevicesActive devicesActive2 = null;
                DevicesActive devicesActive3 = null;
                String str = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        DevicesActive devicesActive4 = devicesActive;
                        devicesActiveDeserialize2 = devicesActive2;
                        devicesActiveDeserialize3 = devicesActive3;
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                        devicesActiveDeserialize = devicesActive4;
                    } else if ("active_1_day".equals(strD)) {
                        strDeserialize = str;
                        DevicesActive devicesActive5 = devicesActive2;
                        devicesActiveDeserialize3 = DevicesActive.Serializer.INSTANCE.deserialize(kVar);
                        devicesActiveDeserialize = devicesActive;
                        devicesActiveDeserialize2 = devicesActive5;
                    } else if ("active_7_day".equals(strD)) {
                        devicesActiveDeserialize3 = devicesActive3;
                        strDeserialize = str;
                        DevicesActive devicesActive6 = devicesActive;
                        devicesActiveDeserialize2 = DevicesActive.Serializer.INSTANCE.deserialize(kVar);
                        devicesActiveDeserialize = devicesActive6;
                    } else if ("active_28_day".equals(strD)) {
                        devicesActiveDeserialize = DevicesActive.Serializer.INSTANCE.deserialize(kVar);
                        devicesActiveDeserialize2 = devicesActive2;
                        devicesActiveDeserialize3 = devicesActive3;
                        strDeserialize = str;
                    } else {
                        skipValue(kVar);
                        devicesActiveDeserialize = devicesActive;
                        devicesActiveDeserialize2 = devicesActive2;
                        devicesActiveDeserialize3 = devicesActive3;
                        strDeserialize = str;
                    }
                    str = strDeserialize;
                    devicesActive3 = devicesActiveDeserialize3;
                    devicesActive2 = devicesActiveDeserialize2;
                    devicesActive = devicesActiveDeserialize;
                }
                if (str == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                if (devicesActive3 == null) {
                    throw new j(kVar, "Required field \"active_1_day\" missing.");
                }
                if (devicesActive2 == null) {
                    throw new j(kVar, "Required field \"active_7_day\" missing.");
                }
                if (devicesActive == null) {
                    throw new j(kVar, "Required field \"active_28_day\" missing.");
                }
                GetDevicesReport getDevicesReport = new GetDevicesReport(str, devicesActive3, devicesActive2, devicesActive);
                if (!z) {
                    expectEndObject(kVar);
                }
                return getDevicesReport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
