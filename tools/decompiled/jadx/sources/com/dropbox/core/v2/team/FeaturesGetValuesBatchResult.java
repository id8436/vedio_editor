package com.dropbox.core.v2.team;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.team.FeatureValue;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FeaturesGetValuesBatchResult {
    protected final List<FeatureValue> values;

    public FeaturesGetValuesBatchResult(List<FeatureValue> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'values' is null");
        }
        Iterator<FeatureValue> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException("An item in list 'values' is null");
            }
        }
        this.values = list;
    }

    public List<FeatureValue> getValues() {
        return this.values;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.values});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FeaturesGetValuesBatchResult featuresGetValuesBatchResult = (FeaturesGetValuesBatchResult) obj;
        return this.values == featuresGetValuesBatchResult.values || this.values.equals(featuresGetValuesBatchResult.values);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<FeaturesGetValuesBatchResult> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(FeaturesGetValuesBatchResult featuresGetValuesBatchResult, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("values");
            StoneSerializers.list(FeatureValue.Serializer.INSTANCE).serialize(featuresGetValuesBatchResult.values, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public FeaturesGetValuesBatchResult deserialize(k kVar, boolean z) throws IOException {
            String tag;
            List list = null;
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
                    if ("values".equals(strD)) {
                        list = (List) StoneSerializers.list(FeatureValue.Serializer.INSTANCE).deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (list == null) {
                    throw new j(kVar, "Required field \"values\" missing.");
                }
                FeaturesGetValuesBatchResult featuresGetValuesBatchResult = new FeaturesGetValuesBatchResult(list);
                if (!z) {
                    expectEndObject(kVar);
                }
                return featuresGetValuesBatchResult;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
