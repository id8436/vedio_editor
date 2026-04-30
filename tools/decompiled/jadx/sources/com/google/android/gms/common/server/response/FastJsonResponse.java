package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.internal.zzhr;
import com.google.android.gms.internal.zzhz;
import com.google.android.gms.internal.zzia;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FastJsonResponse {

    public class Field<I, O> implements SafeParcelable {
        public static final com.google.android.gms.common.server.response.zza CREATOR = new com.google.android.gms.common.server.response.zza();
        protected final int zzUA;
        protected final boolean zzUB;
        protected final String zzUC;
        protected final int zzUD;
        protected final Class<? extends FastJsonResponse> zzUE;
        protected final String zzUF;
        private FieldMappingDictionary zzUG;
        private zza<I, O> zzUH;
        protected final int zzUy;
        protected final boolean zzUz;
        private final int zzzH;

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.zzzH = i;
            this.zzUy = i2;
            this.zzUz = z;
            this.zzUA = i3;
            this.zzUB = z2;
            this.zzUC = str;
            this.zzUD = i4;
            if (str2 == null) {
                this.zzUE = null;
                this.zzUF = null;
            } else {
                this.zzUE = SafeParcelResponse.class;
                this.zzUF = str2;
            }
            if (converterWrapper == null) {
                this.zzUH = null;
            } else {
                this.zzUH = (zza<I, O>) converterWrapper.zzmu();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, zza<I, O> zzaVar) {
            this.zzzH = 1;
            this.zzUy = i;
            this.zzUz = z;
            this.zzUA = i2;
            this.zzUB = z2;
            this.zzUC = str;
            this.zzUD = i3;
            this.zzUE = cls;
            if (cls == null) {
                this.zzUF = null;
            } else {
                this.zzUF = cls.getCanonicalName();
            }
            this.zzUH = zzaVar;
        }

        public static Field zza(String str, int i, zza<?, ?> zzaVar, boolean z) {
            return new Field(zzaVar.zzmw(), z, zzaVar.zzmx(), false, str, i, null, zzaVar);
        }

        public static <T extends FastJsonResponse> Field<T, T> zza(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Integer, Integer> zzh(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Double, Double> zzi(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> zzj(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static Field<String, String> zzk(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> zzl(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.zzUH.convertBack(o);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            com.google.android.gms.common.server.response.zza zzaVar = CREATOR;
            return 0;
        }

        public int getVersionCode() {
            return this.zzzH;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Field\n");
            sb.append("            versionCode=").append(this.zzzH).append('\n');
            sb.append("                 typeIn=").append(this.zzUy).append('\n');
            sb.append("            typeInArray=").append(this.zzUz).append('\n');
            sb.append("                typeOut=").append(this.zzUA).append('\n');
            sb.append("           typeOutArray=").append(this.zzUB).append('\n');
            sb.append("        outputFieldName=").append(this.zzUC).append('\n');
            sb.append("      safeParcelFieldId=").append(this.zzUD).append('\n');
            sb.append("       concreteTypeName=").append(zzmH()).append('\n');
            if (zzmG() != null) {
                sb.append("     concreteType.class=").append(zzmG().getCanonicalName()).append('\n');
            }
            sb.append("          converterName=").append(this.zzUH == null ? "null" : this.zzUH.getClass().getCanonicalName()).append('\n');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            com.google.android.gms.common.server.response.zza zzaVar = CREATOR;
            com.google.android.gms.common.server.response.zza.zza(this, parcel, i);
        }

        public void zza(FieldMappingDictionary fieldMappingDictionary) {
            this.zzUG = fieldMappingDictionary;
        }

        public Field<I, O> zzmB() {
            return new Field<>(this.zzzH, this.zzUy, this.zzUz, this.zzUA, this.zzUB, this.zzUC, this.zzUD, this.zzUF, zzmJ());
        }

        public boolean zzmC() {
            return this.zzUz;
        }

        public boolean zzmD() {
            return this.zzUB;
        }

        public String zzmE() {
            return this.zzUC;
        }

        public int zzmF() {
            return this.zzUD;
        }

        public Class<? extends FastJsonResponse> zzmG() {
            return this.zzUE;
        }

        String zzmH() {
            if (this.zzUF == null) {
                return null;
            }
            return this.zzUF;
        }

        public boolean zzmI() {
            return this.zzUH != null;
        }

        ConverterWrapper zzmJ() {
            if (this.zzUH == null) {
                return null;
            }
            return ConverterWrapper.zza(this.zzUH);
        }

        public Map<String, Field<?, ?>> zzmK() {
            zzv.zzr(this.zzUF);
            zzv.zzr(this.zzUG);
            return this.zzUG.zzbX(this.zzUF);
        }

        public int zzmw() {
            return this.zzUy;
        }

        public int zzmx() {
            return this.zzUA;
        }
    }

    public interface zza<I, O> {
        I convertBack(O o);

        int zzmw();

        int zzmx();
    }

    private void zza(StringBuilder sb, Field field, Object obj) {
        if (field.zzmw() == 11) {
            sb.append(field.zzmG().cast(obj).toString());
        } else {
            if (field.zzmw() != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(zzhz.zzbY((String) obj));
            sb.append("\"");
        }
    }

    private void zza(StringBuilder sb, Field field, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, field, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        Map<String, Field<?, ?>> mapZzmy = zzmy();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapZzmy.keySet()) {
            Field<?, ?> field = mapZzmy.get(str);
            if (zza(field)) {
                Object objZza = zza(field, zzb(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
                }
                sb.append("\"").append(str).append("\":");
                if (objZza != null) {
                    switch (field.zzmx()) {
                        case 8:
                            sb.append("\"").append(zzhr.zzg((byte[]) objZza)).append("\"");
                            break;
                        case 9:
                            sb.append("\"").append(zzhr.zzh((byte[]) objZza)).append("\"");
                            break;
                        case 10:
                            zzia.zza(sb, (HashMap) objZza);
                            break;
                        default:
                            if (field.zzmC()) {
                                zza(sb, (Field) field, (ArrayList<Object>) objZza);
                            } else {
                                zza(sb, field, objZza);
                            }
                            break;
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <O, I> I zza(Field<I, O> field, Object obj) {
        return ((Field) field).zzUH != null ? field.convertBack(obj) : obj;
    }

    protected boolean zza(Field field) {
        return field.zzmx() == 11 ? field.zzmD() ? zzbW(field.zzmE()) : zzbV(field.zzmE()) : zzbU(field.zzmE());
    }

    protected Object zzb(Field field) {
        String strZzmE = field.zzmE();
        if (field.zzmG() == null) {
            return zzbT(field.zzmE());
        }
        zzv.zza(zzbT(field.zzmE()) == null, "Concrete field shouldn't be value object: %s", field.zzmE());
        HashMap<String, Object> mapZzmA = field.zzmD() ? zzmA() : zzmz();
        if (mapZzmA != null) {
            return mapZzmA.get(strZzmE);
        }
        try {
            return getClass().getMethod("get" + Character.toUpperCase(strZzmE.charAt(0)) + strZzmE.substring(1), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    protected abstract Object zzbT(String str);

    protected abstract boolean zzbU(String str);

    protected boolean zzbV(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzbW(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public HashMap<String, Object> zzmA() {
        return null;
    }

    public abstract Map<String, Field<?, ?>> zzmy();

    public HashMap<String, Object> zzmz() {
        return null;
    }
}
