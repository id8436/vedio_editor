package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public interface zzoc {

    public final class zza extends zzns<zza> {
        public String[] zzaOd;
        public String[] zzaOe;
        public int[] zzaOf;

        public zza() {
            zzAd();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (zznw.equals(this.zzaOd, zzaVar.zzaOd) && zznw.equals(this.zzaOe, zzaVar.zzaOe) && zznw.equals(this.zzaOf, zzaVar.zzaOf)) {
                return zza(zzaVar);
            }
            return false;
        }

        public int hashCode() {
            return ((((((zznw.hashCode(this.zzaOd) + 527) * 31) + zznw.hashCode(this.zzaOe)) * 31) + zznw.hashCode(this.zzaOf)) * 31) + zzzP();
        }

        public zza zzAd() {
            this.zzaOd = zzob.zzaOa;
            this.zzaOe = zzob.zzaOa;
            this.zzaOf = zzob.zzaNV;
            this.zzaNI = null;
            this.zzaNT = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzny
        /* JADX INFO: renamed from: zzB, reason: merged with bridge method [inline-methods] */
        public zza zzb(zznq zznqVar) throws IOException {
            while (true) {
                int iZzzy = zznqVar.zzzy();
                switch (iZzzy) {
                    case 0:
                        break;
                    case 10:
                        int iZzb = zzob.zzb(zznqVar, 10);
                        int length = this.zzaOd == null ? 0 : this.zzaOd.length;
                        String[] strArr = new String[iZzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzaOd, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zznqVar.readString();
                            zznqVar.zzzy();
                            length++;
                        }
                        strArr[length] = zznqVar.readString();
                        this.zzaOd = strArr;
                        break;
                    case 18:
                        int iZzb2 = zzob.zzb(zznqVar, 18);
                        int length2 = this.zzaOe == null ? 0 : this.zzaOe.length;
                        String[] strArr2 = new String[iZzb2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzaOe, 0, strArr2, 0, length2);
                        }
                        while (length2 < strArr2.length - 1) {
                            strArr2[length2] = zznqVar.readString();
                            zznqVar.zzzy();
                            length2++;
                        }
                        strArr2[length2] = zznqVar.readString();
                        this.zzaOe = strArr2;
                        break;
                    case 24:
                        int iZzb3 = zzob.zzb(zznqVar, 24);
                        int length3 = this.zzaOf == null ? 0 : this.zzaOf.length;
                        int[] iArr = new int[iZzb3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzaOf, 0, iArr, 0, length3);
                        }
                        while (length3 < iArr.length - 1) {
                            iArr[length3] = zznqVar.zzzB();
                            zznqVar.zzzy();
                            length3++;
                        }
                        iArr[length3] = zznqVar.zzzB();
                        this.zzaOf = iArr;
                        break;
                    case 26:
                        int iZzjn = zznqVar.zzjn(zznqVar.zzzF());
                        int position = zznqVar.getPosition();
                        int i = 0;
                        while (zznqVar.zzzK() > 0) {
                            zznqVar.zzzB();
                            i++;
                        }
                        zznqVar.zzjp(position);
                        int length4 = this.zzaOf == null ? 0 : this.zzaOf.length;
                        int[] iArr2 = new int[i + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzaOf, 0, iArr2, 0, length4);
                        }
                        while (length4 < iArr2.length) {
                            iArr2[length4] = zznqVar.zzzB();
                            length4++;
                        }
                        this.zzaOf = iArr2;
                        zznqVar.zzjo(iZzjn);
                        break;
                    default:
                        if (!zza(zznqVar, iZzzy)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        public void zza(zznr zznrVar) throws IOException {
            if (this.zzaOd != null && this.zzaOd.length > 0) {
                for (int i = 0; i < this.zzaOd.length; i++) {
                    String str = this.zzaOd[i];
                    if (str != null) {
                        zznrVar.zzb(1, str);
                    }
                }
            }
            if (this.zzaOe != null && this.zzaOe.length > 0) {
                for (int i2 = 0; i2 < this.zzaOe.length; i2++) {
                    String str2 = this.zzaOe[i2];
                    if (str2 != null) {
                        zznrVar.zzb(2, str2);
                    }
                }
            }
            if (this.zzaOf != null && this.zzaOf.length > 0) {
                for (int i3 = 0; i3 < this.zzaOf.length; i3++) {
                    zznrVar.zzx(3, this.zzaOf[i3]);
                }
            }
            super.zza(zznrVar);
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        protected int zzc() {
            int i;
            int iZzc = super.zzc();
            if (this.zzaOd == null || this.zzaOd.length <= 0) {
                i = iZzc;
            } else {
                int iZzeB = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzaOd.length; i3++) {
                    String str = this.zzaOd[i3];
                    if (str != null) {
                        i2++;
                        iZzeB += zznr.zzeB(str);
                    }
                }
                i = iZzc + iZzeB + (i2 * 1);
            }
            if (this.zzaOe != null && this.zzaOe.length > 0) {
                int iZzeB2 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < this.zzaOe.length; i5++) {
                    String str2 = this.zzaOe[i5];
                    if (str2 != null) {
                        i4++;
                        iZzeB2 += zznr.zzeB(str2);
                    }
                }
                i = i + iZzeB2 + (i4 * 1);
            }
            if (this.zzaOf == null || this.zzaOf.length <= 0) {
                return i;
            }
            int iZzju = 0;
            for (int i6 = 0; i6 < this.zzaOf.length; i6++) {
                iZzju += zznr.zzju(this.zzaOf[i6]);
            }
            return i + iZzju + (this.zzaOf.length * 1);
        }
    }

    public final class zzb extends zzns<zzb> {
        public String version;
        public int zzaOg;
        public String zzaOh;

        public zzb() {
            zzAe();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.zzaOg != zzbVar.zzaOg) {
                return false;
            }
            if (this.zzaOh == null) {
                if (zzbVar.zzaOh != null) {
                    return false;
                }
            } else if (!this.zzaOh.equals(zzbVar.zzaOh)) {
                return false;
            }
            if (this.version == null) {
                if (zzbVar.version != null) {
                    return false;
                }
            } else if (!this.version.equals(zzbVar.version)) {
                return false;
            }
            return zza(zzbVar);
        }

        public int hashCode() {
            return (((((this.zzaOh == null ? 0 : this.zzaOh.hashCode()) + ((this.zzaOg + 527) * 31)) * 31) + (this.version != null ? this.version.hashCode() : 0)) * 31) + zzzP();
        }

        public zzb zzAe() {
            this.zzaOg = 0;
            this.zzaOh = "";
            this.version = "";
            this.zzaNI = null;
            this.zzaNT = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzny
        /* JADX INFO: renamed from: zzC, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zznq zznqVar) throws IOException {
            while (true) {
                int iZzzy = zznqVar.zzzy();
                switch (iZzzy) {
                    case 0:
                        break;
                    case 8:
                        int iZzzB = zznqVar.zzzB();
                        switch (iZzzB) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                                this.zzaOg = iZzzB;
                                break;
                        }
                        break;
                    case 18:
                        this.zzaOh = zznqVar.readString();
                        break;
                    case 26:
                        this.version = zznqVar.readString();
                        break;
                    default:
                        if (!zza(zznqVar, iZzzy)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        public void zza(zznr zznrVar) throws IOException {
            if (this.zzaOg != 0) {
                zznrVar.zzx(1, this.zzaOg);
            }
            if (!this.zzaOh.equals("")) {
                zznrVar.zzb(2, this.zzaOh);
            }
            if (!this.version.equals("")) {
                zznrVar.zzb(3, this.version);
            }
            super.zza(zznrVar);
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        protected int zzc() {
            int iZzc = super.zzc();
            if (this.zzaOg != 0) {
                iZzc += zznr.zzz(1, this.zzaOg);
            }
            if (!this.zzaOh.equals("")) {
                iZzc += zznr.zzj(2, this.zzaOh);
            }
            return !this.version.equals("") ? iZzc + zznr.zzj(3, this.version) : iZzc;
        }
    }

    public final class zzc extends zzns<zzc> {
        public byte[] zzaOi;
        public byte[][] zzaOj;
        public boolean zzaOk;

        public zzc() {
            zzAf();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (Arrays.equals(this.zzaOi, zzcVar.zzaOi) && zznw.zza(this.zzaOj, zzcVar.zzaOj) && this.zzaOk == zzcVar.zzaOk) {
                return zza(zzcVar);
            }
            return false;
        }

        public int hashCode() {
            return (((this.zzaOk ? 1231 : 1237) + ((((Arrays.hashCode(this.zzaOi) + 527) * 31) + zznw.zza(this.zzaOj)) * 31)) * 31) + zzzP();
        }

        public zzc zzAf() {
            this.zzaOi = zzob.zzaOc;
            this.zzaOj = zzob.zzaOb;
            this.zzaOk = false;
            this.zzaNI = null;
            this.zzaNT = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzny
        /* JADX INFO: renamed from: zzD, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zznq zznqVar) throws IOException {
            while (true) {
                int iZzzy = zznqVar.zzzy();
                switch (iZzzy) {
                    case 0:
                        break;
                    case 10:
                        this.zzaOi = zznqVar.readBytes();
                        break;
                    case 18:
                        int iZzb = zzob.zzb(zznqVar, 18);
                        int length = this.zzaOj == null ? 0 : this.zzaOj.length;
                        byte[][] bArr = new byte[iZzb + length][];
                        if (length != 0) {
                            System.arraycopy(this.zzaOj, 0, bArr, 0, length);
                        }
                        while (length < bArr.length - 1) {
                            bArr[length] = zznqVar.readBytes();
                            zznqVar.zzzy();
                            length++;
                        }
                        bArr[length] = zznqVar.readBytes();
                        this.zzaOj = bArr;
                        break;
                    case 24:
                        this.zzaOk = zznqVar.zzzC();
                        break;
                    default:
                        if (!zza(zznqVar, iZzzy)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        public void zza(zznr zznrVar) throws IOException {
            if (!Arrays.equals(this.zzaOi, zzob.zzaOc)) {
                zznrVar.zza(1, this.zzaOi);
            }
            if (this.zzaOj != null && this.zzaOj.length > 0) {
                for (int i = 0; i < this.zzaOj.length; i++) {
                    byte[] bArr = this.zzaOj[i];
                    if (bArr != null) {
                        zznrVar.zza(2, bArr);
                    }
                }
            }
            if (this.zzaOk) {
                zznrVar.zzb(3, this.zzaOk);
            }
            super.zza(zznrVar);
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        protected int zzc() {
            int iZzc = super.zzc();
            if (!Arrays.equals(this.zzaOi, zzob.zzaOc)) {
                iZzc += zznr.zzb(1, this.zzaOi);
            }
            if (this.zzaOj != null && this.zzaOj.length > 0) {
                int iZzy = 0;
                int i = 0;
                for (int i2 = 0; i2 < this.zzaOj.length; i2++) {
                    byte[] bArr = this.zzaOj[i2];
                    if (bArr != null) {
                        i++;
                        iZzy += zznr.zzy(bArr);
                    }
                }
                iZzc = iZzc + iZzy + (i * 1);
            }
            return this.zzaOk ? iZzc + zznr.zzc(3, this.zzaOk) : iZzc;
        }
    }

    public final class zzd extends zzns<zzd> {
        public String tag;
        public long zzaOl;
        public long zzaOm;
        public int zzaOn;
        public int zzaOo;
        public boolean zzaOp;
        public zze[] zzaOq;
        public zzb zzaOr;
        public byte[] zzaOs;
        public byte[] zzaOt;
        public byte[] zzaOu;
        public zza zzaOv;
        public String zzaOw;
        public long zzaOx;
        public zzc zzaOy;

        public zzd() {
            zzAg();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.zzaOl != zzdVar.zzaOl || this.zzaOm != zzdVar.zzaOm) {
                return false;
            }
            if (this.tag == null) {
                if (zzdVar.tag != null) {
                    return false;
                }
            } else if (!this.tag.equals(zzdVar.tag)) {
                return false;
            }
            if (this.zzaOn != zzdVar.zzaOn || this.zzaOo != zzdVar.zzaOo || this.zzaOp != zzdVar.zzaOp || !zznw.equals(this.zzaOq, zzdVar.zzaOq)) {
                return false;
            }
            if (this.zzaOr == null) {
                if (zzdVar.zzaOr != null) {
                    return false;
                }
            } else if (!this.zzaOr.equals(zzdVar.zzaOr)) {
                return false;
            }
            if (!Arrays.equals(this.zzaOs, zzdVar.zzaOs) || !Arrays.equals(this.zzaOt, zzdVar.zzaOt) || !Arrays.equals(this.zzaOu, zzdVar.zzaOu)) {
                return false;
            }
            if (this.zzaOv == null) {
                if (zzdVar.zzaOv != null) {
                    return false;
                }
            } else if (!this.zzaOv.equals(zzdVar.zzaOv)) {
                return false;
            }
            if (this.zzaOw == null) {
                if (zzdVar.zzaOw != null) {
                    return false;
                }
            } else if (!this.zzaOw.equals(zzdVar.zzaOw)) {
                return false;
            }
            if (this.zzaOx != zzdVar.zzaOx) {
                return false;
            }
            if (this.zzaOy == null) {
                if (zzdVar.zzaOy != null) {
                    return false;
                }
            } else if (!this.zzaOy.equals(zzdVar.zzaOy)) {
                return false;
            }
            return zza(zzdVar);
        }

        public int hashCode() {
            return (((((((this.zzaOw == null ? 0 : this.zzaOw.hashCode()) + (((this.zzaOv == null ? 0 : this.zzaOv.hashCode()) + (((((((((this.zzaOr == null ? 0 : this.zzaOr.hashCode()) + (((((this.zzaOp ? 1231 : 1237) + (((((((this.tag == null ? 0 : this.tag.hashCode()) + ((((((int) (this.zzaOl ^ (this.zzaOl >>> 32))) + 527) * 31) + ((int) (this.zzaOm ^ (this.zzaOm >>> 32)))) * 31)) * 31) + this.zzaOn) * 31) + this.zzaOo) * 31)) * 31) + zznw.hashCode(this.zzaOq)) * 31)) * 31) + Arrays.hashCode(this.zzaOs)) * 31) + Arrays.hashCode(this.zzaOt)) * 31) + Arrays.hashCode(this.zzaOu)) * 31)) * 31)) * 31) + ((int) (this.zzaOx ^ (this.zzaOx >>> 32)))) * 31) + (this.zzaOy != null ? this.zzaOy.hashCode() : 0)) * 31) + zzzP();
        }

        public zzd zzAg() {
            this.zzaOl = 0L;
            this.zzaOm = 0L;
            this.tag = "";
            this.zzaOn = 0;
            this.zzaOo = 0;
            this.zzaOp = false;
            this.zzaOq = zze.zzAh();
            this.zzaOr = null;
            this.zzaOs = zzob.zzaOc;
            this.zzaOt = zzob.zzaOc;
            this.zzaOu = zzob.zzaOc;
            this.zzaOv = null;
            this.zzaOw = "";
            this.zzaOx = 180000L;
            this.zzaOy = null;
            this.zzaNI = null;
            this.zzaNT = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzny
        /* JADX INFO: renamed from: zzE, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zznq zznqVar) throws IOException {
            while (true) {
                int iZzzy = zznqVar.zzzy();
                switch (iZzzy) {
                    case 0:
                        break;
                    case 8:
                        this.zzaOl = zznqVar.zzzA();
                        break;
                    case 18:
                        this.tag = zznqVar.readString();
                        break;
                    case 26:
                        int iZzb = zzob.zzb(zznqVar, 26);
                        int length = this.zzaOq == null ? 0 : this.zzaOq.length;
                        zze[] zzeVarArr = new zze[iZzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzaOq, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zznqVar.zza(zzeVarArr[length]);
                            zznqVar.zzzy();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zznqVar.zza(zzeVarArr[length]);
                        this.zzaOq = zzeVarArr;
                        break;
                    case 50:
                        this.zzaOs = zznqVar.readBytes();
                        break;
                    case 58:
                        if (this.zzaOv == null) {
                            this.zzaOv = new zza();
                        }
                        zznqVar.zza(this.zzaOv);
                        break;
                    case 66:
                        this.zzaOt = zznqVar.readBytes();
                        break;
                    case 74:
                        if (this.zzaOr == null) {
                            this.zzaOr = new zzb();
                        }
                        zznqVar.zza(this.zzaOr);
                        break;
                    case 80:
                        this.zzaOp = zznqVar.zzzC();
                        break;
                    case 88:
                        this.zzaOn = zznqVar.zzzB();
                        break;
                    case 96:
                        this.zzaOo = zznqVar.zzzB();
                        break;
                    case 106:
                        this.zzaOu = zznqVar.readBytes();
                        break;
                    case 114:
                        this.zzaOw = zznqVar.readString();
                        break;
                    case 120:
                        this.zzaOx = zznqVar.zzzE();
                        break;
                    case 130:
                        if (this.zzaOy == null) {
                            this.zzaOy = new zzc();
                        }
                        zznqVar.zza(this.zzaOy);
                        break;
                    case 136:
                        this.zzaOm = zznqVar.zzzA();
                        break;
                    default:
                        if (!zza(zznqVar, iZzzy)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        public void zza(zznr zznrVar) throws IOException {
            if (this.zzaOl != 0) {
                zznrVar.zzb(1, this.zzaOl);
            }
            if (!this.tag.equals("")) {
                zznrVar.zzb(2, this.tag);
            }
            if (this.zzaOq != null && this.zzaOq.length > 0) {
                for (int i = 0; i < this.zzaOq.length; i++) {
                    zze zzeVar = this.zzaOq[i];
                    if (zzeVar != null) {
                        zznrVar.zza(3, zzeVar);
                    }
                }
            }
            if (!Arrays.equals(this.zzaOs, zzob.zzaOc)) {
                zznrVar.zza(6, this.zzaOs);
            }
            if (this.zzaOv != null) {
                zznrVar.zza(7, this.zzaOv);
            }
            if (!Arrays.equals(this.zzaOt, zzob.zzaOc)) {
                zznrVar.zza(8, this.zzaOt);
            }
            if (this.zzaOr != null) {
                zznrVar.zza(9, this.zzaOr);
            }
            if (this.zzaOp) {
                zznrVar.zzb(10, this.zzaOp);
            }
            if (this.zzaOn != 0) {
                zznrVar.zzx(11, this.zzaOn);
            }
            if (this.zzaOo != 0) {
                zznrVar.zzx(12, this.zzaOo);
            }
            if (!Arrays.equals(this.zzaOu, zzob.zzaOc)) {
                zznrVar.zza(13, this.zzaOu);
            }
            if (!this.zzaOw.equals("")) {
                zznrVar.zzb(14, this.zzaOw);
            }
            if (this.zzaOx != 180000) {
                zznrVar.zzc(15, this.zzaOx);
            }
            if (this.zzaOy != null) {
                zznrVar.zza(16, this.zzaOy);
            }
            if (this.zzaOm != 0) {
                zznrVar.zzb(17, this.zzaOm);
            }
            super.zza(zznrVar);
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        protected int zzc() {
            int iZzc = super.zzc();
            if (this.zzaOl != 0) {
                iZzc += zznr.zzd(1, this.zzaOl);
            }
            if (!this.tag.equals("")) {
                iZzc += zznr.zzj(2, this.tag);
            }
            if (this.zzaOq != null && this.zzaOq.length > 0) {
                int iZzc2 = iZzc;
                for (int i = 0; i < this.zzaOq.length; i++) {
                    zze zzeVar = this.zzaOq[i];
                    if (zzeVar != null) {
                        iZzc2 += zznr.zzc(3, zzeVar);
                    }
                }
                iZzc = iZzc2;
            }
            if (!Arrays.equals(this.zzaOs, zzob.zzaOc)) {
                iZzc += zznr.zzb(6, this.zzaOs);
            }
            if (this.zzaOv != null) {
                iZzc += zznr.zzc(7, this.zzaOv);
            }
            if (!Arrays.equals(this.zzaOt, zzob.zzaOc)) {
                iZzc += zznr.zzb(8, this.zzaOt);
            }
            if (this.zzaOr != null) {
                iZzc += zznr.zzc(9, this.zzaOr);
            }
            if (this.zzaOp) {
                iZzc += zznr.zzc(10, this.zzaOp);
            }
            if (this.zzaOn != 0) {
                iZzc += zznr.zzz(11, this.zzaOn);
            }
            if (this.zzaOo != 0) {
                iZzc += zznr.zzz(12, this.zzaOo);
            }
            if (!Arrays.equals(this.zzaOu, zzob.zzaOc)) {
                iZzc += zznr.zzb(13, this.zzaOu);
            }
            if (!this.zzaOw.equals("")) {
                iZzc += zznr.zzj(14, this.zzaOw);
            }
            if (this.zzaOx != 180000) {
                iZzc += zznr.zze(15, this.zzaOx);
            }
            if (this.zzaOy != null) {
                iZzc += zznr.zzc(16, this.zzaOy);
            }
            return this.zzaOm != 0 ? iZzc + zznr.zzd(17, this.zzaOm) : iZzc;
        }
    }

    public final class zze extends zzns<zze> {
        private static volatile zze[] zzaOz;
        public String value;
        public String zzgk;

        public zze() {
            zzAi();
        }

        public static zze[] zzAh() {
            if (zzaOz == null) {
                synchronized (zznw.zzaNS) {
                    if (zzaOz == null) {
                        zzaOz = new zze[0];
                    }
                }
            }
            return zzaOz;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.zzgk == null) {
                if (zzeVar.zzgk != null) {
                    return false;
                }
            } else if (!this.zzgk.equals(zzeVar.zzgk)) {
                return false;
            }
            if (this.value == null) {
                if (zzeVar.value != null) {
                    return false;
                }
            } else if (!this.value.equals(zzeVar.value)) {
                return false;
            }
            return zza(zzeVar);
        }

        public int hashCode() {
            return (((((this.zzgk == null ? 0 : this.zzgk.hashCode()) + 527) * 31) + (this.value != null ? this.value.hashCode() : 0)) * 31) + zzzP();
        }

        public zze zzAi() {
            this.zzgk = "";
            this.value = "";
            this.zzaNI = null;
            this.zzaNT = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzny
        /* JADX INFO: renamed from: zzF, reason: merged with bridge method [inline-methods] */
        public zze zzb(zznq zznqVar) throws IOException {
            while (true) {
                int iZzzy = zznqVar.zzzy();
                switch (iZzzy) {
                    case 0:
                        break;
                    case 10:
                        this.zzgk = zznqVar.readString();
                        break;
                    case 18:
                        this.value = zznqVar.readString();
                        break;
                    default:
                        if (!zza(zznqVar, iZzzy)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        public void zza(zznr zznrVar) throws IOException {
            if (!this.zzgk.equals("")) {
                zznrVar.zzb(1, this.zzgk);
            }
            if (!this.value.equals("")) {
                zznrVar.zzb(2, this.value);
            }
            super.zza(zznrVar);
        }

        @Override // com.google.android.gms.internal.zzns, com.google.android.gms.internal.zzny
        protected int zzc() {
            int iZzc = super.zzc();
            if (!this.zzgk.equals("")) {
                iZzc += zznr.zzj(1, this.zzgk);
            }
            return !this.value.equals("") ? iZzc + zznr.zzj(2, this.value) : iZzc;
        }
    }
}
