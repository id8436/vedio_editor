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
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Toast;
import com.learnncode.mediachooser.j;
import com.learnncode.mediachooser.k;
import com.learnncode.mediachooser.l;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class VideoFragment extends Fragment implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Uri f3732a = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.learnncode.mediachooser.a.b f3733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GridView f3734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Cursor f3735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3738g;
    private ArrayList<String> h = new ArrayList<>();
    private ArrayList<com.learnncode.mediachooser.e> i;
    private View j;
    private i k;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.k = (i) activity;
        } catch (ClassCastException e2) {
            throw new ClassCastException(activity.toString() + " must implement OnVideoSelectedListener");
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public VideoFragment() {
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.j == null) {
            this.j = layoutInflater.inflate(k.view_grid_layout_media_chooser, viewGroup, false);
            this.f3734c = (GridView) this.j.findViewById(j.gridViewFromMediaChooser);
            if (getArguments() != null) {
                b(getArguments().getString("bucketId"));
            } else {
                a();
            }
        } else {
            ((ViewGroup) this.j.getParent()).removeView(this.j);
            if (this.f3733b == null || this.f3733b.getCount() == 0) {
                Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
            }
        }
        return this.j;
    }

    private void b(String str) {
        try {
            this.f3735d = getActivity().getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_data", "_id", "duration"}, "bucket_id=" + str, null, "datetaken DESC");
            c();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a() {
        try {
            this.f3735d = getActivity().getContentResolver().query(f3732a, new String[]{"_data", "_id", "duration"}, null, null, "datetaken DESC");
            c();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private String c(String str) {
        long jLongValue = Long.valueOf(str).longValue();
        long seconds = TimeUnit.MILLISECONDS.toSeconds(jLongValue) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(jLongValue));
        long minutes = TimeUnit.MILLISECONDS.toMinutes(jLongValue) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(jLongValue));
        long hours = TimeUnit.MILLISECONDS.toHours(jLongValue);
        if (hours == 0 && minutes == 0) {
            return String.format(":%02d", Long.valueOf(seconds));
        }
        if (hours == 0) {
            return String.format("%02d:%02d", Long.valueOf(minutes), Long.valueOf(seconds));
        }
        return String.format("%d:%02d:%02d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds));
    }

    private void c() {
        int count = this.f3735d.getCount();
        if (count > 0) {
            this.f3736e = this.f3735d.getColumnIndex("_data");
            this.f3737f = this.f3735d.getColumnIndex("_id");
            this.f3738g = this.f3735d.getColumnIndex("duration");
            this.f3735d.moveToFirst();
            this.i = new ArrayList<>();
            for (int i = 0; i < count; i++) {
                this.f3735d.moveToPosition(i);
                this.i.add(new com.learnncode.mediachooser.e(this.f3735d.getString(this.f3736e), false, Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "" + this.f3735d.getString(this.f3737f)), c(this.f3735d.getString(this.f3738g))));
            }
            this.f3733b = new com.learnncode.mediachooser.a.b(getActivity(), 0, this.i, true);
            this.f3733b.f3643a = this;
            this.f3734c.setAdapter((ListAdapter) this.f3733b);
            this.f3734c.setOnScrollListener(this);
        } else {
            Toast.makeText(getActivity(), getActivity().getString(l.no_media_file_available), 0).show();
        }
        this.f3734c.setOnItemLongClickListener(new g(this));
        this.f3734c.setOnItemClickListener(new h(this));
    }

    public void a(String str) {
        if (this.f3733b != null) {
            this.i.add(0, new com.learnncode.mediachooser.e(str, false));
            this.f3733b.notifyDataSetChanged();
            return;
        }
        a();
    }

    public ArrayList<String> b() {
        return this.h;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (absListView == this.f3734c && i != 2) {
            this.f3733b.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
