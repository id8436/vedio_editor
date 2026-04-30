package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.assetux.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadErrorSummaryFragment extends DialogFragment {
    public static String ERROR_LIST_KEY = "errorlist_key";
    private ArrayList<AdobeUploadAssetData> _failedAssetsList;
    private ListView _upload_failed_assets_listview;

    public void setUploadFailedList(ArrayList<AdobeUploadAssetData> arrayList) {
        this._failedAssetsList = arrayList;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AdobeUploadThumbnailMgr.destroyInstance();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_assetview_upload_error_details_dialog, viewGroup, false);
        float dimension = getResources().getDimension(R.dimen.adobe_csdk_fragment_detail_footer_border_left_radius);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{dimension, dimension, dimension, dimension, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        shapeDrawable.getPaint().setColor(-1);
        viewInflate.setBackground(shapeDrawable);
        this._upload_failed_assets_listview = (ListView) viewInflate.findViewById(R.id.adobe_csdk_assetview_upload_error_detials_main_list);
        if (this._failedAssetsList != null && getActivity() != null) {
            this._upload_failed_assets_listview.setAdapter((ListAdapter) new UploadErrorDetailsListAdapter(getActivity(), R.layout.adobe_assetview_upload_failed_assets_list_item));
        }
        return viewInflate;
    }

    public class UploadErrorDetailsListAdapter extends ArrayAdapter<AdobeUploadAssetData> {
        public UploadErrorDetailsListAdapter(Context context, int i) {
            super(context, i);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (AdobeUploadErrorSummaryFragment.this._failedAssetsList != null) {
                return AdobeUploadErrorSummaryFragment.this._failedAssetsList.size();
            }
            return 0;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public AdobeUploadAssetData getItem(int i) {
            if (AdobeUploadErrorSummaryFragment.this._failedAssetsList != null && i >= 0 && i < AdobeUploadErrorSummaryFragment.this._failedAssetsList.size()) {
                return (AdobeUploadAssetData) AdobeUploadErrorSummaryFragment.this._failedAssetsList.get(i);
            }
            return null;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            final ImageView imageView;
            LayoutInflater layoutInflater = AdobeUploadErrorSummaryFragment.this.getLayoutInflater(null);
            if (view != null) {
                ViewHolder viewHolder = (ViewHolder) view.getTag();
                TextView textView2 = viewHolder._textView;
                imageView = viewHolder._imageView;
                textView = textView2;
            } else {
                view = layoutInflater.inflate(R.layout.adobe_assetview_upload_failed_assets_list_item, viewGroup, false);
                textView = (TextView) view.findViewById(R.id.adobe_csdk_assetview_upload_failed_asset_item_name);
                imageView = (ImageView) view.findViewById(R.id.adobe_csdk_assetview_upload_failed_asset_item_image);
                ViewHolder viewHolder2 = new ViewHolder();
                viewHolder2._imageView = imageView;
                viewHolder2._position = i;
                viewHolder2._textView = textView;
                view.setTag(viewHolder2);
            }
            AdobeUploadAssetData item = getItem(i);
            textView.setText(item.title);
            imageView.setImageBitmap(null);
            AdobeUploadThumbnailMgr.getInstance().getThumbnailasBitmap(item, new IAdobeGenericCompletionCallback<Bitmap>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadErrorSummaryFragment.UploadErrorDetailsListAdapter.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Bitmap bitmap) {
                    if (bitmap != null) {
                        imageView.setImageBitmap(bitmap);
                    }
                }
            });
            return view;
        }

        class ViewHolder {
            public ImageView _imageView;
            public int _position;
            public TextView _textView;

            private ViewHolder() {
                this._position = -1;
            }
        }
    }
}
