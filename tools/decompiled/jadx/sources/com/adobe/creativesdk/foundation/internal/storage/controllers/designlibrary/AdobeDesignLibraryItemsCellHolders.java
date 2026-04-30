package com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.creativesdk.foundation.assetux.R;
import com.adobe.creativesdk.foundation.internal.grid.utils.DynamicHeightImageView;
import com.adobe.creativesdk.foundation.internal.storage.controllers.DesignLibraryItemsListView;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetInfoUtil;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeDesignLibraryItemsCellHolders {
    private AdobeDesignLibraryItemsCellHolders() {
    }

    public abstract class BaseCellHolder extends RecyclerView.ViewHolder {
        private AdobeLibraryElement libraryElement;

        public BaseCellHolder(View view) {
            super(view);
        }

        public void setLibraryElement(AdobeLibraryElement adobeLibraryElement) {
            this.libraryElement = adobeLibraryElement;
        }

        public AdobeLibraryElement getLibraryElement() {
            return this.libraryElement;
        }

        public void setDisabled(boolean z) {
            this.itemView.setAlpha(z ? 0.3f : 1.0f);
        }
    }

    public class HeaderCellHolder extends BaseCellHolder {
        private TextView titleView;

        public HeaderCellHolder(View view) {
            super(view);
            setTitleView((TextView) view.findViewById(R.id.adobe_csdk_library_items_header_text_id));
        }

        public void setTitle(String str) {
            getTitleView().setText(str);
        }

        public void setTypeface(Typeface typeface) {
            getTitleView().setTypeface(typeface);
        }

        public TextView getTitleView() {
            return this.titleView;
        }

        public void setTitleView(TextView textView) {
            this.titleView = textView;
        }
    }

    public class ColorCellHolder extends BaseCellHolder {
        private View colorItemView;
        private RelativeLayout colorMenuLayout;
        private RelativeLayout colorView;
        private ImageView menuIcon;
        private TextView modifiedDate;
        private TextView titleView;

        public ColorCellHolder(View view) {
            super(view);
            setColorItemView(view);
            setTitleView((TextView) view.findViewById(R.id.adobe_csdk_library_items_color_rgb_text));
            setColorView((RelativeLayout) view.findViewById(R.id.adobe_csdk_library_items_color_cell_background));
            setMenuIcon((ImageView) view.findViewById(R.id.adobe_libraryitem_color_menu_icon));
            setModifiedDate((TextView) view.findViewById(R.id.adobe_csdk_library_items_color_date));
            setColorMenuLayout((RelativeLayout) view.findViewById(R.id.adobe_libraryitem_color_menu_layout));
        }

        public void setColorRgbText(String str) {
            getTitleView().setText(str);
        }

        public void setColor(int i) {
            getColorView().setBackgroundColor(i);
        }

        public void setModifiedDate(long j) {
            getModifiedDate().setText(AdobeDesignLibraryItemsCellHolders.calculateModifiedDate(j, this.itemView));
        }

        public void setTypeface(Typeface typeface) {
            getTitleView().setTypeface(typeface);
        }

        public TextView getTitleView() {
            return this.titleView;
        }

        public void setTitleView(TextView textView) {
            this.titleView = textView;
        }

        public TextView getModifiedDate() {
            return this.modifiedDate;
        }

        public void setModifiedDate(TextView textView) {
            this.modifiedDate = textView;
        }

        public RelativeLayout getColorView() {
            return this.colorView;
        }

        public void setColorView(RelativeLayout relativeLayout) {
            this.colorView = relativeLayout;
        }

        public ImageView getMenuIcon() {
            return this.menuIcon;
        }

        public void setMenuIcon(ImageView imageView) {
            this.menuIcon = imageView;
        }

        public RelativeLayout getColorMenuLayout() {
            return this.colorMenuLayout;
        }

        public void setColorMenuLayout(RelativeLayout relativeLayout) {
            this.colorMenuLayout = relativeLayout;
        }

        public View getColorItemView() {
            return this.colorItemView;
        }

        public void setColorItemView(View view) {
            this.colorItemView = view;
        }

        public void setAssetClickListener(View.OnClickListener onClickListener) {
            getColorItemView().setOnClickListener(onClickListener);
        }

        public void setContextMenuClickListener(View.OnClickListener onClickListener) {
            getColorMenuLayout().setTag(this);
            getColorMenuLayout().setOnClickListener(onClickListener);
        }
    }

    public class ColorThemeCellHolder extends BaseCellHolder {
        private RelativeLayout colorTheme1;
        private View colorThemeItemView;
        private RelativeLayout colorThemeMenuLayout;
        private LinearLayout mainView;
        private ImageView menuIcon;
        private TextView modifiedDate;
        private TextView titleView;

        public ColorThemeCellHolder(View view) {
            super(view);
            setColorThemeItemView(view);
            setMainView((LinearLayout) view.findViewById(R.id.adobe_csdk_library_items_colortheme_container));
            setTitleView((TextView) view.findViewById(R.id.adobe_csdk_library_items_colortheme_text));
            setMenuIcon((ImageView) view.findViewById(R.id.adobe_libraryitem_colortheme_menu_icon));
            setModifiedDate((TextView) view.findViewById(R.id.adobe_csdk_library_items_colortheme_date));
            setColorThemeMenuLayout((RelativeLayout) view.findViewById(R.id.adobe_csdk_library_items_colortheme_menu_layout));
        }

        public void setRgbColors(List<Integer> list) {
            int iMin = Math.min(getMainView().getChildCount(), list.size());
            for (int i = 0; i < iMin; i++) {
                getMainView().getChildAt(i).setBackgroundColor(list.get(i).intValue());
            }
        }

        public void setTitle(String str) {
            getTitleView().setText(str);
        }

        public void setModifiedDate(long j) {
            getModifiedDate().setText(AdobeDesignLibraryItemsCellHolders.calculateModifiedDate(j, this.itemView));
        }

        public void setTypeface(Typeface typeface) {
            getTitleView().setTypeface(typeface);
        }

        public LinearLayout getMainView() {
            return this.mainView;
        }

        public void setMainView(LinearLayout linearLayout) {
            this.mainView = linearLayout;
        }

        public TextView getTitleView() {
            return this.titleView;
        }

        public void setTitleView(TextView textView) {
            this.titleView = textView;
        }

        public TextView getModifiedDate() {
            return this.modifiedDate;
        }

        public void setModifiedDate(TextView textView) {
            this.modifiedDate = textView;
        }

        public ImageView getMenuIcon() {
            return this.menuIcon;
        }

        public void setMenuIcon(ImageView imageView) {
            this.menuIcon = imageView;
        }

        public RelativeLayout getColorTheme1() {
            return this.colorTheme1;
        }

        public void setColorTheme1(RelativeLayout relativeLayout) {
            this.colorTheme1 = relativeLayout;
        }

        public RelativeLayout getColorThemeMenuLayout() {
            return this.colorThemeMenuLayout;
        }

        public void setColorThemeMenuLayout(RelativeLayout relativeLayout) {
            this.colorThemeMenuLayout = relativeLayout;
        }

        public View getColorThemeItemView() {
            return this.colorThemeItemView;
        }

        public void setColorThemeItemView(View view) {
            this.colorThemeItemView = view;
        }

        public void setAssetClickListener(View.OnClickListener onClickListener) {
            getColorThemeItemView().setOnClickListener(onClickListener);
        }

        public void setContextMenuClickListener(View.OnClickListener onClickListener) {
            getColorThemeMenuLayout().setTag(this);
            getColorThemeMenuLayout().setOnClickListener(onClickListener);
        }
    }

    public class ImageCollectionCellHolder extends BaseCellHolder {
        private DynamicHeightImageView dynamicImageView;
        private View imageItemView;
        private RelativeLayout imageMenuLayout;
        private ImageView menuIcon;
        private TextView modifiedDate;
        private RelativeLayout relativeLayout;
        private TextView titleView;

        public ImageCollectionCellHolder(View view) {
            super(view);
            setImageItemView(view);
            setTitleView((TextView) view.findViewById(R.id.adobe_csdk_library_items_imagecolletion_title));
            setDynamicImageView((DynamicHeightImageView) view.findViewById(R.id.adobe_csdk_library_items_imagecollection_image));
            getDynamicImageView().setHeightRatio(1.0d);
            setRelativeLayout((RelativeLayout) view.findViewById(R.id.adobe_libraryitem_cell_relativelayout));
            setMenuIcon((ImageView) view.findViewById(R.id.adobe_libraryitem_menu_icon));
            setImageMenuLayout((RelativeLayout) view.findViewById(R.id.adobe_csdk_library_items_imagecollection_menu_layout));
            setModifiedDate((TextView) view.findViewById(R.id.adobe_csdk_library_items_imagecollection_date));
        }

        public void displayThumbnail(Bitmap bitmap) {
            getDynamicImageView().setImageBitmap(bitmap);
        }

        public void displayThumbnail(BitmapDrawable bitmapDrawable) {
            getDynamicImageView().setImageDrawable(bitmapDrawable);
        }

        public void setImageHeightRatio(double d2) {
            getDynamicImageView().setHeightRatio(d2);
        }

        public void setModifiedDate(long j) {
            getModifiedDate().setText(AdobeDesignLibraryItemsCellHolders.calculateModifiedDate(j, this.itemView));
        }

        public void setTypeface(Typeface typeface) {
            getTitleView().setTypeface(typeface);
        }

        @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.designlibrary.AdobeDesignLibraryItemsCellHolders.BaseCellHolder
        public void setDisabled(boolean z) {
            getDynamicImageView().setAlpha(z ? 0.3f : 1.0f);
            getTitleView().setAlpha(z ? 0.3f : 1.0f);
        }

        public void setTitle(String str) {
            getTitleView().setText(str);
        }

        public DynamicHeightImageView getDynamicImageView() {
            return this.dynamicImageView;
        }

        public void setDynamicImageView(DynamicHeightImageView dynamicHeightImageView) {
            this.dynamicImageView = dynamicHeightImageView;
        }

        public TextView getTitleView() {
            return this.titleView;
        }

        public void setTitleView(TextView textView) {
            this.titleView = textView;
        }

        public TextView getModifiedDate() {
            return this.modifiedDate;
        }

        public void setModifiedDate(TextView textView) {
            this.modifiedDate = textView;
        }

        public RelativeLayout getRelativeLayout() {
            return this.relativeLayout;
        }

        public void setRelativeLayout(RelativeLayout relativeLayout) {
            this.relativeLayout = relativeLayout;
        }

        public ImageView getMenuIcon() {
            return this.menuIcon;
        }

        public void setMenuIcon(ImageView imageView) {
            this.menuIcon = imageView;
        }

        public RelativeLayout getImageMenuLayout() {
            return this.imageMenuLayout;
        }

        public void setImageMenuLayout(RelativeLayout relativeLayout) {
            this.imageMenuLayout = relativeLayout;
        }

        public View getImageItemView() {
            return this.imageItemView;
        }

        public void setImageItemView(View view) {
            this.imageItemView = view;
        }

        public void setAssetClicKListener(View.OnClickListener onClickListener) {
            getImageItemView().setOnClickListener(onClickListener);
        }

        public void setContextMenuClickListener(View.OnClickListener onClickListener) {
            getImageMenuLayout().setTag(this);
            getImageMenuLayout().setOnClickListener(onClickListener);
        }
    }

    public class UploadingImageCollectionCellHolder extends ImageCollectionCellHolder {
        private DesignLibraryItemsListView.LibraryImageUploadCellView imageUploadCellView;

        private UploadingImageCollectionCellHolder(View view) {
            super(view);
        }

        public static UploadingImageCollectionCellHolder createInstance(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            DesignLibraryItemsListView.LibraryImageUploadCellView libraryImageUploadCellView = new DesignLibraryItemsListView.LibraryImageUploadCellView();
            libraryImageUploadCellView.initializeFromLayout(layoutInflater, R.layout.adobe_library_items_imagecollectioncell, viewGroup);
            UploadingImageCollectionCellHolder uploadingImageCollectionCellHolder = new UploadingImageCollectionCellHolder(libraryImageUploadCellView.getRootView());
            uploadingImageCollectionCellHolder.setImageUploadCellView(libraryImageUploadCellView);
            return uploadingImageCollectionCellHolder;
        }

        public DesignLibraryItemsListView.LibraryImageUploadCellView getImageUploadCellView() {
            return this.imageUploadCellView;
        }

        public void setImageUploadCellView(DesignLibraryItemsListView.LibraryImageUploadCellView libraryImageUploadCellView) {
            this.imageUploadCellView = libraryImageUploadCellView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String calculateModifiedDate(long j, View view) {
        return AdobeAssetInfoUtil.getModifiedDate(view.getContext(), new Date(j));
    }
}
