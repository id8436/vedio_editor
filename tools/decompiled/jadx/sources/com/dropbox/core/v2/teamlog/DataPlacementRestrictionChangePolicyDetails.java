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
public class DataPlacementRestrictionChangePolicyDetails {
    protected final PlacementRestriction newValue;
    protected final PlacementRestriction previousValue;

    public DataPlacementRestrictionChangePolicyDetails(PlacementRestriction placementRestriction, PlacementRestriction placementRestriction2) {
        if (placementRestriction == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = placementRestriction;
        if (placementRestriction2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = placementRestriction2;
    }

    public PlacementRestriction getPreviousValue() {
        return this.previousValue;
    }

    public PlacementRestriction getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails = (DataPlacementRestrictionChangePolicyDetails) obj;
            return (this.previousValue == dataPlacementRestrictionChangePolicyDetails.previousValue || this.previousValue.equals(dataPlacementRestrictionChangePolicyDetails.previousValue)) && (this.newValue == dataPlacementRestrictionChangePolicyDetails.newValue || this.newValue.equals(dataPlacementRestrictionChangePolicyDetails.newValue));
        }
        return false;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends StructSerializer<DataPlacementRestrictionChangePolicyDetails> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails, g gVar, boolean z) throws IOException {
            if (!z) {
                gVar.e();
            }
            gVar.a("previous_value");
            PlacementRestriction.Serializer.INSTANCE.serialize(dataPlacementRestrictionChangePolicyDetails.previousValue, gVar);
            gVar.a("new_value");
            PlacementRestriction.Serializer.INSTANCE.serialize(dataPlacementRestrictionChangePolicyDetails.newValue, gVar);
            if (!z) {
                gVar.f();
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public DataPlacementRestrictionChangePolicyDetails deserialize(k kVar, boolean z) throws IOException {
            String tag;
            PlacementRestriction placementRestrictionDeserialize = null;
            if (z) {
                tag = null;
            } else {
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                PlacementRestriction placementRestrictionDeserialize2 = null;
                while (kVar.c() == o.FIELD_NAME) {
                    String strD = kVar.d();
                    kVar.a();
                    if ("previous_value".equals(strD)) {
                        placementRestrictionDeserialize2 = PlacementRestriction.Serializer.INSTANCE.deserialize(kVar);
                    } else if ("new_value".equals(strD)) {
                        placementRestrictionDeserialize = PlacementRestriction.Serializer.INSTANCE.deserialize(kVar);
                    } else {
                        skipValue(kVar);
                    }
                }
                if (placementRestrictionDeserialize2 == null) {
                    throw new j(kVar, "Required field \"previous_value\" missing.");
                }
                if (placementRestrictionDeserialize == null) {
                    throw new j(kVar, "Required field \"new_value\" missing.");
                }
                DataPlacementRestrictionChangePolicyDetails dataPlacementRestrictionChangePolicyDetails = new DataPlacementRestrictionChangePolicyDetails(placementRestrictionDeserialize2, placementRestrictionDeserialize);
                if (!z) {
                    expectEndObject(kVar);
                }
                return dataPlacementRestrictionChangePolicyDetails;
            }
            throw new j(kVar, "No subtype found that matches tag: \"" + tag + "\"");
        }
    }
}
