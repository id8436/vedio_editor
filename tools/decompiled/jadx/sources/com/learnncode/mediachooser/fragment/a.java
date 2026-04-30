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

/* JADX INFO: compiled from: BucketImageFragment.java */
/* JADX INFO: loaded from: classes3.dex */
public class a extends Fragment {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f3739d = {"bucket_id", "bucket_display_name", "_data"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3740a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3741b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3742c = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f3743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private GridView f3744f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.learnncode.mediachooser.a.a f3745g;
    private Cursor h;

    public a() {
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f3743e == null) {
            this.f3743e = layoutInflater.inflate(k.view_grid_bucket_layout_media_chooser, viewGroup, false);
            this.f3744f = (GridView) this.f3743e.findViewById(j.gridViewFromMediaChooser);
            a();
        } else {
            ((ViewGroup) this.f3743e.getParent()).removeView(this.f3743e);
            if (this.f3745g == null) {
                Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
            }
        }
        return this.f3743e;
    }

    private void a() {
        this.h = getActivity().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, f3739d, null, null, "datetaken DESC");
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
            this.f3745g = new com.learnncode.mediachooser.a.a(getActivity(), 0, arrayList, false);
            this.f3744f.setAdapter((ListAdapter) this.f3745g);
        } else {
            Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
        }
        this.f3744f.setOnItemClickListener(new b(this));
    }
}
