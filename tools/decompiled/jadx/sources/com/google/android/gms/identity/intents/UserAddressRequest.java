package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class UserAddressRequest implements SafeParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new zza();
    List<CountrySpecification> zzapl;
    private final int zzzH;

    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.zzapl == null) {
                UserAddressRequest.this.zzapl = new ArrayList();
            }
            UserAddressRequest.this.zzapl.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.zzapl == null) {
                UserAddressRequest.this.zzapl = new ArrayList();
            }
            UserAddressRequest.this.zzapl.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.zzapl != null) {
                UserAddressRequest.this.zzapl = Collections.unmodifiableList(UserAddressRequest.this.zzapl);
            }
            return UserAddressRequest.this;
        }
    }

    UserAddressRequest() {
        this.zzzH = 1;
    }

    UserAddressRequest(int i, List<CountrySpecification> list) {
        this.zzzH = i;
        this.zzapl = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.zzzH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
