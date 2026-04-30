package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.v2.teamlog.PlacementRestriction;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class DataPlacementRestrictionSatisfyPolicyDetails {
    protected final PlacementRestriction placementRestriction;

    public DataPlacementRestrictionSatisfyPolicyDetails(PlacementRestriction placementRestriction) {
        if (placementRestriction == null) {
            throw new IllegalArgumentException("Required value for 'placementRestriction' is null");
        }
        this.placementRestriction = placementRestriction;
    }

    public PlacementRestriction getPlacementRestriction() {
        return this.placementRestriction;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.placementRestriction});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails = (DataPlacementRestrictionSatisfyPolicyDetails) obj;
        return this.placementRestriction == dataPlacementRestrictionSatisfyPolicyDetails.placementRestriction || this.placementRestriction.equals(dataPlacementRestrictionSatisfyPolicyDetails.placementRestriction);
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DataPlacementRestrictionSatisfyPolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("placement_restriction");
            PlacementRestriction.Serializer.INSTANCE.serialize(dataPlacementRestrictionSatisfyPolicyDetails.placementRestriction, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DataPlacementRestrictionSatisfyPolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PlacementRestriction placementRestrictionDeserialize = null;
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
                    if ("placement_restriction".equals(strD)) {
                        placementRestrictionDeserialize = PlacementRestriction.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (placementRestrictionDeserialize == null) {
                    throw new j(kVar, "Required field \"placement_restriction\" missing.");
                }
                DataPlacementRestrictionSatisfyPolicyDetails dataPlacementRestrictionSatisfyPolicyDetails = new DataPlacementRestrictionSatisfyPolicyDetails(placementRestrictionDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return dataPlacementRestrictionSatisfyPolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
