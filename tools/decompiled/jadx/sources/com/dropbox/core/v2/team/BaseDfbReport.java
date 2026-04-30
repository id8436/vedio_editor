package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class BaseDfbReport {
    protected final String startDate;

    public BaseDfbReport(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'startDate' is null");
        }
        this.startDate = str;
    }

    public String getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startDate});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        BaseDfbReport baseDfbReport = (BaseDfbReport) obj;
        return this.startDate == baseDfbReport.startDate || this.startDate.equals(baseDfbReport.startDate);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<BaseDfbReport> {
        public static final Serializer INSTANCE = new Serializer();

        private Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(BaseDfbReport baseDfbReport, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("start_date");
            StoneSerializers.string().serialize(baseDfbReport.startDate, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public BaseDfbReport deserialize(k kVar, boolean z) throws IOException {
            String tag;
            String strDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("start_date".equals(strD)) {
                        strDeserialize = StoneSerializers.string().deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (strDeserialize == null) {
                    throw new j(kVar, "Required field \"start_date\" missing.");
                }
                BaseDfbReport baseDfbReport = new BaseDfbReport(strDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return baseDfbReport;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
