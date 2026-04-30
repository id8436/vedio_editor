package com.learnncode.mediachooser.fragment;

import android.app.Fragment;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Toast;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import com.learnncode.mediachooser.l;
import java.util.ArrayList;

/* JADX INFO: compiled from: BucketVideoFragment.java */
/* JADX INFO: loaded from: classes3.dex */
public class c extends Fragment {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f3747d = {"bucket_id", "bucket_display_name", "_data"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3748a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3749b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3750c = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f3751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.learnncode.mediachooser.a.a f3752f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private GridView f3753g;
    private Cursor h;

    public c() {
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f3751e == null) {
            this.f3751e = layoutInflater.inflate(k.view_grid_bucket_layout_media_chooser, viewGroup, false);
            this.f3753g = (GridView) this.f3751e.findViewById(j.gridViewFromMediaChooser);
            a();
        } else {
            ((ViewGroup) this.f3751e.getParent()).removeView(this.f3751e);
            if (this.f3752f == null || this.f3752f.getCount() == 0) {
                Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
            }
        }
        return this.f3751e;
    }

    private void a() {
        this.h = getActivity().getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, f3747d, null, null, "datetaken DESC");
        ArrayList arrayList = new ArrayList();
        while (this.h.moveToNext()) {
            try {
                com.learnncode.mediachooser.a aVar = new com.learnncode.mediachooser.a(this.h.getInt(0), this.h.getString(1), this.h.getString(2));
                if (!arrayList.contains(aVar)) {
                    arrayList.add(aVar);
                }
            } finally {
                this.h.close();
            }
        }
        if (this.h.getCount() > 0) {
            this.f3752f = new com.learnncode.mediachooser.a.a(getActivity(), 0, arrayList, true);
            this.f3752f.f3637a = this;
            this.f3753g.setAdapter((ListAdapter) this.f3752f);
        } else {
            Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
        }
        this.f3753g.setOnItemClickListener(new d(this));
    }
}
