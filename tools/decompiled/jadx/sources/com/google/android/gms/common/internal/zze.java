package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzme;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zze {
    private final Account zzJc;
    private final int zzPA;
    private final View zzPB;
    private final String zzPC;
    private final String zzPD;
    private final Set<Scope> zzPz;
    private final Set<Scope> zzSW;
    private final Map<Api<?>, zza> zzSX;
    private final zzme zzSY;
    private Integer zzSZ;

    /* JADX INFO: loaded from: classes3.dex */
    public final class zza {
        public final Set<Scope> zzPP;
        public final boolean zzTa;

        public zza(Set<Scope> set, boolean z) {
            zzv.zzr(set);
            this.zzPP = Collections.unmodifiableSet(set);
            this.zzTa = z;
        }
    }

    public zze(Account account, Collection<Scope> collection, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzme zzmeVar) {
        this.zzJc = account;
        this.zzPz = collection == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(new HashSet(collection));
        this.zzSX = map == null ? Collections.EMPTY_MAP : map;
        this.zzPB = view;
        this.zzPA = i;
        this.zzPC = str;
        this.zzPD = str2;
        this.zzSY = zzmeVar;
        HashSet hashSet = new HashSet(this.zzPz);
        Iterator<zza> it = this.zzSX.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().zzPP);
        }
        this.zzSW = Collections.unmodifiableSet(hashSet);
    }

    public Account getAccount() {
        return this.zzJc;
    }

    @Deprecated
    public String getAccountName() {
        if (this.zzJc != null) {
            return this.zzJc.name;
        }
        return null;
    }

    public void zza(Integer num) {
        this.zzSZ = num;
    }

    public Set<Scope> zzb(Api<?> api) {
        zza zzaVar = this.zzSX.get(api);
        if (zzaVar == null || zzaVar.zzPP.isEmpty()) {
            return this.zzPz;
        }
        HashSet hashSet = new HashSet(this.zzPz);
        hashSet.addAll(zzaVar.zzPP);
        return hashSet;
    }

    @Deprecated
    public String zzlD() {
        return zzlE().name;
    }

    public Account zzlE() {
        return this.zzJc != null ? this.zzJc : new Account("<<default account>>", "com.google");
    }

    public int zzlF() {
        return this.zzPA;
    }

    public Set<Scope> zzlG() {
        return this.zzPz;
    }

    public Set<Scope> zzlH() {
        return this.zzSW;
    }

    public Map<Api<?>, zza> zzlI() {
        return this.zzSX;
    }

    public String zzlJ() {
        return this.zzPC;
    }

    public String zzlK() {
        return this.zzPD;
    }

    public View zzlL() {
        return this.zzPB;
    }

    public zzme zzlM() {
        return this.zzSY;
    }

    public Integer zzlN() {
        return this.zzSZ;
    }
}
