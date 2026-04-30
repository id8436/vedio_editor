package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zza<T extends LifecycleDelegate> {
    private T zzacd;
    private Bundle zzace;
    private LinkedList<InterfaceC0079zza> zzacf;
    private final zzf<T> zzacg = (zzf<T>) new zzf<T>() { // from class: com.google.android.gms.dynamic.zza.1
        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.zzacd = t;
            Iterator it = zza.this.zzacf.iterator();
            while (it.hasNext()) {
                ((InterfaceC0079zza) it.next()).zzb(zza.this.zzacd);
            }
            zza.this.zzacf.clear();
            zza.this.zzace = null;
        }
    };

    /* JADX INFO: renamed from: com.google.android.gms.dynamic.zza$zza, reason: collision with other inner class name */
    interface InterfaceC0079zza {
        int getState();

        void zzb(LifecycleDelegate lifecycleDelegate);
    }

    private void zza(Bundle bundle, InterfaceC0079zza interfaceC0079zza) {
        if (this.zzacd != null) {
            interfaceC0079zza.zzb(this.zzacd);
            return;
        }
        if (this.zzacf == null) {
            this.zzacf = new LinkedList<>();
        }
        this.zzacf.add(interfaceC0079zza);
        if (bundle != null) {
            if (this.zzace == null) {
                this.zzace = (Bundle) bundle.clone();
            } else {
                this.zzace.putAll(bundle);
            }
        }
        zza(this.zzacg);
    }

    public static void zzb(FrameLayout frameLayout) {
        final Context context = frameLayout.getContext();
        final int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String strZzh = com.google.android.gms.common.internal.zzf.zzh(context, iIsGooglePlayServicesAvailable);
        String strZzi = com.google.android.gms.common.internal.zzf.zzi(context, iIsGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(strZzh);
        linearLayout.addView(textView);
        if (strZzi != null) {
            Button button = new Button(context);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(strZzi);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    context.startActivity(GooglePlayServicesUtil.zzar(iIsGooglePlayServicesAvailable));
                }
            });
        }
    }

    private void zzdu(int i) {
        while (!this.zzacf.isEmpty() && this.zzacf.getLast().getState() >= i) {
            this.zzacf.removeLast();
        }
    }

    public void onCreate(final Bundle bundle) {
        zza(bundle, new InterfaceC0079zza() { // from class: com.google.android.gms.dynamic.zza.3
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public int getState() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzacd.onCreate(bundle);
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new InterfaceC0079zza() { // from class: com.google.android.gms.dynamic.zza.4
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public int getState() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.zzacd.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.zzacd == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.zzacd != null) {
            this.zzacd.onDestroy();
        } else {
            zzdu(1);
        }
    }

    public void onDestroyView() {
        if (this.zzacd != null) {
            this.zzacd.onDestroyView();
        } else {
            zzdu(2);
        }
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        zza(bundle2, new InterfaceC0079zza() { // from class: com.google.android.gms.dynamic.zza.2
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public int getState() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzacd.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.zzacd != null) {
            this.zzacd.onLowMemory();
        }
    }

    public void onPause() {
        if (this.zzacd != null) {
            this.zzacd.onPause();
        } else {
            zzdu(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new InterfaceC0079zza() { // from class: com.google.android.gms.dynamic.zza.7
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public int getState() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzacd.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.zzacd != null) {
            this.zzacd.onSaveInstanceState(bundle);
        } else if (this.zzace != null) {
            bundle.putAll(this.zzace);
        }
    }

    public void onStart() {
        zza((Bundle) null, new InterfaceC0079zza() { // from class: com.google.android.gms.dynamic.zza.6
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public int getState() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0079zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.zzacd.onStart();
            }
        });
    }

    public void onStop() {
        if (this.zzacd != null) {
            this.zzacd.onStop();
        } else {
            zzdu(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzou() {
        return this.zzacd;
    }
}
