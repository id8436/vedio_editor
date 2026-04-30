package com.behance.sdk.ui.fragments;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.ColorFilter;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialog;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.app.Fragment;
import android.support.v4.content.FileProvider;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.webkit.MimeTypeMap;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.creativesdk.foundation.storage.AdobeUXAssetBrowserOption;
import com.behance.sdk.BehanceSDK;
import com.behance.sdk.BehanceSDKHeadlessFragmentTags;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.listeners.IBehanceSDKDecodeBitmapAsyncTaskListener;
import com.behance.sdk.asynctasks.BehanceSDKDecodeBitmapAsyncTask;
import com.behance.sdk.dto.BehanceSDKTextSelectionState;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAudio;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleText;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.dto.editor.BehanceSDKModulePrepareDTO;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextFont;
import com.behance.sdk.enums.BehanceSDKProjectEditorTextStyle;
import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import com.behance.sdk.factory.BehanceSDKImageValidatorFactory;
import com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment;
import com.behance.sdk.listeners.IBehanceSDKColorCallback;
import com.behance.sdk.listeners.IBehanceSDKEditorTextCallbacks;
import com.behance.sdk.ui.activities.BehanceSDKCCLauncherActivity;
import com.behance.sdk.ui.activities.BehanceSDKProjectEditorActivity;
import com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKGalleryItemsRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextFontsRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter;
import com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextStylesRecyclerAdapter;
import com.behance.sdk.ui.animations.BehanceSDKResizeViewsAnimation;
import com.behance.sdk.ui.behaviors.BehanceSDKDrawerBehavior;
import com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler;
import com.behance.sdk.ui.customviews.BehanceSDKTextView;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationGridEdgeless;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationList;
import com.behance.sdk.ui.dialogs.BehanceSDKColorPickerDialogSimple;
import com.behance.sdk.util.BehanceSDKColumnCountUtil;
import com.behance.sdk.util.BehanceSDKFileUtils;
import com.behance.sdk.util.BehanceSDKProjectEditorFileUtils;
import com.behance.sdk.util.BehanceSDKPublishTextUtils;
import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectEditorContentFragment extends Fragment implements View.OnClickListener, View.OnDragListener, IBehanceSDKDecodeBitmapAsyncTaskListener, BehanceSDKProjectEditorHeadlessFragment.LoadFilesCallbacks, BehanceSDKGalleryFolderRecyclerAdapter.GalleryFolderCallbacks, BehanceSDKGalleryItemsRecyclerAdapter.GalleryCallbacks, BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks {
    private static final String FRAGMENT_TAG_COLOR_PICKER_DIALOG = "FRAGMENT_TAG_COLOR_PICKER_DIALOG";
    private static final String GOOGLE_PHOTOS_PACKAGE_NAME = "com.google.android.apps.photos";
    private static final int REQUEST_CODE_CC_ASSETS = 1002;
    private static final int REQUEST_CODE_IMAGE_CAPTURE = 1001;
    private static final int REQUEST_PHOTO_FROM_GOOGLE_PHOTOS = 1003;
    private static final String SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH = "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH";
    private static final int TEXT_EDITOR_ANIM_DUR = 150;
    private static final float TEXT_TOOL_FADE = 0.9f;
    private static final int TOOLBAR_CROSSFADE_DUR = 350;
    private WebView activeEditWebView;
    private int appColor;
    private BehanceSDKDrawerBehavior drawerBehavior;
    private BehanceSDKProjectEditorHeadlessFragment headlessFragment;
    private String imageCaptureFilePath;
    private BehanceSDKTextSelectionState lastTextSelectionState;
    private ImageView projectEditorContentAddCamera;
    private ImageView projectEditorContentAddCc;
    private ImageView projectEditorContentAddEmbed;
    private ImageView projectEditorContentAddText;
    private LinearLayout projectEditorContentBottomSheet;
    private LinearLayout projectEditorContentBottomSheetHeaderActions;
    private RelativeLayout projectEditorContentBottomSheetHeaderContainer;
    private BehanceSDKTextView projectEditorContentBottomSheetHeaderReplaceImage;
    private ImageView projectEditorContentDrop;
    private LinearLayout projectEditorContentEmpty;
    private View projectEditorContentOverlay;
    private BehanceSDKBackgroundGestureRecycler projectEditorContentRecycler;
    private CoordinatorLayout projectEditorContentRoot;
    private LinearLayout projectEditorContentTextBiuContainer;
    private ImageView projectEditorContentTextBold;
    private ImageView projectEditorContentTextCaps;
    private ImageView projectEditorContentTextCenter;
    private ImageView projectEditorContentTextClear;
    private ImageView projectEditorContentTextColor;
    private LinearLayout projectEditorContentTextContainer;
    private ImageView projectEditorContentTextItalic;
    private ImageView projectEditorContentTextLeft;
    private ImageView projectEditorContentTextLink;
    private ImageView projectEditorContentTextRight;
    private ImageView projectEditorContentTextStyle;
    private ImageView projectEditorContentTextUnderline;
    private RecyclerView projectEditorGalleryAlbumRecycler;
    private RecyclerView projectEditorGalleryItemRecycler;
    private IBehanceSDKEditorTextCallbacks textEditorCallbacks;
    private int textToolWidth;
    private Runnable textEditorPendingRunnable = null;
    private int moduleToReplace = -1;
    boolean alignShowing = false;
    boolean biuShowing = false;
    private BehanceSDKProjectModuleAlignment lastSelectedAlign = BehanceSDKProjectModuleAlignment.LEFT;

    private void initView(View view) {
        this.projectEditorContentRoot = (CoordinatorLayout) view.findViewById(R.id.project_editor_content_root);
        this.projectEditorContentRecycler = (BehanceSDKBackgroundGestureRecycler) view.findViewById(R.id.project_editor_content_recycler);
        this.projectEditorGalleryAlbumRecycler = (RecyclerView) view.findViewById(R.id.project_editor_gallery_album_recycler);
        this.projectEditorGalleryItemRecycler = (RecyclerView) view.findViewById(R.id.project_editor_gallery_item_recycler);
        this.projectEditorContentEmpty = (LinearLayout) view.findViewById(R.id.project_editor_content_empty);
        this.projectEditorContentDrop = (ImageView) view.findViewById(R.id.project_editor_content_drop);
        this.projectEditorContentOverlay = view.findViewById(R.id.project_editor_content_overlay);
        this.projectEditorContentBottomSheet = (LinearLayout) view.findViewById(R.id.project_editor_content_bottom_sheet);
        this.projectEditorContentBottomSheetHeaderContainer = (RelativeLayout) view.findViewById(R.id.project_editor_content_bottom_sheet_header_container);
        this.projectEditorContentBottomSheetHeaderActions = (LinearLayout) view.findViewById(R.id.project_editor_content_bottom_sheet_header_actions);
        this.projectEditorContentAddCc = (ImageView) view.findViewById(R.id.project_editor_content_add_cc);
        this.projectEditorContentAddCamera = (ImageView) view.findViewById(R.id.project_editor_content_add_camera);
        this.projectEditorContentAddText = (ImageView) view.findViewById(R.id.project_editor_content_add_text);
        this.projectEditorContentAddEmbed = (ImageView) view.findViewById(R.id.project_editor_content_add_embed);
        this.projectEditorContentBottomSheetHeaderReplaceImage = (BehanceSDKTextView) view.findViewById(R.id.project_editor_content_bottom_sheet_header_replace_image);
        this.projectEditorContentTextContainer = (LinearLayout) view.findViewById(R.id.project_editor_content_text_container);
        this.projectEditorContentTextBiuContainer = (LinearLayout) view.findViewById(R.id.project_editor_content_text_biu_container);
        this.projectEditorContentTextStyle = (ImageView) view.findViewById(R.id.project_editor_content_text_style);
        this.projectEditorContentTextColor = (ImageView) view.findViewById(R.id.project_editor_content_text_color);
        this.projectEditorContentTextBold = (ImageView) view.findViewById(R.id.project_editor_content_text_bold);
        this.projectEditorContentTextItalic = (ImageView) view.findViewById(R.id.project_editor_content_text_italic);
        this.projectEditorContentTextUnderline = (ImageView) view.findViewById(R.id.project_editor_content_text_underline);
        this.projectEditorContentTextCaps = (ImageView) view.findViewById(R.id.project_editor_content_text_caps);
        this.projectEditorContentTextLeft = (ImageView) view.findViewById(R.id.project_editor_content_text_left);
        this.projectEditorContentTextRight = (ImageView) view.findViewById(R.id.project_editor_content_text_right);
        this.projectEditorContentTextCenter = (ImageView) view.findViewById(R.id.project_editor_content_text_center);
        this.projectEditorContentTextLink = (ImageView) view.findViewById(R.id.project_editor_content_text_link);
        this.projectEditorContentTextClear = (ImageView) view.findViewById(R.id.project_editor_content_text_clear);
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.bsdk_fragment_project_editor_content, viewGroup, false);
        initView(viewInflate);
        if (Build.VERSION.SDK_INT >= 24) {
            this.projectEditorContentRoot.setOnDragListener(this);
        }
        this.headlessFragment = (BehanceSDKProjectEditorHeadlessFragment) getActivity().getSupportFragmentManager().findFragmentByTag(BehanceSDKHeadlessFragmentTags.FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT);
        this.appColor = BehanceSDK.getInstance().getBehanceSDKCustomResourcesOptions().getAppColor();
        this.projectEditorContentRecycler.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.projectEditorContentRecycler.setAdapter(new BehanceSDKProjectEditorContentRecyclerAdapter(getActivity(), this.headlessFragment.getProjectModules(), this));
        this.projectEditorContentRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationList(getResources().getDimensionPixelSize(R.dimen.bsdk_module_padding)));
        this.drawerBehavior = BehanceSDKDrawerBehavior.from(this.projectEditorContentBottomSheet);
        if (bundle != null) {
            this.imageCaptureFilePath = bundle.getString(SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH);
        } else {
            this.drawerBehavior.setState(5);
        }
        this.projectEditorGalleryAlbumRecycler.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.projectEditorGalleryItemRecycler.setLayoutManager(new GridLayoutManager(getActivity(), BehanceSDKColumnCountUtil.getImagePickerColumnCount(getActivity())));
        this.projectEditorGalleryItemRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationGridEdgeless(getResources().getDimensionPixelSize(R.dimen.bsdk_gallery_grid_padding)));
        if (this.headlessFragment.getFiles() == null) {
            this.headlessFragment.loadFiles(this);
        } else {
            new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BehanceSDKProjectEditorContentFragment.this.getActivity() != null) {
                        BehanceSDKProjectEditorContentFragment.this.setGalleryAdapters(BehanceSDKProjectEditorContentFragment.this.headlessFragment.getFiles(), false);
                    }
                }
            }, getResources().getInteger(android.R.integer.config_mediumAnimTime));
        }
        this.projectEditorGalleryAlbumRecycler.setTranslationX(-getResources().getDisplayMetrics().widthPixels);
        this.drawerBehavior.setScrollingChild(this.projectEditorGalleryItemRecycler);
        this.projectEditorContentRecycler.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.setPadding(0, BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getPaddingTop(), 0, (BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getState() == 5 ? 0 : BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getPeekHeight()) + BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderContainer.getHeight());
            }
        });
        this.drawerBehavior.setBottomSheetCallback(new BehanceSDKDrawerBehavior.BottomSheetCallback() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.3
            private int bottomPadding;

            @Override // com.behance.sdk.ui.behaviors.BehanceSDKDrawerBehavior.BottomSheetCallback
            public void onStateChanged(@NonNull View view, int i) {
                if (BehanceSDKProjectEditorContentFragment.this.getActivity() instanceof BehanceSDKProjectEditorActivity) {
                    ((BehanceSDKProjectEditorActivity) BehanceSDKProjectEditorContentFragment.this.getActivity()).setToolbarShadow(i != 3);
                }
            }

            @Override // com.behance.sdk.ui.behaviors.BehanceSDKDrawerBehavior.BottomSheetCallback
            public void onSlide(@NonNull View view, float f2) {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.setPadding(0, BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getPaddingTop(), 0, (int) (BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderContainer.getHeight() + ((Math.min(f2, 0.0f) + 1.0f) * BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getPeekHeight())));
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentEmpty.getLayoutParams().height = (int) (BehanceSDKProjectEditorContentFragment.this.projectEditorContentRoot.getHeight() - (BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderContainer.getHeight() + ((Math.min(f2, 0.0f) + 1.0f) * BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getPeekHeight())));
                if (f2 > 0.0f) {
                    this.bottomPadding = (int) ((BehanceSDKProjectEditorContentFragment.this.projectEditorGalleryAlbumRecycler.getHeight() - BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getPeekHeight()) * (1.0f - f2));
                } else {
                    this.bottomPadding = (int) (BehanceSDKProjectEditorContentFragment.this.projectEditorGalleryAlbumRecycler.getHeight() - (BehanceSDKProjectEditorContentFragment.this.drawerBehavior.getPeekHeight() * (f2 + 1.0f)));
                }
                BehanceSDKProjectEditorContentFragment.this.projectEditorGalleryAlbumRecycler.setPadding(0, 0, 0, this.bottomPadding);
                BehanceSDKProjectEditorContentFragment.this.projectEditorGalleryItemRecycler.setPadding(0, 0, 0, this.bottomPadding);
            }
        });
        this.projectEditorContentAddCc.setOnClickListener(this);
        this.projectEditorContentAddCamera.setOnClickListener(this);
        this.projectEditorContentAddText.setOnClickListener(this);
        this.projectEditorContentAddEmbed.setOnClickListener(this);
        this.projectEditorContentTextStyle.setOnClickListener(this);
        this.projectEditorContentTextBold.setOnClickListener(this);
        this.projectEditorContentTextItalic.setOnClickListener(this);
        this.projectEditorContentTextUnderline.setOnClickListener(this);
        this.projectEditorContentTextBiuContainer.setOnClickListener(this);
        this.projectEditorContentTextColor.setOnClickListener(this);
        this.projectEditorContentTextCaps.setOnClickListener(this);
        this.projectEditorContentTextLeft.setOnClickListener(this);
        this.projectEditorContentTextCenter.setOnClickListener(this);
        this.projectEditorContentTextRight.setOnClickListener(this);
        this.projectEditorContentTextLink.setOnClickListener(this);
        this.projectEditorContentTextClear.setOnClickListener(this);
        this.projectEditorContentOverlay.setOnClickListener(this);
        this.textToolWidth = (getResources().getDisplayMetrics().widthPixels - getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_all)) / 7;
        this.projectEditorContentTextStyle.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_style) + this.textToolWidth;
        this.projectEditorContentTextBold.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_bold);
        this.projectEditorContentTextItalic.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_italic);
        this.projectEditorContentTextUnderline.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_underline);
        this.projectEditorContentTextBiuContainer.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_biu) + this.textToolWidth;
        this.projectEditorContentTextColor.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_color) + this.textToolWidth;
        this.projectEditorContentTextCaps.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_caps) + this.textToolWidth;
        this.projectEditorContentTextLink.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_link) + this.textToolWidth;
        this.projectEditorContentTextClear.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_clear) + this.textToolWidth;
        this.projectEditorContentTextLeft.getLayoutParams().width = getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth;
        this.projectEditorContentTextRight.getLayoutParams().width = 0;
        this.projectEditorContentTextCenter.getLayoutParams().width = 0;
        updateEmptyState();
        viewInflate.setBackgroundColor(this.headlessFragment.getBackgroundColor());
        this.projectEditorContentRecycler.setOnBackgroundGestureListener(new BehanceSDKBackgroundGestureRecycler.OnBackgroundGestureListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.4
            @Override // com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler.OnBackgroundGestureListener
            public void onBackgroundLongClick() {
                launchColorPickerDialog();
            }

            @Override // com.behance.sdk.ui.components.BehanceSDKBackgroundGestureRecycler.OnBackgroundGestureListener
            public void onBackgroundDoubleClick() {
                launchColorPickerDialog();
            }

            private void launchColorPickerDialog() {
                BehanceSDKColorPickerDialogSimple behanceSDKColorPickerDialogSimple = new BehanceSDKColorPickerDialogSimple();
                behanceSDKColorPickerDialogSimple.setFloating(null);
                behanceSDKColorPickerDialogSimple.setStartingColor(BehanceSDKProjectEditorContentFragment.this.headlessFragment.getBackgroundColor());
                behanceSDKColorPickerDialogSimple.setColorCallback(new IBehanceSDKColorCallback() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.4.1
                    @Override // com.behance.sdk.listeners.IBehanceSDKColorCallback
                    public void onColorSelected(int i) {
                        BehanceSDKProjectEditorContentFragment.this.headlessFragment.setBackgroundColor(i);
                        BehanceSDKProjectEditorContentFragment.this.projectEditorContentRoot.setBackgroundColor(i);
                    }
                });
                behanceSDKColorPickerDialogSimple.show(BehanceSDKProjectEditorContentFragment.this.getActivity().getSupportFragmentManager(), BehanceSDKProjectEditorContentFragment.FRAGMENT_TAG_COLOR_PICKER_DIALOG);
            }
        });
        return viewInflate;
    }

    private boolean isGooglePhotosDisabled(Context context) {
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(GOOGLE_PHOTOS_PACKAGE_NAME, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return !applicationInfo.enabled;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof IBehanceSDKEditorTextCallbacks) {
            this.textEditorCallbacks = (IBehanceSDKEditorTextCallbacks) getActivity();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        List<File> list;
        switch (i) {
            case 1001:
                if (i2 == -1) {
                    addFileModule(this.imageCaptureFilePath, BehanceSDKProjectModuleType.IMAGE);
                    this.imageCaptureFilePath = null;
                }
                break;
            case 1002:
                if (i2 == -1 && (list = (List) intent.getExtras().getSerializable(BehanceSDKCCLauncherActivity.ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES)) != null && !list.isEmpty()) {
                    for (File file : list) {
                        addFileModule(file.getAbsolutePath(), BehanceSDKProjectEditorFileUtils.getModuleTypeFromPath(file.getName()));
                    }
                    break;
                }
                break;
            case 1003:
                if (i2 == -1) {
                    ClipData clipData = intent.getClipData();
                    for (int i3 = 0; i3 < clipData.getItemCount(); i3++) {
                        Uri uri = clipData.getItemAt(i3).getUri();
                        if (uri.toString().startsWith("content://com.google.android.apps.photos.content")) {
                            try {
                                new BehanceSDKDecodeBitmapAsyncTask(this).execute(getActivity().getContentResolver().openInputStream(uri));
                            } catch (FileNotFoundException e2) {
                                e2.printStackTrace();
                            }
                        } else {
                            String realPathFromURI = getRealPathFromURI(getActivity(), uri);
                            addFileModule(realPathFromURI, getBehanceMimeType(realPathFromURI));
                        }
                    }
                }
                break;
            default:
                super.onActivityResult(i, i2, intent);
                break;
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKDecodeBitmapAsyncTaskListener
    public void onBitmapSavedToFile(final File file) {
        getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.5
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.addFileModule(file.getAbsolutePath(), BehanceSDKProjectEditorContentFragment.getBehanceMimeType(file.getAbsolutePath()));
            }
        });
    }

    public void handleAddCreativeCloudFileClick() {
        Intent intent = new Intent(getContext(), (Class<?>) BehanceSDKCCLauncherActivity.class);
        EnumSet enumSetOf = EnumSet.of(AdobeAssetMimeTypes.MIMETYPE_GIF, AdobeAssetMimeTypes.MIMETYPE_JPEG, AdobeAssetMimeTypes.MIMETYPE_JPG, AdobeAssetMimeTypes.MIMETYPE_PNG, AdobeAssetMimeTypes.MIMETYPE_BMP, AdobeAssetMimeTypes.MIMETYPE_M4V, AdobeAssetMimeTypes.MIMETYPE_MP4, AdobeAssetMimeTypes.MIMETYPE_QUICKTIME);
        EnumSet enumSetOf2 = EnumSet.of(AdobeUXAssetBrowserOption.ENABLE_MULTI_SELECT, AdobeUXAssetBrowserOption.SHOW_MULTI_SELECT_ON_POPUP);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ALLOWED_MIME_TYPES, enumSetOf);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_ASSET_BROWSER_OPTIONS, enumSetOf2);
        intent.putExtra(BehanceSDKCCLauncherActivity.ARGS_IMAGE_VALIDATOR_TYPE, BehanceSDKImageValidatorFactory.PUBLISH_PROJECT_IMAGE_VALIDATOR);
        startActivityForResult(intent, 1002);
    }

    public void handleCameraClick() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            File fileCreateImageFile = null;
            try {
                fileCreateImageFile = BehanceSDKProjectEditorFileUtils.createImageFile(getActivity());
            } catch (IOException e2) {
            }
            if (fileCreateImageFile != null) {
                this.imageCaptureFilePath = fileCreateImageFile.getAbsolutePath();
                intent.putExtra("output", FileProvider.getUriForFile(getActivity(), BehanceSDK.getInstance().getFileProviderAuthority(), fileCreateImageFile));
                startActivityForResult(intent, 1001);
            }
        }
    }

    public String getRealPathFromURI(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            try {
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndexOrThrow);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return string;
            } catch (Throwable th) {
                th = th;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    public static BehanceSDKProjectModuleType getBehanceMimeType(String str) {
        String mimeTypeFromExtension;
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null && (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl)) != null) {
            if (mimeTypeFromExtension.split(URIUtil.SLASH)[0].equals("image")) {
                return BehanceSDKProjectModuleType.IMAGE;
            }
            if (mimeTypeFromExtension.split(URIUtil.SLASH)[0].equals("video")) {
                return BehanceSDKProjectModuleType.VIDEO;
            }
        }
        return null;
    }

    public static boolean isGooglePhotosInstalled(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(GOOGLE_PHOTOS_PACKAGE_NAME, 1) != null;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFileModule(String str, BehanceSDKProjectModuleType behanceSDKProjectModuleType) {
        addFileModule(str, behanceSDKProjectModuleType, true);
    }

    private void addFileModule(String str, BehanceSDKProjectModuleType behanceSDKProjectModuleType, boolean z) {
        BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO = new BehanceSDKModulePrepareDTO(this.headlessFragment.getNextNewModuleId(), str);
        this.headlessFragment.uploadFile(behanceSDKModulePrepareDTO);
        BehanceSDKEditProjectModuleAbstract behanceSDKEditProjectModuleAudio = null;
        switch (behanceSDKProjectModuleType) {
            case IMAGE:
                behanceSDKEditProjectModuleAudio = new BehanceSDKEditProjectModuleImage();
                BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage = (BehanceSDKEditProjectModuleImage) behanceSDKEditProjectModuleAudio;
                behanceSDKEditProjectModuleImage.setPath(str);
                BitmapFactory.Options storedImageDetails = BehanceSDKProjectEditorFileUtils.getStoredImageDetails(str);
                behanceSDKEditProjectModuleImage.setHeight(storedImageDetails.outHeight);
                behanceSDKEditProjectModuleImage.setWidth(storedImageDetails.outWidth);
                behanceSDKEditProjectModuleImage.setFullBleed(z && behanceSDKEditProjectModuleImage.getWidth() >= 1400);
                break;
            case VIDEO:
                behanceSDKEditProjectModuleAudio = new BehanceSDKEditProjectModuleVideo();
                ((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAudio).setPath(str);
                ((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAudio).setWidth(-1);
                ((BehanceSDKEditProjectModuleVideo) behanceSDKEditProjectModuleAudio).setHeight(-1);
                break;
            case AUDIO:
                behanceSDKEditProjectModuleAudio = new BehanceSDKEditProjectModuleAudio();
                break;
        }
        if (behanceSDKEditProjectModuleAudio != null) {
            behanceSDKEditProjectModuleAudio.setNewModule(true);
            behanceSDKEditProjectModuleAudio.setId(behanceSDKModulePrepareDTO.getId());
            if (this.projectEditorContentRecycler.getAdapter() instanceof BehanceSDKProjectEditorContentRecyclerAdapter) {
                if (this.moduleToReplace == -1) {
                    ((BehanceSDKProjectEditorContentRecyclerAdapter) this.projectEditorContentRecycler.getAdapter()).addModule(behanceSDKEditProjectModuleAudio);
                } else {
                    ((BehanceSDKProjectEditorContentRecyclerAdapter) this.projectEditorContentRecycler.getAdapter()).replaceModule(this.moduleToReplace, behanceSDKEditProjectModuleAudio);
                }
            }
        }
        if (this.moduleToReplace == -1) {
            this.headlessFragment.moduleCountChanged();
            updateEmptyState();
            new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.6
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKProjectEditorContentFragment.this.smoothScrollContentRecyclerToPosition(BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getAdapter().getItemCount());
                }
            }, 100L);
            return;
        }
        finishReplace();
    }

    public void handleAddTextClick() {
        this.drawerBehavior.setState(5);
        smoothScrollContentRecyclerToPosition(this.projectEditorContentRecycler.getAdapter().getItemCount());
        BehanceSDKEditProjectModuleText behanceSDKEditProjectModuleText = new BehanceSDKEditProjectModuleText();
        behanceSDKEditProjectModuleText.setId(this.headlessFragment.getNextNewModuleId());
        behanceSDKEditProjectModuleText.setNewModule(true);
        if (this.projectEditorContentRecycler.getAdapter() instanceof BehanceSDKProjectEditorContentRecyclerAdapter) {
            ((BehanceSDKProjectEditorContentRecyclerAdapter) this.projectEditorContentRecycler.getAdapter()).addModule(behanceSDKEditProjectModuleText);
        }
        this.headlessFragment.moduleCountChanged();
        updateEmptyState();
    }

    public void handleAddEmbedClick() {
        ClipboardManager clipboardManager = (ClipboardManager) getActivity().getSystemService(AdobeStorageSession.AdobeStorageSessionClipboardServiceTag);
        if (clipboardManager.getPrimaryClip() != null) {
            ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
            if (itemAt == null || !isValidEmbed(itemAt.getText().toString())) {
                Toast.makeText(getActivity(), R.string.bsdk_project_editor_embed_clipboard_invalid, 1).show();
                return;
            } else {
                addEmbedModule(itemAt.getText().toString());
                return;
            }
        }
        Toast.makeText(getActivity(), R.string.bsdk_project_editor_embed_clipboard_empty, 1).show();
    }

    private boolean isValidEmbed(String str) {
        return str.length() > 10 && str.contains("<iframe") && str.contains(Engagement.Comparison.GT);
    }

    private void addEmbedModule(String str) {
        BehanceSDKModulePrepareDTO behanceSDKModulePrepareDTO = new BehanceSDKModulePrepareDTO(this.headlessFragment.getNextNewModuleId(), str);
        this.headlessFragment.transformEmbed(behanceSDKModulePrepareDTO);
        BehanceSDKEditProjectModuleEmbed behanceSDKEditProjectModuleEmbed = new BehanceSDKEditProjectModuleEmbed();
        behanceSDKEditProjectModuleEmbed.setHtml(str);
        behanceSDKEditProjectModuleEmbed.setId(behanceSDKModulePrepareDTO.getId());
        behanceSDKEditProjectModuleEmbed.setNewModule(true);
        if (this.projectEditorContentRecycler.getAdapter() instanceof BehanceSDKProjectEditorContentRecyclerAdapter) {
            ((BehanceSDKProjectEditorContentRecyclerAdapter) this.projectEditorContentRecycler.getAdapter()).addModule(behanceSDKEditProjectModuleEmbed);
        }
        this.headlessFragment.moduleCountChanged();
        updateEmptyState();
        new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.7
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.smoothScrollContentRecyclerToPosition(BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getAdapter().getItemCount());
            }
        }, 100L);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.imageCaptureFilePath != null) {
            bundle.putString(SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH, this.imageCaptureFilePath);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == this.projectEditorContentAddCc.getId()) {
            handleAddCreativeCloudFileClick();
            return;
        }
        if (view.getId() == this.projectEditorContentAddCamera.getId()) {
            handleCameraClick();
            return;
        }
        if (view.getId() == this.projectEditorContentAddText.getId()) {
            handleAddTextClick();
            return;
        }
        if (view.getId() == this.projectEditorContentAddEmbed.getId()) {
            handleAddEmbedClick();
            return;
        }
        if (view.getId() == this.projectEditorContentTextStyle.getId()) {
            if (setAlignBiuNotShowing(true)) {
                this.textEditorPendingRunnable = new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.8
                    @Override // java.lang.Runnable
                    public void run() {
                        BehanceSDKProjectEditorContentFragment.this.launchStyleDialog();
                        BehanceSDKProjectEditorContentFragment.this.textEditorPendingRunnable = null;
                    }
                };
                BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
                return;
            }
            return;
        }
        if (view.getId() == this.projectEditorContentTextBiuContainer.getId()) {
            alternateBiuShowing();
            return;
        }
        if (view.getId() == this.projectEditorContentTextBold.getId()) {
            handleBoldClick();
            return;
        }
        if (view.getId() == this.projectEditorContentTextItalic.getId()) {
            handleItalicClick();
            return;
        }
        if (view.getId() == this.projectEditorContentTextUnderline.getId()) {
            handleUnderlineClick();
            return;
        }
        if (view.getId() == this.projectEditorContentTextColor.getId()) {
            if (setAlignBiuNotShowing(true)) {
                this.textEditorPendingRunnable = new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.9
                    @Override // java.lang.Runnable
                    public void run() {
                        BehanceSDKColorPickerDialogSimple behanceSDKColorPickerDialogSimple = new BehanceSDKColorPickerDialogSimple();
                        behanceSDKColorPickerDialogSimple.setFloating(new Point((BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextColor.getRight() + BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextColor.getLeft()) / 2, (int) (((double) BehanceSDKProjectEditorContentFragment.this.getResources().getDisplayMetrics().heightPixels) - (1.5d * ((double) BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextColor.getHeight())))));
                        behanceSDKColorPickerDialogSimple.setStartingColor(BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.getColor());
                        behanceSDKColorPickerDialogSimple.setColorCallback(new IBehanceSDKColorCallback() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.9.1
                            @Override // com.behance.sdk.listeners.IBehanceSDKColorCallback
                            public void onColorSelected(int i) {
                                BehanceSDKPublishTextUtils.setColor(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, i);
                            }
                        });
                        if (BehanceSDKProjectEditorContentFragment.this.getActivity().getCurrentFocus() != null) {
                            ((InputMethodManager) BehanceSDKProjectEditorContentFragment.this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(BehanceSDKProjectEditorContentFragment.this.getActivity().getCurrentFocus().getWindowToken(), 0);
                        }
                        behanceSDKColorPickerDialogSimple.show(BehanceSDKProjectEditorContentFragment.this.getActivity().getSupportFragmentManager(), BehanceSDKProjectEditorContentFragment.FRAGMENT_TAG_COLOR_PICKER_DIALOG);
                        BehanceSDKProjectEditorContentFragment.this.textEditorPendingRunnable = null;
                    }
                };
                BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
                return;
            }
            return;
        }
        if (view.getId() == this.projectEditorContentTextCaps.getId()) {
            if (setAlignBiuNotShowing(true)) {
                BehanceSDKPublishTextUtils.toggleUppercase(this.activeEditWebView);
                return;
            }
            return;
        }
        if (view.getId() == this.projectEditorContentTextLeft.getId()) {
            if (this.biuShowing) {
                alternateBiuShowing();
                return;
            }
            if (this.alignShowing) {
                BehanceSDKPublishTextUtils.alignLeft(this.activeEditWebView);
            }
            alternateAlignShowing(BehanceSDKProjectModuleAlignment.LEFT);
            return;
        }
        if (view.getId() == this.projectEditorContentTextCenter.getId()) {
            if (this.biuShowing) {
                alternateBiuShowing();
                return;
            }
            if (this.alignShowing) {
                BehanceSDKPublishTextUtils.alignCenter(this.activeEditWebView);
            }
            alternateAlignShowing(BehanceSDKProjectModuleAlignment.CENTER);
            return;
        }
        if (view.getId() == this.projectEditorContentTextRight.getId()) {
            if (this.biuShowing) {
                alternateBiuShowing();
                return;
            }
            if (this.alignShowing) {
                BehanceSDKPublishTextUtils.alignRight(this.activeEditWebView);
            }
            alternateAlignShowing(BehanceSDKProjectModuleAlignment.RIGHT);
            return;
        }
        if (view.getId() == this.projectEditorContentTextLink.getId()) {
            if (setAlignBiuNotShowing(true)) {
                this.textEditorPendingRunnable = new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.isLink()) {
                            BehanceSDKPublishTextUtils.setLink(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, null);
                        } else {
                            BehanceSDKProjectEditorContentFragment.this.launchLinkInputDialog();
                        }
                        BehanceSDKProjectEditorContentFragment.this.textEditorPendingRunnable = null;
                    }
                };
                BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
                return;
            }
            return;
        }
        if (view.getId() == this.projectEditorContentTextClear.getId()) {
            if (setAlignBiuNotShowing(true)) {
                BehanceSDKPublishTextUtils.clearFormatting(this.activeEditWebView);
            }
        } else if (view.getId() == this.projectEditorContentOverlay.getId()) {
            finishReplace();
        }
    }

    private void handleBoldClick() {
        if (this.alignShowing) {
            alternateAlignShowing();
        } else if (this.biuShowing) {
            BehanceSDKPublishTextUtils.toggleBold(this.activeEditWebView);
            BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
        } else {
            alternateBiuShowing();
        }
    }

    private void handleItalicClick() {
        if (this.alignShowing) {
            alternateAlignShowing();
        } else if (this.biuShowing) {
            BehanceSDKPublishTextUtils.toggleItalic(this.activeEditWebView);
            BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
        } else {
            alternateBiuShowing();
        }
    }

    private void handleUnderlineClick() {
        if (this.alignShowing) {
            alternateAlignShowing();
        } else if (this.biuShowing) {
            BehanceSDKPublishTextUtils.toggleUnderline(this.activeEditWebView);
            BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
        } else {
            alternateBiuShowing();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnDragListener
    @TargetApi(24)
    public boolean onDrag(View view, DragEvent dragEvent) {
        switch (dragEvent.getAction()) {
            case 1:
                updateDropLayer(true, false);
                return true;
            case 2:
            default:
                return true;
            case 3:
                getActivity().requestDragAndDropPermissions(dragEvent);
                for (int i = 0; i < dragEvent.getClipData().getItemCount(); i++) {
                    addFileModule(BehanceSDKFileUtils.getPath(getActivity(), dragEvent.getClipData().getItemAt(i).getUri()), BehanceSDKProjectModuleType.IMAGE);
                }
                return true;
            case 4:
                updateDropLayer(false, false);
                return true;
            case 5:
                updateDropLayer(true, true);
                return true;
            case 6:
                updateDropLayer(true, false);
                return true;
        }
    }

    private void updateDropLayer(boolean z, boolean z2) {
        this.projectEditorContentDrop.setVisibility(z ? 0 : 8);
        this.projectEditorContentDrop.setBackgroundResource(z2 ? R.drawable.bsdk_background_editor_add_content_drop_on : R.drawable.bsdk_background_editor_add_content_drop);
        this.projectEditorContentDrop.setImageResource(z2 ? R.drawable.bsdk_icon_note_add_blue : R.drawable.bsdk_icon_note_add);
        this.projectEditorContentRecycler.animate().alpha(z ? 0.25f : 1.0f).start();
        this.projectEditorContentEmpty.animate().alpha(z ? 0.25f : 1.0f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setAlignBiuNotShowing(boolean z) {
        if (this.alignShowing) {
            alternateAlignShowing();
            return false;
        }
        if (this.biuShowing) {
            alternateBiuShowing();
            return false;
        }
        return true;
    }

    private void alternateAlignShowing() {
        alternateAlignShowing(this.lastSelectedAlign);
    }

    private void alternateAlignShowing(BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment) {
        this.alignShowing = !this.alignShowing;
        BehanceSDKResizeViewsAnimation behanceSDKResizeViewsAnimation = new BehanceSDKResizeViewsAnimation();
        behanceSDKResizeViewsAnimation.setDuration(150L);
        behanceSDKResizeViewsAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        if (this.alignShowing) {
            int dimensionPixelSize = (int) (((double) (getResources().getDisplayMetrics().widthPixels - (getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_all) + (getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) * 2)))) / 15.0d);
            int dimensionPixelSize2 = (dimensionPixelSize * 3) + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextStyle, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_style) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBiuContainer, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_biu) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextColor, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_color) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCaps, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_caps) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLink, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_link) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextClear, dimensionPixelSize + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_clear), 1.0f, -0.9f);
            switch (behanceSDKProjectModuleAlignment) {
                case LEFT:
                    setIconColor(this.projectEditorContentTextLeft, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, dimensionPixelSize2, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, dimensionPixelSize2, 0.0f, 1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, dimensionPixelSize2, 0.0f, 1.0f);
                    break;
                case CENTER:
                    setIconColor(this.projectEditorContentTextCenter, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, dimensionPixelSize2, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, dimensionPixelSize2, 0.0f, 1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, dimensionPixelSize2, 0.0f, 1.0f);
                    break;
                case RIGHT:
                    setIconColor(this.projectEditorContentTextRight, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, dimensionPixelSize2, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, dimensionPixelSize2, 0.0f, 1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, dimensionPixelSize2, 0.0f, 1.0f);
                    break;
            }
        } else {
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextStyle, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_style) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBiuContainer, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_biu) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextColor, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_color) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCaps, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_caps) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLink, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_link) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextClear, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_clear) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            setIconColor(this.projectEditorContentTextLeft, false);
            setIconColor(this.projectEditorContentTextCenter, false);
            setIconColor(this.projectEditorContentTextRight, false);
            switch (behanceSDKProjectModuleAlignment) {
                case LEFT:
                    setIconColor(this.projectEditorContentTextLeft, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, 0, 1.0f, -1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, 0, 1.0f, -1.0f);
                    break;
                case CENTER:
                    setIconColor(this.projectEditorContentTextCenter, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, 0, 1.0f, -1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, 0, 1.0f, -1.0f);
                    break;
                case RIGHT:
                    setIconColor(this.projectEditorContentTextRight, true);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth, 1.0f, 0.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, 0, 1.0f, -1.0f);
                    behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, 0, 1.0f, -1.0f);
                    break;
            }
            this.lastSelectedAlign = behanceSDKProjectModuleAlignment;
            behanceSDKResizeViewsAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.11
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextLeft, false);
                    BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextCenter, false);
                    BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextRight, false);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }
            });
        }
        this.projectEditorContentTextContainer.startAnimation(behanceSDKResizeViewsAnimation);
    }

    private void alternateBiuShowing() {
        this.biuShowing = !this.biuShowing;
        BehanceSDKResizeViewsAnimation behanceSDKResizeViewsAnimation = new BehanceSDKResizeViewsAnimation();
        behanceSDKResizeViewsAnimation.setDuration(150L);
        behanceSDKResizeViewsAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
        if (this.biuShowing) {
            BehanceSDKPublishTextUtils.getState(this.activeEditWebView);
            int dimensionPixelSize = (int) (((double) (getResources().getDisplayMetrics().widthPixels - getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_all))) / 15.0d);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextStyle, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_style) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBold, (dimensionPixelSize * 3) + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_bold), 1.0f, 0.0f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextItalic, (dimensionPixelSize * 3) + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_italic), 1.0f, 0.0f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextUnderline, (dimensionPixelSize * 3) + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_underline), 1.0f, 0.0f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBiuContainer, (dimensionPixelSize * 9) + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_biu), 1.0f, 0.0f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextColor, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_color) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCaps, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_caps) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLink, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_link) + dimensionPixelSize, 1.0f, -0.9f);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextClear, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_clear) + dimensionPixelSize, 1.0f, -0.9f);
            if (this.projectEditorContentTextLeft.getAlpha() == 1.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, dimensionPixelSize + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 1.0f, -0.9f);
            } else if (this.projectEditorContentTextCenter.getAlpha() == 1.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, dimensionPixelSize + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 1.0f, -0.9f);
            } else if (this.projectEditorContentTextRight.getAlpha() == 1.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, dimensionPixelSize + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 1.0f, -0.9f);
            }
        } else {
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextStyle, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_style) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBold, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_bold), 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextItalic, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_italic), 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextUnderline, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_underline), 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextBiuContainer, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_biu) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextColor, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_color) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCaps, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_caps) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLink, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_link) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextClear, getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_clear) + this.textToolWidth, 0.100000024f, TEXT_TOOL_FADE);
            if (this.projectEditorContentTextLeft.getAlpha() > 0.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextLeft, this.textToolWidth + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 0.100000024f, TEXT_TOOL_FADE);
            } else if (this.projectEditorContentTextCenter.getAlpha() > 0.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextCenter, this.textToolWidth + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 0.100000024f, TEXT_TOOL_FADE);
            } else if (this.projectEditorContentTextRight.getAlpha() > 0.0f) {
                behanceSDKResizeViewsAnimation.addItem(this.projectEditorContentTextRight, this.textToolWidth + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align), 0.100000024f, TEXT_TOOL_FADE);
            }
            setIconColor(this.projectEditorContentTextBold, false);
            setIconColor(this.projectEditorContentTextItalic, false);
            setIconColor(this.projectEditorContentTextUnderline, false);
        }
        this.projectEditorContentTextContainer.startAnimation(behanceSDKResizeViewsAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedAlignment(BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment) {
        if (this.alignShowing) {
            setIconColor(this.projectEditorContentTextLeft, behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.LEFT);
            setIconColor(this.projectEditorContentTextCenter, behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.CENTER);
            setIconColor(this.projectEditorContentTextRight, behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.RIGHT);
        } else {
            this.projectEditorContentTextLeft.getLayoutParams().width = behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.LEFT ? getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth : 0;
            this.projectEditorContentTextLeft.setAlpha(behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.LEFT ? 1.0f : 0.0f);
            this.projectEditorContentTextCenter.getLayoutParams().width = behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.CENTER ? getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) + this.textToolWidth : 0;
            this.projectEditorContentTextCenter.setAlpha(behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.CENTER ? 1.0f : 0.0f);
            this.projectEditorContentTextRight.getLayoutParams().width = behanceSDKProjectModuleAlignment == BehanceSDKProjectModuleAlignment.RIGHT ? this.textToolWidth + getResources().getDimensionPixelSize(R.dimen.bsdk_icon_width_align) : 0;
            this.projectEditorContentTextRight.setAlpha(behanceSDKProjectModuleAlignment != BehanceSDKProjectModuleAlignment.RIGHT ? 0.0f : 1.0f);
        }
        this.lastSelectedAlign = behanceSDKProjectModuleAlignment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchStyleDialog() {
        this.projectEditorContentRecycler.setPadding(0, this.projectEditorContentRecycler.getPaddingTop(), 0, getResources().getDisplayMetrics().heightPixels);
        final BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(getActivity());
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.bsdk_dialog_project_editor_text_styles, (ViewGroup) null, false);
        bottomSheetDialog.setContentView(viewInflate);
        bottomSheetDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.12
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.setPadding(0, BehanceSDKProjectEditorContentFragment.this.projectEditorContentRecycler.getPaddingTop(), 0, BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderContainer.getHeight());
                if (BehanceSDKProjectEditorContentFragment.this.activeEditWebView != null) {
                    new Handler().postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BehanceSDKProjectEditorContentFragment.this.getActivity() != null && BehanceSDKProjectEditorContentFragment.this.activeEditWebView != null) {
                                ((InputMethodManager) BehanceSDKProjectEditorContentFragment.this.getActivity().getSystemService("input_method")).showSoftInput(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, 0);
                            }
                        }
                    }, 50L);
                }
            }
        });
        if (getActivity().getCurrentFocus() != null) {
            ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 0);
        }
        bottomSheetDialog.show();
        final RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.bsdk_project_editor_styles_recycler);
        final RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.bsdk_project_editor_styles_detail_recycler);
        final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from((View) viewInflate.getParent());
        bottomSheetBehaviorFrom.setPeekHeight(getResources().getDimensionPixelSize(R.dimen.bsdk_style_card_height) * 3);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView2.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView2.setTranslationX(getResources().getDisplayMetrics().widthPixels);
        recyclerView2.setAdapter(new BehanceSDKProjectEditorTextFontsRecyclerAdapter(getActivity(), null, null));
        recyclerView.setAdapter(new BehanceSDKProjectEditorTextOptionsRecyclerAdapter(getActivity(), this.lastTextSelectionState.getFont(), this.lastTextSelectionState.getStyle(), this.lastTextSelectionState.getSizePX(), new BehanceSDKProjectEditorTextOptionsRecyclerAdapter.StyleCallbacks() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.13
            @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.StyleCallbacks
            public void onStylesClick(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle) {
                recyclerView2.swapAdapter(new BehanceSDKProjectEditorTextStylesRecyclerAdapter(BehanceSDKProjectEditorContentFragment.this.getActivity(), behanceSDKProjectEditorTextStyle, new BehanceSDKProjectEditorTextStylesRecyclerAdapter.TextStyleCallback() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.13.1
                    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextStylesRecyclerAdapter.TextStyleCallback
                    public void onItemSelected(BehanceSDKProjectEditorTextStyle behanceSDKProjectEditorTextStyle2) {
                        ((BehanceSDKProjectEditorTextOptionsRecyclerAdapter) recyclerView.getAdapter()).setSelectedStyle(behanceSDKProjectEditorTextStyle2);
                        BehanceSDKPublishTextUtils.setStyle(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, behanceSDKProjectEditorTextStyle2.getStyle());
                        bottomSheetDialog.dismiss();
                    }
                }), false);
                animate(true);
            }

            @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.StyleCallbacks
            public void onFontsClick(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont) {
                recyclerView2.swapAdapter(new BehanceSDKProjectEditorTextFontsRecyclerAdapter(BehanceSDKProjectEditorContentFragment.this.getActivity(), behanceSDKProjectEditorTextFont, new BehanceSDKProjectEditorTextFontsRecyclerAdapter.TextFontCallback() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.13.2
                    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextFontsRecyclerAdapter.TextFontCallback
                    public void onItemSelected(BehanceSDKProjectEditorTextFont behanceSDKProjectEditorTextFont2) {
                        ((BehanceSDKProjectEditorTextOptionsRecyclerAdapter) recyclerView.getAdapter()).setSelectedFont(behanceSDKProjectEditorTextFont2);
                        animate(false);
                        BehanceSDKPublishTextUtils.setFont(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, behanceSDKProjectEditorTextFont2.getFont());
                    }
                }), false);
                animate(true);
            }

            @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorTextOptionsRecyclerAdapter.StyleCallbacks
            public void onTextSizeChanged(int i) {
                BehanceSDKPublishTextUtils.setTextSize(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, i);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void animate(boolean z) {
                bottomSheetBehaviorFrom.setState(4);
                recyclerView2.animate().translationX(z ? 0.0f : BehanceSDKProjectEditorContentFragment.this.getResources().getDisplayMetrics().widthPixels).setInterpolator(new AccelerateDecelerateInterpolator()).start();
                recyclerView.animate().translationX(z ? -BehanceSDKProjectEditorContentFragment.this.getResources().getDisplayMetrics().widthPixels : 0.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setListener(z ? new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.13.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        bottomSheetBehaviorFrom.setState(3);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                } : null).start();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchLinkInputDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.bsdk_project_editor_dialog_link_title);
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.bsdk_project_editor_dialog_text_input, (ViewGroup) null, false);
        builder.setView(viewInflate);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.project_editor_dialog_text_input_field);
        builder.setPositiveButton(R.string.bsdk_generic_alert_dialog_ok_btn_label, new DialogInterface.OnClickListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.14
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                BehanceSDKPublishTextUtils.setLink(BehanceSDKProjectEditorContentFragment.this.activeEditWebView, editText.getText().toString());
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        editText.requestFocus();
        alertDialogCreate.getWindow().clearFlags(131080);
        alertDialogCreate.getWindow().setSoftInputMode(4);
        alertDialogCreate.show();
    }

    public void refreshRecycler() {
        if (this.projectEditorContentRecycler.getAdapter() instanceof BehanceSDKProjectEditorContentRecyclerAdapter) {
            ((BehanceSDKProjectEditorContentRecyclerAdapter) this.projectEditorContentRecycler.getAdapter()).setModules(this.headlessFragment.getProjectModules());
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onModuleRemoved(int i) {
        this.headlessFragment.moduleCountChanged();
        updateEmptyState();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onEditTextWebViewActive(WebView webView) {
        this.activeEditWebView = webView;
        getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.15
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.drawerBehavior.setState(5);
                BehanceSDKProjectEditorContentFragment.this.showTextEditTools();
                if (BehanceSDKProjectEditorContentFragment.this.textEditorCallbacks != null) {
                    BehanceSDKProjectEditorContentFragment.this.textEditorCallbacks.onTextEditorActive();
                }
                BehanceSDKProjectEditorContentFragment.this.setAlignBiuNotShowing(false);
                BehanceSDKPublishTextUtils.getState(BehanceSDKProjectEditorContentFragment.this.activeEditWebView);
            }
        });
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onEditTextInActive() {
        getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.16
            @Override // java.lang.Runnable
            public void run() {
                if (BehanceSDKProjectEditorContentFragment.this.activeEditWebView != null) {
                    ((InputMethodManager) BehanceSDKProjectEditorContentFragment.this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(BehanceSDKProjectEditorContentFragment.this.activeEditWebView.getWindowToken(), 0);
                    BehanceSDKPublishTextUtils.clearSelection(BehanceSDKProjectEditorContentFragment.this.activeEditWebView);
                    BehanceSDKPublishTextUtils.blur(BehanceSDKProjectEditorContentFragment.this.activeEditWebView);
                    BehanceSDKProjectEditorContentFragment.this.activeEditWebView.clearFocus();
                    BehanceSDKProjectEditorContentFragment.this.activeEditWebView = null;
                }
                BehanceSDKProjectEditorContentFragment.this.hideTextEditTools();
                if (BehanceSDKProjectEditorContentFragment.this.textEditorCallbacks != null) {
                    BehanceSDKProjectEditorContentFragment.this.textEditorCallbacks.onTextEditorInActive();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTextEditTools() {
        this.projectEditorContentTextContainer.setAlpha(0.0f);
        this.projectEditorContentTextContainer.setVisibility(0);
        this.projectEditorContentBottomSheet.animate().alpha(0.0f).setDuration(350L).start();
        this.projectEditorContentTextContainer.animate().translationY(0.0f).alpha(1.0f).setListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.17
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheet.setVisibility(4);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        }).setDuration(350L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTextEditTools() {
        this.projectEditorContentBottomSheet.setVisibility(0);
        this.projectEditorContentBottomSheet.animate().alpha(1.0f).setDuration(350L).start();
        this.projectEditorContentTextContainer.animate().alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.18
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextContainer.setVisibility(4);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        }).setDuration(350L).start();
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onSelectionStateChanged(BehanceSDKTextSelectionState behanceSDKTextSelectionState) {
        this.lastTextSelectionState = behanceSDKTextSelectionState;
        if (this.textEditorPendingRunnable != null) {
            getActivity().runOnUiThread(this.textEditorPendingRunnable);
        } else {
            getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.19
                @Override // java.lang.Runnable
                public void run() {
                    if (BehanceSDKProjectEditorContentFragment.this.biuShowing) {
                        BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextBold, BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.isBold());
                        BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextItalic, BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.isItalic());
                        BehanceSDKProjectEditorContentFragment.this.setIconColor(BehanceSDKProjectEditorContentFragment.this.projectEditorContentTextUnderline, BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.isUnderline());
                        return;
                    }
                    BehanceSDKProjectEditorContentFragment.this.updateSelectedAlignment(BehanceSDKProjectEditorContentFragment.this.lastTextSelectionState.getAlignment());
                }
            });
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onEditTextCreated(final int i, final WebView webView) {
        getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.20
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.smoothScrollContentRecyclerToPosition(i);
                BehanceSDKPublishTextUtils.focus(webView);
            }
        });
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void onModuleReplaceRequested(int i) {
        this.projectEditorContentOverlay.setAlpha(0.0f);
        this.projectEditorContentOverlay.setVisibility(0);
        this.projectEditorContentOverlay.animate().alpha(1.0f).withEndAction(null).start();
        this.moduleToReplace = i;
        this.projectEditorContentBottomSheetHeaderActions.animate().alpha(0.0f).setDuration(150L).setStartDelay(0L).withEndAction(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.21
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderActions.setVisibility(8);
            }
        }).start();
        this.projectEditorContentBottomSheetHeaderReplaceImage.setAlpha(0.0f);
        this.projectEditorContentBottomSheetHeaderReplaceImage.setVisibility(0);
        this.projectEditorContentBottomSheetHeaderReplaceImage.animate().alpha(1.0f).setDuration(150L).setStartDelay(50L).start();
        if (this.drawerBehavior.getState() == 5) {
            this.drawerBehavior.setState(4);
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKProjectEditorContentRecyclerAdapter.AdapterCallbacks
    public void scrollForModuleSelection(int i) {
        if (i > this.projectEditorContentRecycler.getHeight() - this.projectEditorContentRecycler.getPaddingBottom()) {
            this.projectEditorContentRecycler.smoothScrollBy(0, i - (this.projectEditorContentRecycler.getHeight() - this.projectEditorContentRecycler.getPaddingBottom()), new DecelerateInterpolator(3.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconColor(ImageView imageView, boolean z) {
        if (z) {
            imageView.setColorFilter(this.appColor, PorterDuff.Mode.SRC_ATOP);
        } else {
            imageView.setColorFilter((ColorFilter) null);
        }
    }

    private void updateEmptyState() {
        this.projectEditorContentEmpty.setVisibility(this.headlessFragment.getProjectModules().size() > 0 ? 8 : 0);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGalleryItemsRecyclerAdapter.GalleryCallbacks
    public void onItemClicked(File file) {
        addFileModule(file.getAbsolutePath(), BehanceSDKProjectEditorFileUtils.getModuleTypeFromPath(file.getName()));
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGalleryItemsRecyclerAdapter.GalleryCallbacks
    public void onReturnToFoldersClicked() {
        this.projectEditorGalleryItemRecycler.animate().translationX(getResources().getDisplayMetrics().widthPixels).setInterpolator(new DecelerateInterpolator(2.0f)).start();
        this.projectEditorGalleryAlbumRecycler.animate().translationX(0.0f).setInterpolator(new DecelerateInterpolator(2.0f)).start();
        this.drawerBehavior.setScrollingChild(this.projectEditorGalleryAlbumRecycler);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.GalleryFolderCallbacks
    public void onFolderClicked(List<File> list) {
        this.projectEditorGalleryItemRecycler.swapAdapter(new BehanceSDKGalleryItemsRecyclerAdapter(getActivity(), list, this), false);
        this.projectEditorGalleryAlbumRecycler.animate().translationX(-getResources().getDisplayMetrics().widthPixels).setInterpolator(new DecelerateInterpolator(2.0f)).start();
        this.projectEditorGalleryItemRecycler.animate().translationX(0.0f).setInterpolator(new DecelerateInterpolator(2.0f)).start();
        this.drawerBehavior.setScrollingChild(this.projectEditorGalleryItemRecycler);
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.GalleryFolderCallbacks
    public void onGooglePhotosClicked() {
        int i = 0;
        Intent intent = new Intent();
        intent.setAction("android.intent.action.PICK");
        intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        intent.setType("*/*");
        List<ResolveInfo> listQueryIntentActivities = getActivity().getPackageManager().queryIntentActivities(intent, 0);
        while (true) {
            int i2 = i;
            if (i2 < listQueryIntentActivities.size()) {
                if (listQueryIntentActivities.get(i2) != null) {
                    String str = listQueryIntentActivities.get(i2).activityInfo.packageName;
                    if (GOOGLE_PHOTOS_PACKAGE_NAME.equals(str)) {
                        intent.setComponent(new ComponentName(str, listQueryIntentActivities.get(i2).activityInfo.name));
                        startActivityForResult(intent, 1003);
                        return;
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKGalleryFolderRecyclerAdapter.GalleryFolderCallbacks
    public boolean showGooglePhotos() {
        return isGooglePhotosInstalled(getActivity()) && !isGooglePhotosDisabled(getActivity());
    }

    @Override // com.behance.sdk.fragments.headless.BehanceSDKProjectEditorHeadlessFragment.LoadFilesCallbacks
    public void onFilesLoaded(final Map<String, List<File>> map, long j) {
        if (getActivity() != null) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.22
                @Override // java.lang.Runnable
                public void run() {
                    BehanceSDKProjectEditorContentFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.22.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BehanceSDKProjectEditorContentFragment.this.setGalleryAdapters(map, true);
                        }
                    });
                }
            }, ((long) getResources().getInteger(android.R.integer.config_mediumAnimTime)) - j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGalleryAdapters(Map<String, List<File>> map, boolean z) {
        this.projectEditorGalleryAlbumRecycler.setAdapter(new BehanceSDKGalleryFolderRecyclerAdapter(getActivity(), map, this));
        if (map != null && !map.keySet().isEmpty()) {
            this.projectEditorGalleryItemRecycler.setAdapter(new BehanceSDKGalleryItemsRecyclerAdapter(getActivity(), map.get(map.keySet().toArray()[0]), this));
        }
        if (z) {
            this.drawerBehavior.setState(4);
        }
    }

    private void finishReplace() {
        this.moduleToReplace = -1;
        this.projectEditorContentOverlay.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.23
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentOverlay.setVisibility(8);
            }
        }).start();
        this.projectEditorContentBottomSheetHeaderReplaceImage.animate().alpha(0.0f).setDuration(150L).setStartDelay(0L).withEndAction(new Runnable() { // from class: com.behance.sdk.ui.fragments.BehanceSDKProjectEditorContentFragment.24
            @Override // java.lang.Runnable
            public void run() {
                BehanceSDKProjectEditorContentFragment.this.projectEditorContentBottomSheetHeaderReplaceImage.setVisibility(8);
            }
        }).start();
        this.projectEditorContentBottomSheetHeaderActions.setAlpha(0.0f);
        this.projectEditorContentBottomSheetHeaderActions.setVisibility(0);
        this.projectEditorContentBottomSheetHeaderActions.animate().alpha(1.0f).setDuration(150L).setStartDelay(50L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void smoothScrollContentRecyclerToPosition(int i) {
        if (i - this.projectEditorContentRecycler.getChildAdapterPosition(this.projectEditorContentRecycler.getChildAt(this.projectEditorContentRecycler.getChildCount() - 1)) > 8) {
            this.projectEditorContentRecycler.scrollToPosition(i - 5);
        }
        this.projectEditorContentRecycler.smoothScrollToPosition(i);
    }
}
