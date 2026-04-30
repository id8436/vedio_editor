package com.adobe.creativeapps.settings.activity;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.creativeapps.settings.R;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.h.a.d;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Map;

/* JADX INFO: compiled from: CloudPickerActivity.java */
/* JADX INFO: loaded from: classes.dex */
class CloudsListAdapter extends ArrayAdapter<AdobeCloud> implements View.OnClickListener {
    private ArrayList<AdobeCloud> mCloudArrayList;
    private Context mContext;
    private Map<String, Bitmap> mLogoBitmaps;

    public CloudsListAdapter(Context context, ArrayList<AdobeCloud> arrayList) {
        super(context, 0, arrayList);
        this.mContext = context;
        this.mLogoBitmaps = new Hashtable();
        this.mCloudArrayList = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.mCloudArrayList.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: compiled from: CloudPickerActivity.java */
    public class ViewHolder {
        public TextView cloudName;
        public ImageView defaultCloud;
        public ImageView iconImage;

        ViewHolder(View view) {
            d.a(view);
            this.cloudName = (TextView) view.findViewById(R.id.cloud_name);
            this.iconImage = (ImageView) view.findViewById(R.id.cloud_icon_image);
            this.defaultCloud = (ImageView) view.findViewById(R.id.Default_Cloud_selector);
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.cloud_tab_item, (ViewGroup) null);
            ViewHolder viewHolder2 = new ViewHolder(view);
            view.setTag(viewHolder2);
            viewHolder = viewHolder2;
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        if (this.mCloudArrayList.size() <= 0) {
            viewHolder.defaultCloud.setVisibility(4);
            viewHolder.iconImage.setVisibility(4);
        } else {
            viewHolder.defaultCloud.setColorFilter(R.color.settings_secondary);
            AdobeCloud adobeCloud = this.mCloudArrayList.get(i);
            viewHolder.cloudName.setText(adobeCloud.getName());
            if (!adobeCloud.isPrivateCloud()) {
                viewHolder.iconImage.setImageResource(R.drawable.ic_cc_24);
            } else if (this.mLogoBitmaps.get(adobeCloud.getName()) == null) {
                viewHolder.iconImage.setImageResource(R.drawable.ic_cc_24);
                if (adobeCloud.getLogoURL() != null) {
                    new DownloadImageTask(viewHolder.iconImage, adobeCloud.getName()).execute(adobeCloud.getLogoURL().toString());
                }
            } else {
                viewHolder.iconImage.setImageBitmap(this.mLogoBitmaps.get(adobeCloud.getName()));
            }
            viewHolder.defaultCloud.setVisibility(4);
            if (adobeCloud.equals(AdobeCloudManager.getSharedCloudManager().getDefaultCloud())) {
                viewHolder.defaultCloud.setVisibility(0);
                ((CloudPickerActivity) this.mContext).setCloudSelection(Integer.valueOf(i));
                viewHolder.defaultCloud.setOnClickListener(new OnItemClickListener((AdapterView) viewGroup, view, i));
            }
            view.setOnClickListener(new OnItemClickListener((AdapterView) viewGroup, view, i));
        }
        return view;
    }

    /* JADX INFO: compiled from: CloudPickerActivity.java */
    class OnItemClickListener implements View.OnClickListener {
        private int mPosition;
        private AdapterView<?> mparent;
        private View mview;

        OnItemClickListener(AdapterView<?> adapterView, View view, int i) {
            this.mPosition = i;
            this.mparent = adapterView;
            this.mview = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((CloudPickerActivity) CloudsListAdapter.this.mContext).onItemClick(this.mparent, this.mview, this.mPosition, 0L);
        }
    }

    /* JADX INFO: compiled from: CloudPickerActivity.java */
    class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {
        ImageView bmImage;
        String mCloudName;

        public DownloadImageTask(ImageView imageView, String str) {
            this.bmImage = imageView;
            this.mCloudName = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmapDecodeStream;
            Exception e2;
            try {
                InputStream inputStreamOpenStream = new URL(strArr[0]).openStream();
                bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenStream);
                try {
                    inputStreamOpenStream.close();
                } catch (Exception e3) {
                    e2 = e3;
                    Log.e(AdobeNotification.Error, e2.getMessage());
                    e2.printStackTrace();
                }
            } catch (Exception e4) {
                bitmapDecodeStream = null;
                e2 = e4;
            }
            return bitmapDecodeStream;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            if (bitmap != null) {
                this.bmImage.setImageBitmap(bitmap);
                CloudsListAdapter.this.mLogoBitmaps.put(this.mCloudName, bitmap);
            }
        }
    }
}
