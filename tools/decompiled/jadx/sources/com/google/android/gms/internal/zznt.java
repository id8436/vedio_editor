package com.google.android.gms.internal;

import com.google.android.gms.internal.zzns;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zznt<M extends zzns<M>, T> {
    public final int tag;
    protected final int type;
    protected final Class<T> zzaNJ;
    protected final boolean zzaNK;

    private zznt(int i, Class<T> cls, int i2, boolean z) {
        this.type = i;
        this.zzaNJ = cls;
        this.tag = i2;
        this.zzaNK = z;
    }

    private T zzA(List<zzoa> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.zzaNJ.cast(zzA(zznq.zzv(list.get(list.size() - 1).zzaNU)));
    }

    @Deprecated
    public static <M extends zzns<M>, T extends zzny> zznt<M, T> zza(int i, Class<T> cls, int i2) {
        return new zznt<>(i, cls, i2, false);
    }

    private T zzz(List<zzoa> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzoa zzoaVar = list.get(i);
            if (zzoaVar.zzaNU.length != 0) {
                zza(zzoaVar, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        T tCast = this.zzaNJ.cast(Array.newInstance(this.zzaNJ.getComponentType(), size));
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(tCast, i2, arrayList.get(i2));
        }
        return tCast;
    }

    protected Object zzA(zznq zznqVar) {
        Class componentType = this.zzaNK ? this.zzaNJ.getComponentType() : this.zzaNJ;
        try {
            switch (this.type) {
                case 10:
                    zzny zznyVar = (zzny) componentType.newInstance();
                    zznqVar.zza(zznyVar, zzob.zzjG(this.tag));
                    return zznyVar;
                case 11:
                    zzny zznyVar2 = (zzny) componentType.newInstance();
                    zznqVar.zza(zznyVar2);
                    return zznyVar2;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (IOException e2) {
            throw new IllegalArgumentException("Error reading extension field", e2);
        } catch (IllegalAccessException e3) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e3);
        } catch (InstantiationException e4) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e4);
        }
    }

    int zzM(Object obj) {
        return this.zzaNK ? zzN(obj) : zzO(obj);
    }

    protected int zzN(Object obj) {
        int iZzO = 0;
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            if (Array.get(obj, i) != null) {
                iZzO += zzO(Array.get(obj, i));
            }
        }
        return iZzO;
    }

    protected int zzO(Object obj) {
        int iZzjG = zzob.zzjG(this.tag);
        switch (this.type) {
            case 10:
                return zznr.zzb(iZzjG, (zzny) obj);
            case 11:
                return zznr.zzc(iZzjG, (zzny) obj);
            default:
                throw new IllegalArgumentException("Unknown type " + this.type);
        }
    }

    protected void zza(zzoa zzoaVar, List<Object> list) {
        list.add(zzA(zznq.zzv(zzoaVar.zzaNU)));
    }

    void zza(Object obj, zznr zznrVar) throws IOException {
        if (this.zzaNK) {
            zzc(obj, zznrVar);
        } else {
            zzb(obj, zznrVar);
        }
    }

    protected void zzb(Object obj, zznr zznrVar) {
        try {
            zznrVar.zzjy(this.tag);
            switch (this.type) {
                case 10:
                    int iZzjG = zzob.zzjG(this.tag);
                    zznrVar.zzb((zzny) obj);
                    zznrVar.zzB(iZzjG, 4);
                    return;
                case 11:
                    zznrVar.zzc((zzny) obj);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    protected void zzc(Object obj, zznr zznrVar) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, zznrVar);
            }
        }
    }

    final T zzy(List<zzoa> list) {
        if (list == null) {
            return null;
        }
        return this.zzaNK ? zzz(list) : zzA(list);
    }
}
