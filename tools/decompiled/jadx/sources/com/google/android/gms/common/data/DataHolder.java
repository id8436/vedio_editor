package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class DataHolder implements SafeParcelable {
    public static final zze CREATOR = new zze();
    private static final zza zzRI = new zza(new String[0], null) { // from class: com.google.android.gms.common.data.DataHolder.1
    };
    boolean mClosed;
    private final int zzOJ;
    private final String[] zzRA;
    Bundle zzRB;
    private final CursorWindow[] zzRC;
    private final Bundle zzRD;
    int[] zzRE;
    int zzRF;
    private Object zzRG;
    private boolean zzRH;
    private final int zzzH;

    public class zza {
        private final String[] zzRA;
        private final ArrayList<HashMap<String, Object>> zzRJ;
        private final String zzRK;
        private final HashMap<Object, Integer> zzRL;
        private boolean zzRM;
        private String zzRN;

        private zza(String[] strArr, String str) {
            this.zzRA = (String[]) zzv.zzr(strArr);
            this.zzRJ = new ArrayList<>();
            this.zzRK = str;
            this.zzRL = new HashMap<>();
            this.zzRM = false;
            this.zzRN = null;
        }
    }

    public class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zzRH = true;
        this.zzzH = i;
        this.zzRA = strArr;
        this.zzRC = cursorWindowArr;
        this.zzOJ = i2;
        this.zzRD = bundle;
    }

    private DataHolder(zza zzaVar, int i, Bundle bundle) {
        this(zzaVar.zzRA, zza(zzaVar, -1), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zzRH = true;
        this.zzzH = 1;
        this.zzRA = (String[]) zzv.zzr(strArr);
        this.zzRC = (CursorWindow[]) zzv.zzr(cursorWindowArr);
        this.zzOJ = i;
        this.zzRD = bundle;
        zzlq();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(zzRI, i, bundle);
    }

    private static CursorWindow[] zza(zza zzaVar, int i) {
        int i2;
        boolean z;
        CursorWindow cursorWindow;
        if (zzaVar.zzRA.length == 0) {
            return new CursorWindow[0];
        }
        List listSubList = (i < 0 || i >= zzaVar.zzRJ.size()) ? zzaVar.zzRJ : zzaVar.zzRJ.subList(0, i);
        int size = listSubList.size();
        CursorWindow cursorWindow2 = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow2);
        cursorWindow2.setNumColumns(zzaVar.zzRA.length);
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + i3 + ")");
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(zzaVar.zzRA.length);
                    arrayList.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) listSubList.get(i3);
                boolean zPutDouble = true;
                for (int i4 = 0; i4 < zzaVar.zzRA.length && zPutDouble; i4++) {
                    String str = zzaVar.zzRA[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        zPutDouble = cursorWindow2.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        zPutDouble = cursorWindow2.putString((String) obj, i3, i4);
                    } else if (obj instanceof Long) {
                        zPutDouble = cursorWindow2.putLong(((Long) obj).longValue(), i3, i4);
                    } else if (obj instanceof Integer) {
                        zPutDouble = cursorWindow2.putLong(((Integer) obj).intValue(), i3, i4);
                    } else if (obj instanceof Boolean) {
                        zPutDouble = cursorWindow2.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i3, i4);
                    } else if (obj instanceof byte[]) {
                        zPutDouble = cursorWindow2.putBlob((byte[]) obj, i3, i4);
                    } else if (obj instanceof Double) {
                        zPutDouble = cursorWindow2.putDouble(((Double) obj).doubleValue(), i3, i4);
                    } else {
                        if (!(obj instanceof Float)) {
                            throw new IllegalArgumentException("Unsupported object for column " + str + ": " + obj);
                        }
                        zPutDouble = cursorWindow2.putDouble(((Float) obj).floatValue(), i3, i4);
                    }
                }
                if (zPutDouble) {
                    i2 = i3;
                    z = false;
                    cursorWindow = cursorWindow2;
                } else {
                    if (z2) {
                        throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    Log.d("DataHolder", "Couldn't populate window data for row " + i3 + " - allocating new window.");
                    cursorWindow2.freeLastRow();
                    CursorWindow cursorWindow3 = new CursorWindow(false);
                    cursorWindow3.setStartPosition(i3);
                    cursorWindow3.setNumColumns(zzaVar.zzRA.length);
                    arrayList.add(cursorWindow3);
                    i2 = i3 - 1;
                    cursorWindow = cursorWindow3;
                    z = true;
                }
                z2 = z;
                cursorWindow2 = cursorWindow;
                i3 = i2 + 1;
            } catch (RuntimeException e2) {
                int size2 = arrayList.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList.get(i5)).close();
                }
                throw e2;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    public static DataHolder zzaE(int i) {
        return zza(i, (Bundle) null);
    }

    private void zzf(String str, int i) {
        if (this.zzRB == null || !this.zzRB.containsKey(str)) {
            throw new IllegalArgumentException("No such column: " + str);
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= this.zzRF) {
            throw new CursorIndexOutOfBoundsException(i, this.zzRF);
        }
    }

    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.zzRC.length; i++) {
                    this.zzRC[i].close();
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        try {
            if (this.zzRH && this.zzRC.length > 0 && !isClosed()) {
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + (this.zzRG == null ? "internal object: " + toString() : this.zzRG.toString()) + ")");
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        return this.zzRF;
    }

    public int getStatusCode() {
        return this.zzOJ;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzf(str, i);
        this.zzRC[i2].copyStringToBuffer(i, this.zzRB.getInt(str), charArrayBuffer);
    }

    public int zzaD(int i) {
        int i2 = 0;
        zzv.zzP(i >= 0 && i < this.zzRF);
        while (true) {
            if (i2 >= this.zzRE.length) {
                break;
            }
            if (i < this.zzRE[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.zzRE.length ? i2 - 1 : i2;
    }

    public long zzb(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].getLong(i, this.zzRB.getInt(str));
    }

    public boolean zzbF(String str) {
        return this.zzRB.containsKey(str);
    }

    public int zzc(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].getInt(i, this.zzRB.getInt(str));
    }

    public String zzd(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].getString(i, this.zzRB.getInt(str));
    }

    public boolean zze(String str, int i, int i2) {
        zzf(str, i);
        return Long.valueOf(this.zzRC[i2].getLong(i, this.zzRB.getInt(str))).longValue() == 1;
    }

    public float zzf(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].getFloat(i, this.zzRB.getInt(str));
    }

    public byte[] zzg(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].getBlob(i, this.zzRB.getInt(str));
    }

    public Uri zzh(String str, int i, int i2) {
        String strZzd = zzd(str, i, i2);
        if (strZzd == null) {
            return null;
        }
        return Uri.parse(strZzd);
    }

    public boolean zzi(String str, int i, int i2) {
        zzf(str, i);
        return this.zzRC[i2].isNull(i, this.zzRB.getInt(str));
    }

    public Bundle zzlm() {
        return this.zzRD;
    }

    public void zzlq() {
        this.zzRB = new Bundle();
        for (int i = 0; i < this.zzRA.length; i++) {
            this.zzRB.putInt(this.zzRA[i], i);
        }
        this.zzRE = new int[this.zzRC.length];
        int numRows = 0;
        for (int i2 = 0; i2 < this.zzRC.length; i2++) {
            this.zzRE[i2] = numRows;
            numRows += this.zzRC[i2].getNumRows() - (numRows - this.zzRC[i2].getStartPosition());
        }
        this.zzRF = numRows;
    }

    String[] zzlr() {
        return this.zzRA;
    }

    CursorWindow[] zzls() {
        return this.zzRC;
    }

    public void zzm(Object obj) {
        this.zzRG = obj;
    }
}
