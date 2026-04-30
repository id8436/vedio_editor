package com.learnncode.mediachooser.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.database.Cursor;
import android.net.Uri;
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

/* JADX INFO: loaded from: classes3.dex */
public class ImageFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<String> f3725a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<com.learnncode.mediachooser.e> f3726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GridView f3727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f3728d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f3729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.learnncode.mediachooser.a.b f3730f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Cursor f3731g;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.f3729e = (f) activity;
        } catch (ClassCastException e2) {
            throw new ClassCastException(activity.toString() + " must implement OnImageSelectedListener");
        }
    }

    public ImageFragment() {
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f3728d == null) {
            this.f3728d = layoutInflater.inflate(k.view_grid_layout_media_chooser, viewGroup, false);
            this.f3727c = (GridView) this.f3728d.findViewById(j.gridViewFromMediaChooser);
            if (getArguments() != null) {
                b(getArguments().getString("bucketId"));
            } else {
                b();
            }
        } else {
            ((ViewGroup) this.f3728d.getParent()).removeView(this.f3728d);
            if (this.f3730f == null || this.f3730f.getCount() == 0) {
                Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
            }
        }
        return this.f3728d;
    }

    private void b(String str) {
        try {
            this.f3731g = getActivity().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", "_id"}, "bucket_id=" + str, null, "datetaken DESC");
            a(this.f3731g);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b() {
        try {
            this.f3731g = getActivity().getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", "_id"}, null, null, "datetaken DESC");
            a(this.f3731g);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(Cursor cursor) {
        if (cursor.getCount() > 0) {
            this.f3726b = new ArrayList<>();
            for (int i = 0; i < cursor.getCount(); i++) {
                cursor.moveToPosition(i);
                this.f3726b.add(new com.learnncode.mediachooser.e(cursor.getString(cursor.getColumnIndex("_data")), false, Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "" + cursor.getString(cursor.getColumnIndex("_id")))));
            }
            this.f3730f = new com.learnncode.mediachooser.a.b(getActivity(), 0, this.f3726b, false);
            this.f3727c.setAdapter((ListAdapter) this.f3730f);
        } else {
            Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
        }
        this.f3727c.setOnItemClickListener(new e(this));
    }

    public ArrayList<String> a() {
        return this.f3725a;
    }

    public void a(String str) {
        if (this.f3730f != null) {
            this.f3726b.add(0, new com.learnncode.mediachooser.e(str, false));
            this.f3730f.notifyDataSetChanged();
            return;
        }
        b();
    }
}
