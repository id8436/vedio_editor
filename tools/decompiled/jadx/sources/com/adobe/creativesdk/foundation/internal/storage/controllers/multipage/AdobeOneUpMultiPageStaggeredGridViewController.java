package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.StaggeredGridView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetOneUpViewerActivity;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileRenditionType;
import com.adobe.creativesdk.foundation.storage.AdobeAssetImageDimensions;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeOneUpMultiPageStaggeredGridViewController {
    protected AdobeAsset _asset;
    private AdobeMultiPageFragmentController _fragmentController;
    protected View _mainRootView;
    protected TextView _multiPageSectionalTextView;
    protected View _mutiPageSectionalHeader;
    protected Context _oneUpViewContext;
    protected StaggeredGridView _staggeredGridView;
    protected int num_pages = 1;

    public View getMainRootView() {
        return this._mainRootView;
    }

    public void setMainRootView(View view) {
        this._mainRootView = view;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this._asset = adobeAsset;
    }

    public void setFragmentController(AdobeMultiPageFragmentController adobeMultiPageFragmentController) {
        this._fragmentController = adobeMultiPageFragmentController;
    }

    public AdobeMultiPageFragmentController getFragmentController() {
        return this._fragmentController;
    }

    public void performInitialization(Context context) {
        this._staggeredGridView = (StaggeredGridView) this._mainRootView.findViewById(R.id.adobe_csdk_multipage_StaggeredGridView);
        this._oneUpViewContext = context;
        this._mutiPageSectionalHeader = this._mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_grid_section_container);
        this._multiPageSectionalTextView = (TextView) this._mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_grid_section_textview);
        this._staggeredGridView.setAdapter((ListAdapter) new AdobeMultiPageStaggeredGridViewAdapter());
        this._mutiPageSectionalHeader.setVisibility(0);
        this._mutiPageSectionalHeader.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageStaggeredGridViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeOneUpMultiPageStaggeredGridViewController.this._fragmentController.displayListView();
            }
        });
        this._multiPageSectionalTextView.setText(String.format(this._oneUpViewContext.getResources().getString(R.string.adobe_csdk_asset_view_multi_page_count), Integer.valueOf(this.num_pages)));
        this._staggeredGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageStaggeredGridViewController.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AdobeOneUpMultiPageStaggeredGridViewController.this._fragmentController.displayViewPager(i);
            }
        });
    }

    public class AdobeMultiPageStaggeredGridViewAdapter extends BaseAdapter {
        public AdobeMultiPageStaggeredGridViewAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!(AdobeOneUpMultiPageStaggeredGridViewController.this._asset instanceof AdobeAssetFile)) {
                return 0;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeOneUpMultiPageStaggeredGridViewController.this._asset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                AdobeOneUpMultiPageStaggeredGridViewController.this.num_pages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return AdobeOneUpMultiPageStaggeredGridViewController.this.num_pages;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        private AdobeOneUpMultiPageStaggeredCellView createImageCellView(ViewGroup viewGroup) {
            AdobeOneUpMultiPageStaggeredCellView adobeOneUpMultiPageStaggeredCellView = new AdobeOneUpMultiPageStaggeredCellView();
            adobeOneUpMultiPageStaggeredCellView.initiallizeLayoutComponents(((LayoutInflater) AdobeOneUpMultiPageStaggeredGridViewController.this._oneUpViewContext.getSystemService("layout_inflater")).inflate(R.layout.adobe_oneup_multipage_staggered_grid_cellview, viewGroup, false));
            adobeOneUpMultiPageStaggeredCellView.setAssetImageAspectRatioHint(1.0f);
            AdobeOneUpMultiPageStaggeredGridViewController.this.TryAspectRatioSetupFromAsset(adobeOneUpMultiPageStaggeredCellView, AdobeOneUpMultiPageStaggeredGridViewController.this._asset);
            return adobeOneUpMultiPageStaggeredCellView;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            AdobeOneUpMultiPageStaggeredCellView adobeOneUpMultiPageStaggeredCellViewCreateImageCellView;
            MultiPageGridImageCellHolder multiPageGridImageCellHolder = null;
            if (view != null) {
                multiPageGridImageCellHolder = (MultiPageGridImageCellHolder) view.getTag();
            }
            if (multiPageGridImageCellHolder == null) {
                MultiPageGridImageCellHolder multiPageGridImageCellHolder2 = new MultiPageGridImageCellHolder();
                adobeOneUpMultiPageStaggeredCellViewCreateImageCellView = createImageCellView(viewGroup);
                multiPageGridImageCellHolder2.cellView = adobeOneUpMultiPageStaggeredCellViewCreateImageCellView;
                adobeOneUpMultiPageStaggeredCellViewCreateImageCellView.getRootView().setTag(multiPageGridImageCellHolder2);
            } else {
                adobeOneUpMultiPageStaggeredCellViewCreateImageCellView = multiPageGridImageCellHolder.cellView;
            }
            bindImageCellViewToAsset(adobeOneUpMultiPageStaggeredCellViewCreateImageCellView, i);
            return adobeOneUpMultiPageStaggeredCellViewCreateImageCellView.getRootView();
        }

        private void bindImageCellViewToAsset(final AdobeOneUpMultiPageStaggeredCellView adobeOneUpMultiPageStaggeredCellView, final int i) {
            adobeOneUpMultiPageStaggeredCellView.setPosition(i);
            if (AdobeOneUpMultiPageStaggeredGridViewController.this._asset instanceof AdobeAssetFile) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageStaggeredGridViewController.AdobeMultiPageStaggeredGridViewAdapter.1
                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                    public void onProgress(double d2) {
                    }

                    @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                    public void onCancellation() {
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(byte[] bArr) {
                        Bitmap bitmapDecodeByteArray = null;
                        if (bArr != null) {
                            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                        }
                        if (bitmapDecodeByteArray != null) {
                            adobeOneUpMultiPageStaggeredCellView.displayThumbnail(bitmapDecodeByteArray, i);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                    }
                };
                if (AdobeUXAssetOneUpViewerActivity.isNetworkAvailable()) {
                    ((AdobeAssetFile) AdobeOneUpMultiPageStaggeredGridViewController.this._asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions(485.0f, 304.0f), i, iAdobeGenericRequestCallback);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TryAspectRatioSetupFromAsset(AdobeOneUpMultiPageStaggeredCellView adobeOneUpMultiPageStaggeredCellView, AdobeAsset adobeAsset) {
        JSONObject optionalMetadata = ((AdobeAssetFile) adobeAsset).getOptionalMetadata();
        if (optionalMetadata != null && optionalMetadata.has("height") && optionalMetadata.has("width")) {
            try {
                int i = optionalMetadata.getInt("height");
                int i2 = optionalMetadata.getInt("width");
                if (i > 0 && i2 > 0) {
                    adobeOneUpMultiPageStaggeredCellView.setAssetImageAspectRatioHint(i / i2);
                }
            } catch (JSONException e2) {
            }
        }
    }
}
