package com.adobe.creativesdk.foundation.internal.storage.controllers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class AssetListCellView {
    private static Context sContext = null;
    protected static Typeface typeface;
    protected TextView _assetsCount;
    protected LinearLayout _bottomInfoLayout;
    protected LinearLayout _cellBottomSection;
    private WeakReference<IAdobeAssetViewListCellDelegate> _cellDelegate;
    protected RelativeLayout _container;
    protected boolean _disable;
    protected TextView _extText;
    protected RelativeLayout _folderMenuIcon;
    protected ImageView _forward;
    protected LinearLayout _gridViewLayout;
    protected String _guid;
    private boolean _hasValidThumnailRendition;
    private String _imageAssetMD5;
    protected ImageView _imageViewAssetPicture;
    protected ImageView _imageViewSharedFolderIcon;
    protected View _listDivider;
    protected RelativeLayout _listMenuCellLayout;
    protected ImageView _listMenuIcon;
    protected RelativeLayout _listMenuLayout;
    protected View _mainRootView;
    protected RelativeLayout _menuIcon;
    protected ImageView _menuIconView;
    protected TextView _modifiedDate;
    protected TextView _photoCountView;
    protected ImageView _photoIcon;
    private int _position;
    protected View _selectBtn;
    protected TextView _sizeView;
    protected RelativeLayout _stagerredLayout;
    protected String _title;
    protected TextView _titleView;
    protected TextView _videoDuration;
    protected ImageView _videoIndicator;
    protected LinearLayout _videoLayout;
    protected boolean _selected = false;
    protected float _aspectRatioHint = 1.0f;
    private boolean _isImageEmpty = false;
    private boolean _shared = false;
    private boolean _readOnly = false;
    private String _href = null;
    private boolean _isSelectionEnabledOnCell = false;

    public abstract View getMenuIconView();

    protected abstract void handleOnFinishInflate();

    public abstract void hidePopUpMenu();

    protected abstract boolean providesSelection();

    public abstract void setContextMenuHandler(View.OnClickListener onClickListener);

    public AssetListCellView() {
        if (typeface == null) {
            typeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/AdobeClean-SemiLight.otf");
        }
    }

    protected Context getContext() {
        return sContext;
    }

    public static void setContext(Context context) {
        sContext = context;
    }

    public void setClickListener(View.OnClickListener onClickListener) {
        this._mainRootView.setOnClickListener(onClickListener);
    }

    public View findViewById(int i) {
        return this._mainRootView.findViewById(i);
    }

    public void setMainRootView(View view) {
        this._mainRootView = view;
    }

    public View getRootView() {
        return this._mainRootView;
    }

    public void setCellDelegate(IAdobeAssetViewListCellDelegate iAdobeAssetViewListCellDelegate) {
        this._cellDelegate = new WeakReference<>(iAdobeAssetViewListCellDelegate);
        if (iAdobeAssetViewListCellDelegate != null) {
            handleAttachToCellDelegate();
        }
    }

    protected void performOnFinishInflate() {
        handleOnFinishInflate();
        handlePostInflate();
    }

    public void setImageRotation(float f2) {
        if (this._imageViewAssetPicture != null) {
            this._imageViewAssetPicture.setRotation(f2);
        }
    }

    public int getPosition() {
        return this._position;
    }

    public void setPosition(int i) {
        this._position = i;
    }

    public String getTitle() {
        return this._title;
    }

    public void setTitle(String str) {
        this._title = str;
        handleTitleChange();
    }

    public void setPhotoAssetsCount(int i) {
        if (this._photoCountView != null) {
            this._photoCountView.setText(String.format(getContext().getResources().getString(R.string.adobe_csdk_photos_count_inside_collection), Integer.valueOf(i)));
        }
    }

    protected void changeSelectionOverlay() {
        if (this._selected) {
            this._mainRootView.setBackgroundColor(Color.rgb(237, 240, 241));
        } else {
            this._mainRootView.setBackgroundColor(0);
        }
    }

    protected void handleSelectionMarkChange() {
        if (this._selectBtn != null) {
            this._selectBtn.setSelected(this._selected);
            changeSelectionOverlay();
        }
    }

    public void markSelected(boolean z) {
        this._selected = z;
        handleSelectionMarkChange();
    }

    public boolean isMarkedSelected() {
        return this._selected;
    }

    protected void handleTitleChange() {
        this._titleView.setText(this._title);
    }

    public void setSize(long j) {
        if (this._sizeView != null) {
            this._sizeView.setText(AdobeAssetInfoUtil.getSizeString(getContext(), j) + ", ");
        }
    }

    public void setModifiedDate(Date date) {
        if (this._modifiedDate != null) {
            this._modifiedDate.setText(AdobeAssetInfoUtil.getModifiedDate(getContext(), date));
        }
    }

    public String getGuid() {
        return this._guid;
    }

    public void setGuid(String str) {
        this._guid = str;
        handleGuidChange();
    }

    public boolean isEmptyImage() {
        return this._isImageEmpty;
    }

    public boolean isShared() {
        return this._shared;
    }

    public void setShared(boolean z) {
        this._shared = z;
    }

    public boolean isReadOnly() {
        return this._readOnly;
    }

    public void setReadOnly(boolean z) {
        this._readOnly = z;
    }

    protected void handleGuidChange() {
    }

    public boolean isMarkedDisabled() {
        return this._disable;
    }

    public void setDisabled(boolean z) {
        this._disable = z;
        handleDisableChange();
    }

    protected void handleDisableChange() {
        if (this._imageViewAssetPicture != null) {
            ViewCompat.setAlpha(this._imageViewAssetPicture, this._disable ? 0.3f : 1.0f);
        }
    }

    protected void toggleItemMarkSelection() {
        IAdobeAssetViewListCellDelegate iAdobeAssetViewListCellDelegate = this._cellDelegate.get();
        if (iAdobeAssetViewListCellDelegate != null) {
            iAdobeAssetViewListCellDelegate.handleAssetCellSelectionToggle(this);
        }
    }

    protected void setUpSelectionButtonState() {
        if (providesSelection() && this._selectBtn != null) {
            IAdobeAssetViewListCellDelegate iAdobeAssetViewListCellDelegate = this._cellDelegate.get();
            if (iAdobeAssetViewListCellDelegate != null) {
                this._isSelectionEnabledOnCell = iAdobeAssetViewListCellDelegate.getSelectionOverallVisibility();
                if (this._isSelectionEnabledOnCell) {
                    markSelected(false);
                    this._selectBtn.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            AssetListCellView.this.toggleItemMarkSelection();
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        this._isSelectionEnabledOnCell = false;
    }

    protected void handleAttachToCellDelegate() {
        setUpSelectionButtonState();
    }

    protected void handlePostInflate() {
    }

    public void prepareForReuse() {
        this._guid = null;
        this._position = 0;
        this._title = null;
        this._imageViewAssetPicture.setVisibility(4);
        if (this._selectBtn != null) {
            this._selectBtn.setVisibility(8);
        }
        this._disable = false;
        this._isImageEmpty = true;
        this._aspectRatioHint = 1.0f;
        this._cellDelegate = null;
        this._hasValidThumnailRendition = false;
    }

    private void updateSelectionBtnVisibility() {
        if (this._selectBtn != null) {
            this._selectBtn.setVisibility((!this._isSelectionEnabledOnCell || isMarkedDisabled()) ? 8 : 0);
        }
    }

    protected int getNoPreviewImageResId() {
        return R.drawable.empty_generic_file;
    }

    protected void setThumbnailOnAssetCell(Bitmap bitmap) {
        if (bitmap != null) {
            this._imageViewAssetPicture.setImageBitmap(bitmap);
            if (bitmap.getWidth() <= 270 && bitmap.getHeight() <= 270) {
                this._imageViewAssetPicture.setScaleType(ImageView.ScaleType.CENTER);
            } else {
                this._imageViewAssetPicture.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
        } else {
            this._imageViewAssetPicture.setImageDrawable(null);
            this._imageViewAssetPicture.setBackgroundColor(-1);
        }
        handleAfterImageLoadingComplete();
    }

    public void handleAfterImageLoadingComplete() {
    }

    public boolean hasValidThumbnailRendition() {
        return this._hasValidThumnailRendition;
    }

    protected void setImageAssetAlpha(float f2) {
        ViewCompat.setAlpha(this._imageViewAssetPicture, f2);
    }

    public void displayThumnail(Bitmap bitmap, final float f2, boolean z) {
        this._isImageEmpty = false;
        this._imageViewAssetPicture.setVisibility(0);
        this._hasValidThumnailRendition = bitmap != null;
        setThumbnailOnAssetCell(bitmap);
        updateSelectionBtnVisibility();
        if (z) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this._mainRootView.getContext(), android.R.anim.fade_in);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.AssetListCellView.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    AssetListCellView.this.setImageAssetAlpha(f2);
                }
            });
            animationLoadAnimation.setDuration(200L);
            this._imageViewAssetPicture.startAnimation(animationLoadAnimation);
            return;
        }
        setImageAssetAlpha(f2);
    }

    public void setAssetImageAspectRatioHint(float f2) {
        this._aspectRatioHint = f2;
    }

    public String getImageMD5() {
        return this._imageAssetMD5;
    }

    public void setImageMD5(String str) {
        this._imageAssetMD5 = str;
    }

    public void initializeFromLayout(LayoutInflater layoutInflater, int i, ViewGroup viewGroup) {
        setMainRootView(layoutInflater.inflate(i, viewGroup, false));
        performOnFinishInflate();
    }

    protected void setFolderMetrics(boolean z) {
    }

    protected void setAssetsCount(int i, int i2) {
        if (this._assetsCount != null && getContext() != null) {
            if (i == 0 && i2 == 0) {
                this._assetsCount.setVisibility(8);
                this._titleView.setGravity(1);
                return;
            }
            this._titleView.setGravity(0);
            this._assetsCount.setVisibility(0);
            if (i == 0) {
                this._assetsCount.setText(String.format(getFoldersCountText(i2), Integer.valueOf(i2)));
                return;
            }
            if (i2 == 0) {
                this._assetsCount.setText(String.format(getFilesCountText(i), Integer.valueOf(i)));
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(getFilesCountText(i));
            stringBuffer.append(", ");
            stringBuffer.append(getFoldersCountText(i2));
            this._assetsCount.setText(String.format(stringBuffer.toString(), Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    private String getFilesCountText(int i) {
        if (i == 1) {
            return getContext().getResources().getString(R.string.adobe_csdk_file_count_string_single);
        }
        return getContext().getResources().getString(R.string.adobe_csdk_file_count_string_multiple);
    }

    private String getFoldersCountText(int i) {
        if (i == 1) {
            return getContext().getResources().getString(R.string.adobe_csdk_folder_count_string_single);
        }
        return getContext().getResources().getString(R.string.adobe_csdk_folder_count_string_multiple);
    }

    private long calcDifferenceInDaysFromToday(Date date, Calendar calendar) {
        Date time = calendar.getTime();
        return Math.abs((time.getTime() - date.getTime()) / DateUtils.MILLIS_PER_DAY);
    }

    public void setHref(String str) {
        this._href = str;
    }

    public String getHref() {
        return this._href;
    }
}
