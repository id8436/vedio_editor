package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class FieldMappingDictionary implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zzUI;
    private final ArrayList<Entry> zzUJ;
    private final String zzUK;
    private final int zzzH;

    public class Entry implements SafeParcelable {
        public static final zzd CREATOR = new zzd();
        final String className;
        final int versionCode;
        final ArrayList<FieldMapPair> zzUL;

        Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.versionCode = i;
            this.className = str;
            this.zzUL = arrayList;
        }

        Entry(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
            this.versionCode = 1;
            this.className = str;
            this.zzUL = zzA(map);
        }

        private static ArrayList<FieldMapPair> zzA(Map<String, FastJsonResponse.Field<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<FieldMapPair> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new FieldMapPair(str, map.get(str)));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzd zzdVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzd zzdVar = CREATOR;
            zzd.zza(this, parcel, i);
        }

        HashMap<String, FastJsonResponse.Field<?, ?>> zzmP() {
            HashMap<String, FastJsonResponse.Field<?, ?>> map = new HashMap<>();
            int size = this.zzUL.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = this.zzUL.get(i);
                map.put(fieldMapPair.zzgk, fieldMapPair.zzUM);
            }
            return map;
        }
    }

    public class FieldMapPair implements SafeParcelable {
        public static final zzb CREATOR = new zzb();
        final int versionCode;
        final FastJsonResponse.Field<?, ?> zzUM;
        final String zzgk;

        FieldMapPair(int i, String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = i;
            this.zzgk = str;
            this.zzUM = field;
        }

        FieldMapPair(String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = 1;
            this.zzgk = str;
            this.zzUM = field;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzb zzbVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb zzbVar = CREATOR;
            zzb.zza(this, parcel, i);
        }
    }

    FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.zzzH = i;
        this.zzUJ = null;
        this.zzUI = zzc(arrayList);
        this.zzUK = (String) zzv.zzr(str);
        zzmL();
    }

    public FieldMappingDictionary(Class<? extends FastJsonResponse> cls) {
        this.zzzH = 1;
        this.zzUJ = null;
        this.zzUI = new HashMap<>();
        this.zzUK = cls.getCanonicalName();
    }

    private static HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zzc(ArrayList<Entry> arrayList) {
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> map = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Entry entry = arrayList.get(i);
            map.put(entry.className, entry.zzmP());
        }
        return map;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzc zzcVar = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zzUI.keySet()) {
            sb.append(str).append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zzUI.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc zzcVar = CREATOR;
        zzc.zza(this, parcel, i);
    }

    public void zza(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.zzUI.put(cls.getCanonicalName(), map);
    }

    public boolean zzb(Class<? extends FastJsonResponse> cls) {
        return this.zzUI.containsKey(cls.getCanonicalName());
    }

    public Map<String, FastJsonResponse.Field<?, ?>> zzbX(String str) {
        return this.zzUI.get(str);
    }

    public void zzmL() {
        Iterator<String> it = this.zzUI.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zzUI.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).zza(this);
            }
        }
    }

    public void zzmM() {
        for (String str : this.zzUI.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zzUI.get(str);
            HashMap map2 = new HashMap();
            for (String str2 : map.keySet()) {
                map2.put(str2, map.get(str2).zzmB());
            }
            this.zzUI.put(str, map2);
        }
    }

    ArrayList<Entry> zzmN() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.zzUI.keySet()) {
            arrayList.add(new Entry(str, this.zzUI.get(str)));
        }
        return arrayList;
    }

    public String zzmO() {
        return this.zzUK;
    }
}
