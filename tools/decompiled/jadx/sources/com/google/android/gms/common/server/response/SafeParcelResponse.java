package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.zzhq;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzia;
import com.google.gdata.data.Category;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class SafeParcelResponse extends FastJsonResponse implements SafeParcelable {
    public static final zze CREATOR = new zze();
    private final String mClassName;
    private final FieldMappingDictionary zzUG;
    private final Parcel zzUN;
    private final int zzUO;
    private int zzUP;
    private int zzUQ;
    private final int zzzH;

    SafeParcelResponse(int i, Parcel parcel, FieldMappingDictionary fieldMappingDictionary) {
        this.zzzH = i;
        this.zzUN = (Parcel) zzv.zzr(parcel);
        this.zzUO = 2;
        this.zzUG = fieldMappingDictionary;
        if (this.zzUG == null) {
            this.mClassName = null;
        } else {
            this.mClassName = this.zzUG.zzmO();
        }
        this.zzUP = 2;
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, FieldMappingDictionary fieldMappingDictionary, String str) {
        this.zzzH = 1;
        this.zzUN = Parcel.obtain();
        safeParcelable.writeToParcel(this.zzUN, 0);
        this.zzUO = 1;
        this.zzUG = (FieldMappingDictionary) zzv.zzr(fieldMappingDictionary);
        this.mClassName = (String) zzv.zzr(str);
        this.zzUP = 2;
    }

    private static HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> zzB(Map<String, FastJsonResponse.Field<?, ?>> map) {
        HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> map2 = new HashMap<>();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            map2.put(Integer.valueOf(entry.getValue().zzmF()), entry);
        }
        return map2;
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse zza(T t) {
        String canonicalName = t.getClass().getCanonicalName();
        return new SafeParcelResponse(t, zzb(t), canonicalName);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void zza(FieldMappingDictionary fieldMappingDictionary, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (fieldMappingDictionary.zzb(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> mapZzmy = fastJsonResponse.zzmy();
        fieldMappingDictionary.zza(cls, mapZzmy);
        Iterator<String> it = mapZzmy.keySet().iterator();
        while (it.hasNext()) {
            FastJsonResponse.Field<?, ?> field = mapZzmy.get(it.next());
            Class<? extends FastJsonResponse> clsZzmG = field.zzmG();
            if (clsZzmG != null) {
                try {
                    zza(fieldMappingDictionary, clsZzmG.newInstance());
                } catch (IllegalAccessException e2) {
                    throw new IllegalStateException("Could not access object of type " + field.zzmG().getCanonicalName(), e2);
                } catch (InstantiationException e3) {
                    throw new IllegalStateException("Could not instantiate an object of type " + field.zzmG().getCanonicalName(), e3);
                }
            }
        }
    }

    private void zza(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"").append(zzhz.zzbY(obj.toString())).append("\"");
                return;
            case 8:
                sb.append("\"").append(zzhr.zzg((byte[]) obj)).append("\"");
                return;
            case 9:
                sb.append("\"").append(zzhr.zzh((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                zzia.zza(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i);
        }
    }

    private void zza(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        switch (field.zzmx()) {
            case 0:
                zzb(sb, field, zza(field, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i))));
                return;
            case 1:
                zzb(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzk(parcel, i)));
                return;
            case 2:
                zzb(sb, field, zza(field, Long.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i))));
                return;
            case 3:
                zzb(sb, field, zza(field, Float.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, i))));
                return;
            case 4:
                zzb(sb, field, zza(field, Double.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzm(parcel, i))));
                return;
            case 5:
                zzb(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzn(parcel, i)));
                return;
            case 6:
                zzb(sb, field, zza(field, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i))));
                return;
            case 7:
                zzb(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, i)));
                return;
            case 8:
            case 9:
                zzb(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, i)));
                return;
            case 10:
                zzb(sb, field, zza(field, zzh(com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, i))));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown field out type = " + field.zzmx());
        }
    }

    private void zza(StringBuilder sb, String str, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        sb.append("\"").append(str).append("\":");
        if (field.zzmI()) {
            zza(sb, field, parcel, i);
        } else {
            zzb(sb, field, parcel, i);
        }
    }

    private void zza(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> mapZzB = zzB(map);
        sb.append(Category.SCHEME_PREFIX);
        int iZzL = com.google.android.gms.common.internal.safeparcel.zza.zzL(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iZzL) {
            int iZzK = com.google.android.gms.common.internal.safeparcel.zza.zzK(parcel);
            Map.Entry<String, FastJsonResponse.Field<?, ?>> entry = mapZzB.get(Integer.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzaV(iZzK)));
            if (entry != null) {
                if (z) {
                    sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                zza(sb, entry.getKey(), entry.getValue(), parcel, iZzK);
                z = true;
            }
        }
        if (parcel.dataPosition() != iZzL) {
            throw new zza.C0072zza("Overread allowed size end=" + iZzL, parcel);
        }
        sb.append(Category.SCHEME_SUFFIX);
    }

    private static FieldMappingDictionary zzb(FastJsonResponse fastJsonResponse) {
        FieldMappingDictionary fieldMappingDictionary = new FieldMappingDictionary(fastJsonResponse.getClass());
        zza(fieldMappingDictionary, fastJsonResponse);
        fieldMappingDictionary.zzmM();
        fieldMappingDictionary.zzmL();
        return fieldMappingDictionary;
    }

    private void zzb(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        if (field.zzmD()) {
            sb.append("[");
            switch (field.zzmx()) {
                case 0:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzu(parcel, i));
                    break;
                case 1:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzw(parcel, i));
                    break;
                case 2:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzv(parcel, i));
                    break;
                case 3:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzx(parcel, i));
                    break;
                case 4:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzy(parcel, i));
                    break;
                case 5:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzz(parcel, i));
                    break;
                case 6:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, i));
                    break;
                case 7:
                    zzhq.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzA(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] parcelArrZzE = com.google.android.gms.common.internal.safeparcel.zza.zzE(parcel, i);
                    int length = parcelArrZzE.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                        }
                        parcelArrZzE[i2].setDataPosition(0);
                        zza(sb, field.zzmK(), parcelArrZzE[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (field.zzmx()) {
            case 0:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i));
                return;
            case 1:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzk(parcel, i));
                return;
            case 2:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i));
                return;
            case 3:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, i));
                return;
            case 4:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzm(parcel, i));
                return;
            case 5:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzn(parcel, i));
                return;
            case 6:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i));
                return;
            case 7:
                sb.append("\"").append(zzhz.zzbY(com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, i))).append("\"");
                return;
            case 8:
                sb.append("\"").append(zzhr.zzg(com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, i))).append("\"");
                return;
            case 9:
                sb.append("\"").append(zzhr.zzh(com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, i)));
                sb.append("\"");
                return;
            case 10:
                Bundle bundleZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, i);
                Set<String> setKeySet = bundleZzq.keySet();
                setKeySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : setKeySet) {
                    if (!z) {
                        sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                    }
                    sb.append("\"").append(str).append("\"");
                    sb.append(":");
                    sb.append("\"").append(zzhz.zzbY(bundleZzq.getString(str))).append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel parcelZzD = com.google.android.gms.common.internal.safeparcel.zza.zzD(parcel, i);
                parcelZzD.setDataPosition(0);
                zza(sb, field.zzmK(), parcelZzD);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private void zzb(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.zzmC()) {
            zzb(sb, field, (ArrayList<?>) obj);
        } else {
            zza(sb, field.zzmw(), obj);
        }
    }

    private void zzb(StringBuilder sb, FastJsonResponse.Field<?, ?> field, ArrayList<?> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
            zza(sb, field.zzmw(), arrayList.get(i));
        }
        sb.append("]");
    }

    public static HashMap<String, String> zzh(Bundle bundle) {
        HashMap<String, String> map = new HashMap<>();
        for (String str : bundle.keySet()) {
            map.put(str, bundle.getString(str));
        }
        return map;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zze zzeVar = CREATOR;
        return 0;
    }

    public int getVersionCode() {
        return this.zzzH;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        zzv.zzb(this.zzUG, "Cannot convert to JSON on client side.");
        Parcel parcelZzmQ = zzmQ();
        parcelZzmQ.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zza(sb, this.zzUG.zzbX(this.mClassName), parcelZzmQ);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze zzeVar = CREATOR;
        zze.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected Object zzbT(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected boolean zzbU(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Parcel zzmQ() {
        switch (this.zzUP) {
            case 0:
                this.zzUQ = com.google.android.gms.common.internal.safeparcel.zzb.zzM(this.zzUN);
                com.google.android.gms.common.internal.safeparcel.zzb.zzH(this.zzUN, this.zzUQ);
                this.zzUP = 2;
                break;
            case 1:
                com.google.android.gms.common.internal.safeparcel.zzb.zzH(this.zzUN, this.zzUQ);
                this.zzUP = 2;
                break;
        }
        return this.zzUN;
    }

    FieldMappingDictionary zzmR() {
        switch (this.zzUO) {
            case 0:
                return null;
            case 1:
                return this.zzUG;
            case 2:
                return this.zzUG;
            default:
                throw new IllegalStateException("Invalid creation type: " + this.zzUO);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> zzmy() {
        if (this.zzUG == null) {
            return null;
        }
        return this.zzUG.zzbX(this.mClassName);
    }
}
