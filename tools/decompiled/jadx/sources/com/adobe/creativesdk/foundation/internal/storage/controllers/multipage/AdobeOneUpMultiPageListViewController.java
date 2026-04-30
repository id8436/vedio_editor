package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
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
public class AdobeOneUpMultiPageListViewController {
    protected AdobeAsset asset;
    private AdobeMultiPageFragmentController fragmentController;
    protected View mainRootView;
    protected View multiPageSectionalHeader;
    protected TextView multiPageSectionalTextView;
    protected int numPages = 1;
    protected Context oneUpViewContext;
    protected StaggeredGridView staggeredGridView;

    public View getMainRootView() {
        return this.mainRootView;
    }

    public void setMainRootView(View view) {
        this.mainRootView = view;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this.asset = adobeAsset;
    }

    public void setFragmentController(AdobeMultiPageFragmentController adobeMultiPageFragmentController) {
        this.fragmentController = adobeMultiPageFragmentController;
    }

    public AdobeMultiPageFragmentController getFragmentController() {
        return this.fragmentController;
    }

    public void performInitialization(Context context) {
        this.staggeredGridView = (StaggeredGridView) this.mainRootView.findViewById(R.id.adobe_csdk_multipage_singlecolumn_staggeredGridView);
        this.oneUpViewContext = context;
        this.multiPageSectionalHeader = this.mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_list_section_container);
        this.multiPageSectionalTextView = (TextView) this.mainRootView.findViewById(R.id.adobe_csdk_asset_one_up_multi_page_list_section_textview);
        this.staggeredGridView.setAdapter((ListAdapter) new AdobeMultiPageStaggeredGridViewAdapter());
        this.multiPageSectionalHeader.setVisibility(0);
        this.multiPageSectionalHeader.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageListViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdobeOneUpMultiPageListViewController.this.fragmentController.displayGridView();
            }
        });
        this.staggeredGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageListViewController.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AdobeOneUpMultiPageListViewController.this.fragmentController.displayViewPager(i);
            }
        });
        this.staggeredGridView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageListViewController.3
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                AdobeOneUpMultiPageListViewController.this.multiPageSectionalTextView.setText(String.format(AdobeOneUpMultiPageListViewController.this.oneUpViewContext.getResources().getString(R.string.adobe_csdk_asset_view_multi_page_numbering), Integer.valueOf(i + 1), Integer.valueOf(AdobeOneUpMultiPageListViewController.this.numPages)));
            }
        });
    }

    public class AdobeMultiPageStaggeredGridViewAdapter extends BaseAdapter {
        public AdobeMultiPageStaggeredGridViewAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!(AdobeOneUpMultiPageListViewController.this.asset instanceof AdobeAssetFile)) {
                return 0;
            }
            AdobeAssetFile adobeAssetFile = (AdobeAssetFile) AdobeOneUpMultiPageListViewController.this.asset;
            if (adobeAssetFile.getOptionalMetadata() != null) {
                AdobeOneUpMultiPageListViewController.this.numPages = adobeAssetFile.getOptionalMetadata().optInt(AdobeStorageSession.PAGES, 1);
            }
            return AdobeOneUpMultiPageListViewController.this.numPages;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        private AdobeOneUpMultiPageListCellView createImageCellView(ViewGroup viewGroup) {
            AdobeOneUpMultiPageListCellView adobeOneUpMultiPageListCellView = new AdobeOneUpMultiPageListCellView();
            adobeOneUpMultiPageListCellView.initiallizeLayoutComponents(((LayoutInflater) AdobeOneUpMultiPageListViewController.this.oneUpViewContext.getSystemService("layout_inflater")).inflate(R.layout.adobe_oneup_multipage_list_cellview, viewGroup, false));
            adobeOneUpMultiPageListCellView.setAssetImageAspectRatioHint(1.0f);
            AdobeOneUpMultiPageListViewController.this.tryAspectRatioSetupFromAsset(adobeOneUpMultiPageListCellView, AdobeOneUpMultiPageListViewController.this.asset);
            return adobeOneUpMultiPageListCellView;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            AdobeOneUpMultiPageListCellView adobeOneUpMultiPageListCellViewCreateImageCellView;
            GridImageCellHolder gridImageCellHolder = null;
            if (view != null) {
                gridImageCellHolder = (GridImageCellHolder) view.getTag();
            }
            if (gridImageCellHolder == null) {
                GridImageCellHolder gridImageCellHolder2 = new GridImageCellHolder();
                adobeOneUpMultiPageListCellViewCreateImageCellView = createImageCellView(viewGroup);
                gridImageCellHolder2.cellView = adobeOneUpMultiPageListCellViewCreateImageCellView;
                adobeOneUpMultiPageListCellViewCreateImageCellView.getRootView().setTag(gridImageCellHolder2);
            } else {
                adobeOneUpMultiPageListCellViewCreateImageCellView = gridImageCellHolder.cellView;
            }
            bindImageCellViewToAsset(adobeOneUpMultiPageListCellViewCreateImageCellView, i);
            return adobeOneUpMultiPageListCellViewCreateImageCellView.getRootView();
        }

        private void bindImageCellViewToAsset(final AdobeOneUpMultiPageListCellView adobeOneUpMultiPageListCellView, final int i) {
            adobeOneUpMultiPageListCellView.setPosition(i);
            if (AdobeOneUpMultiPageListViewController.this.asset instanceof AdobeAssetFile) {
                IAdobeGenericRequestCallback<byte[], AdobeAssetException> iAdobeGenericRequestCallback = new IAdobeGenericRequestCallback<byte[], AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.multipage.AdobeOneUpMultiPageListViewController.AdobeMultiPageStaggeredGridViewAdapter.1
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
                            adobeOneUpMultiPageListCellView.displayThumbnail(bitmapDecodeByteArray, i);
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                    }
                };
                if (AdobeUXAssetOneUpViewerActivity.isNetworkAvailable()) {
                    DisplayMetrics displayMetrics = AdobeOneUpMultiPageListViewController.this.oneUpViewContext.getResources().getDisplayMetrics();
                    ((AdobeAssetFile) AdobeOneUpMultiPageListViewController.this.asset).getRenditionWithType(AdobeAssetFileRenditionType.ADOBE_ASSET_FILE_RENDITION_TYPE_PNG, new AdobeAssetImageDimensions((int) (((double) displayMetrics.widthPixels) * 0.7d), (int) (((double) displayMetrics.heightPixels) * 0.7d)), i, iAdobeGenericRequestCallback);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryAspectRatioSetupFromAsset(AdobeOneUpMultiPageListCellView adobeOneUpMultiPageListCellView, AdobeAsset adobeAsset) {
        JSONObject optionalMetadata = ((AdobeAssetFile) adobeAsset).getOptionalMetadata();
        if (optionalMetadata != null && optionalMetadata.has("height") && optionalMetadata.has("width")) {
            try {
                int i = optionalMetadata.getInt("height");
                int i2 = optionalMetadata.getInt("width");
                if (i > 0 && i2 > 0) {
                    adobeOneUpMultiPageListCellView.setAssetImageAspectRatioHint(i / i2);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
