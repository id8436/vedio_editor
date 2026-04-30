package com.adobe.creativesdk.foundation.internal.settings;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.assetux.R;
import java.util.List;

/* JADX INFO: compiled from: CloudPickerActivity.java */
/* JADX INFO: loaded from: classes.dex */
class CloudsListAdapter extends ArrayAdapter<AdobeCloud> implements View.OnClickListener {
    private List<AdobeCloud> mCloudArrayList;
    private Context mContext;

    CloudsListAdapter(Context context, List<AdobeCloud> list) {
        super(context, 0, list);
        this.mContext = context;
        this.mCloudArrayList = list;
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
        private TextView cloudName;
        private ImageView defaultCloud;
        private ImageView iconImage;

        ViewHolder(View view) {
            setCloudName((TextView) view.findViewById(R.id.adobe_csdk_cloud_name));
            setIconImage((ImageView) view.findViewById(R.id.adobe_csdk_cloud_icon_image));
            setDefaultCloud((ImageView) view.findViewById(R.id.adobe_csdk_Default_Cloud_selector));
        }

        TextView getCloudName() {
            return this.cloudName;
        }

        void setCloudName(TextView textView) {
            this.cloudName = textView;
        }

        ImageView getIconImage() {
            return this.iconImage;
        }

        void setIconImage(ImageView imageView) {
            this.iconImage = imageView;
        }

        public ImageView getDefaultCloud() {
            return this.defaultCloud;
        }

        public void setDefaultCloud(ImageView imageView) {
            this.defaultCloud = imageView;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    @SuppressLint({"InflateParams"})
    public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.cloud_tab_item, (ViewGroup) null);
            ViewHolder viewHolder2 = new ViewHolder(view);
            view.setTag(viewHolder2);
            viewHolder = viewHolder2;
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        if (this.mCloudArrayList.isEmpty()) {
            viewHolder.getDefaultCloud().setVisibility(4);
            viewHolder.getIconImage().setVisibility(4);
        } else {
            viewHolder.getDefaultCloud().setColorFilter(R.color.adobe_csdk_asset_ux_settings_secondary);
            AdobeCloud adobeCloud = this.mCloudArrayList.get(i);
            viewHolder.getCloudName().setText(adobeCloud.getName());
            if (!adobeCloud.isPrivateCloud()) {
                viewHolder.getIconImage().setImageResource(R.drawable.ic_cc_24);
            } else {
                viewHolder.getIconImage().setImageResource(R.drawable.ic_cc_private_24);
                if (adobeCloud.getLogoURL() != null) {
                    new DownloadImageTask(viewHolder.getIconImage()).execute(adobeCloud.getLogoURL().toString());
                }
            }
            viewHolder.getDefaultCloud().setVisibility(4);
            if (adobeCloud.equals(AdobeCloudManager.getSharedCloudManager().getDefaultCloud()) && ((CloudPickerActivity) this.mContext).indicateDefaultCloud) {
                viewHolder.getDefaultCloud().setVisibility(0);
                ((CloudPickerActivity) this.mContext).setCloudSelection(Integer.valueOf(i));
                viewHolder.getDefaultCloud().setOnClickListener(new OnItemClickListener((AdapterView) viewGroup, view, i));
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
}
