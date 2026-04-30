package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeEditErrorSummaryFragment extends DialogFragment {
    private List<AdobeCCFilesEditAssetData> failedAssetsList;

    public void setEditFailedList(List<AdobeCCFilesEditAssetData> list) {
        this.failedAssetsList = list;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.adobe_assetview_edit_error_details_dialog, viewGroup, false);
        float dimension = getResources().getDimension(R.dimen.adobe_csdk_fragment_detail_footer_border_left_radius);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{dimension, dimension, dimension, dimension, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        shapeDrawable.getPaint().setColor(-1);
        if (Build.VERSION.SDK_INT >= 16) {
            viewInflate.setBackground(shapeDrawable);
        } else {
            viewInflate.setBackgroundDrawable(shapeDrawable);
        }
        ListView listView = (ListView) viewInflate.findViewById(R.id.adobe_csdk_assetview_edit_error_detials_main_list);
        if (this.failedAssetsList != null && getActivity() != null) {
            listView.setAdapter((ListAdapter) new EditErrorDetailsListAdapter(getActivity(), R.layout.adobe_assetview_upload_failed_assets_list_item));
        }
        return viewInflate;
    }

    public class EditErrorDetailsListAdapter extends ArrayAdapter<AdobeCCFilesEditAssetData> {
        EditErrorDetailsListAdapter(Context context, int i) {
            super(context, i);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (AdobeEditErrorSummaryFragment.this.failedAssetsList != null) {
                return AdobeEditErrorSummaryFragment.this.failedAssetsList.size();
            }
            return 0;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public AdobeCCFilesEditAssetData getItem(int i) {
            if (AdobeEditErrorSummaryFragment.this.failedAssetsList != null && i >= 0 && i < AdobeEditErrorSummaryFragment.this.failedAssetsList.size()) {
                return (AdobeCCFilesEditAssetData) AdobeEditErrorSummaryFragment.this.failedAssetsList.get(i);
            }
            return null;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
            TextView textView;
            final ImageView imageView;
            LayoutInflater layoutInflater = AdobeEditErrorSummaryFragment.this.getLayoutInflater(null);
            if (view != null) {
                ViewHolder viewHolder = (ViewHolder) view.getTag();
                TextView textView2 = viewHolder.getTextView();
                imageView = viewHolder.getImageView();
                textView = textView2;
            } else {
                view = layoutInflater.inflate(R.layout.adobe_assetview_upload_failed_assets_list_item, viewGroup, false);
                textView = (TextView) view.findViewById(R.id.adobe_csdk_assetview_upload_failed_asset_item_name);
                imageView = (ImageView) view.findViewById(R.id.adobe_csdk_assetview_upload_failed_asset_item_image);
                ViewHolder viewHolder2 = new ViewHolder();
                viewHolder2.setImageView(imageView);
                viewHolder2.setPosition(i);
                viewHolder2.setTextView(textView);
                view.setTag(viewHolder2);
            }
            AdobeCCFilesEditAssetData item = getItem(i);
            if (item != null) {
                textView.setText(item.title);
                if (!item.isFile) {
                    imageView.setImageResource(R.drawable.collection_folder);
                } else {
                    item.file.getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(30.0f, 30.0f), new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeEditErrorSummaryFragment.EditErrorDetailsListAdapter.1
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(byte[] bArr) {
                            imageView.setImageBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeAssetException adobeAssetException) {
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    });
                }
            }
            return view;
        }

        class ViewHolder {
            private ImageView imageView;
            private int position;
            private TextView textView;

            private ViewHolder() {
                this.position = -1;
            }

            public ImageView getImageView() {
                return this.imageView;
            }

            public void setImageView(ImageView imageView) {
                this.imageView = imageView;
            }

            public TextView getTextView() {
                return this.textView;
            }

            public void setTextView(TextView textView) {
                this.textView = textView;
            }

            public int getPosition() {
                return this.position;
            }

            public void setPosition(int i) {
                this.position = i;
            }
        }
    }
}
