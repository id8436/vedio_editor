package com.adobe.creativesdk.foundation.internal.storage.controllers.multipage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.storage.controllers.common.ReusableImageBitmapWorker;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeMultiPageFragmentController {
    protected AdobeAsset _asset;
    protected View _autofitRecyclerView;
    protected AdobeAssetAutoFitRecyclerViewController _autofitRecyclerViewController;
    protected View _fragmentView;
    protected Context _oneUpActivityContext;
    protected View _pagerRootView;
    protected AdobeMultiPageViewState _prevstate;
    protected View _recyclerView;
    protected AdobeAssetOneUpRecyclerViewController _recyclerViewController;
    protected AdobeMultiPageViewState _state;
    protected AdobeOneUpMultiPageViewPagerController _viewPagerController;
    private IAdobeMultiPageOneUpFragmentController fragmentController;

    public AdobeMultiPageViewState getState() {
        return this._state;
    }

    public AdobeMultiPageViewState getPreviousState() {
        return this._prevstate;
    }

    public void setState(AdobeMultiPageViewState adobeMultiPageViewState) {
        this._state = adobeMultiPageViewState;
    }

    public void setFragmentView(View view) {
        this._fragmentView = view;
    }

    public AdobeAsset getAsset() {
        return this._asset;
    }

    public void setAsset(AdobeAsset adobeAsset) {
        this._asset = adobeAsset;
    }

    public void wentOnline() {
        if (this._autofitRecyclerViewController != null) {
            this._autofitRecyclerViewController.wentOnline();
        }
        if (this._recyclerViewController != null) {
            this._recyclerViewController.wentOnline();
        }
    }

    public void wentOffline() {
        if (this._autofitRecyclerViewController != null) {
            this._autofitRecyclerViewController.wentOffline();
        }
        if (this._recyclerViewController != null) {
            this._recyclerViewController.wentOffline();
        }
    }

    public void setReuseableBitmapCacheWorker(ReusableImageBitmapWorker reusableImageBitmapWorker) {
        if (reusableImageBitmapWorker != null) {
            if (this._autofitRecyclerViewController != null) {
                this._autofitRecyclerViewController.setReuseableBitmapCacheWorker(reusableImageBitmapWorker);
            }
            if (this._recyclerViewController != null) {
                this._recyclerViewController.setReuseableBitmapCacheWorker(reusableImageBitmapWorker);
            }
            if (this._viewPagerController != null) {
                this._viewPagerController.setReuseableBitmapCacheWorker(reusableImageBitmapWorker);
            }
        }
    }

    @SuppressLint({"InflateParams"})
    public void performInitiallization(Context context) {
        this._oneUpActivityContext = context;
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this._pagerRootView = layoutInflater.inflate(R.layout.fragment_multipage_asset_viewpager, (ViewGroup) null, false);
        this._autofitRecyclerView = layoutInflater.inflate(R.layout.adobe_multipage_autofit_recycler_view, (ViewGroup) null, false);
        this._recyclerView = layoutInflater.inflate(R.layout.adobe_multipage_recycler_view, (ViewGroup) null, false);
        ((ViewGroup) this._fragmentView).addView(this._pagerRootView);
        ((ViewGroup) this._fragmentView).addView(this._autofitRecyclerView);
        ((ViewGroup) this._fragmentView).addView(this._recyclerView);
        this._viewPagerController = new AdobeOneUpMultiPageViewPagerController();
        this._autofitRecyclerViewController = new AdobeAssetAutoFitRecyclerViewController();
        this._recyclerViewController = new AdobeAssetOneUpRecyclerViewController();
        this._viewPagerController.setAssetViewerController(this.fragmentController.getController());
        this._viewPagerController.setMainRootView(this._pagerRootView);
        this._viewPagerController.setAsset(this._asset);
        this._viewPagerController.performInitiallization(this._oneUpActivityContext);
        this._autofitRecyclerViewController.setMainRootView(this._autofitRecyclerView);
        this._autofitRecyclerViewController.setAsset(this._asset);
        this._autofitRecyclerViewController.performInitialization(this._oneUpActivityContext);
        this._recyclerViewController.setMainRootView(this._recyclerView);
        this._recyclerViewController.setAsset(this._asset);
        this._recyclerViewController.performInitialization(this._oneUpActivityContext);
        this._viewPagerController.setFragmentController(this);
        this._autofitRecyclerViewController.setFragmentController(this);
        this._recyclerViewController.setFragmentController(this);
    }

    public void displayGridView() {
        this._prevstate = this._state;
        this._state = AdobeMultiPageViewState.AdobeMultiPageGridView;
        if (this.fragmentController.getController().getCurrentAssetViewerActivity() != null) {
            this.fragmentController.getController().getCurrentAssetViewerActivity().showActionsBar();
        }
        this._pagerRootView.setVisibility(4);
        this._recyclerView.setVisibility(4);
        this._autofitRecyclerView.setVisibility(0);
        this._autofitRecyclerViewController.requestRelayout();
        ((ViewGroup) this._fragmentView).bringChildToFront(this._autofitRecyclerView);
    }

    public void displayViewPager(int i) {
        this._prevstate = this._state;
        this._state = AdobeMultiPageViewState.AdobeMultiPageViewPager;
        this._autofitRecyclerView.setVisibility(4);
        this._recyclerView.setVisibility(4);
        this._pagerRootView.setVisibility(0);
        ((ViewGroup) this._fragmentView).bringChildToFront(this._pagerRootView);
        this._viewPagerController.startViewPager(i);
    }

    public void displayListView() {
        this._prevstate = this._state;
        this._state = AdobeMultiPageViewState.AdobeMultiPageListView;
        if (this.fragmentController.getController().getCurrentAssetViewerActivity() != null) {
            this.fragmentController.getController().getCurrentAssetViewerActivity().showActionsBar();
        }
        this._pagerRootView.setVisibility(4);
        this._autofitRecyclerView.setVisibility(4);
        this._recyclerView.setVisibility(0);
        this._recyclerViewController.requestRelayout();
        ((ViewGroup) this._fragmentView).bringChildToFront(this._recyclerView);
    }

    public View provideViewToActivity() {
        if (this._state == AdobeMultiPageViewState.AdobeMultiPageGridView) {
            displayGridView();
        } else if (this._state == AdobeMultiPageViewState.AdobeMultiPageListView) {
            displayListView();
        } else {
            displayViewPager(0);
        }
        return this._fragmentView;
    }

    public void handleOrientationChange() {
        if (this._viewPagerController != null) {
            this._viewPagerController.handleOrientationChange();
        }
    }

    public void setFragmentController(IAdobeMultiPageOneUpFragmentController iAdobeMultiPageOneUpFragmentController) {
        this.fragmentController = iAdobeMultiPageOneUpFragmentController;
    }
}
