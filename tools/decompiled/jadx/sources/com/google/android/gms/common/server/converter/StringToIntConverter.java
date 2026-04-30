package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class StringToIntConverter implements SafeParcelable, FastJsonResponse.zza<String, Integer> {
    public static final zzb CREATOR = new zzb();
    private final HashMap<String, Integer> zzUt;
    private final HashMap<Integer, String> zzUu;
    private final ArrayList<Entry> zzUv;
    private final int zzzH;

    public final class Entry implements SafeParcelable {
        public static final zzc CREATOR = new zzc();
        final int versionCode;
        final String zzUw;
        final int zzUx;

        Entry(int i, String str, int i2) {
            this.versionCode = i;
            this.zzUw = str;
            this.zzUx = i2;
        }

        Entry(String str, int i) {
            this.versionCode = 1;
            this.zzUw = str;
            this.zzUx = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzc zzcVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc zzcVar = CREATOR;
            zzc.zza(this, parcel, i);
        }
    }

    public StringToIntConverter() {
        this.zzzH = 1;
        this.zzUt = new HashMap<>();
        this.zzUu = new HashMap<>();
        this.zzUv = null;
    }

    StringToIntConverter(int i, ArrayList<Entry> arrayList) {
        this.zzzH = i;
        this.zzUt = new HashMap<>();
        this.zzUu = new HashMap<>();
        this.zzUv = null;
        zzb(arrayList);
    }

    private void zzb(ArrayList<Entry> arrayList) {
        for (Entry entry : arrayList) {
            zzg(entry.zzUw, entry.zzUx);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzb zzbVar = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public String convertBack(Integer num) {
        String str = this.zzUu.get(num);
        return (str == null && this.zzUt.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter zzg(String str, int i) {
        this.zzUt.put(str, Integer.valueOf(i));
        this.zzUu.put(Integer.valueOf(i), str);
        return this;
    }

    ArrayList<Entry> zzmv() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.zzUt.keySet()) {
            arrayList.add(new Entry(str, this.zzUt.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzmw() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzmx() {
        return 0;
    }
}
