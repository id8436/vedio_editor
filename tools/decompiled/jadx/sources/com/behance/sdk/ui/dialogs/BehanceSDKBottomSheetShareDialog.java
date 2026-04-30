package com.behance.sdk.ui.dialogs;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.BottomSheetDialogFragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKDownloadAndSaveImageAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKDownloadAndSaveImageAsyncTask;
import com.behance.sdk.dto.BehanceSDKShareContentAdapterItemDTO;
import com.behance.sdk.dto.BehanceSDKShareContentDTO;
import com.behance.sdk.enums.BehanceSDKShareContentType;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.adapters.BehanceSDKBottomSheetRecyclerAdapter;
import com.behance.sdk.ui.decorators.BehanceSDKSpaceItemDecorationList;
import com.behance.sdk.util.BehanceSDKPermissionHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKBottomSheetShareDialog extends BottomSheetDialogFragment implements DialogInterface.OnKeyListener, BehanceSDKBottomSheetRecyclerAdapter.Callbacks {
    private static final String BUNDLE_KEY_SHARE_CONTENT = "BUNDLE_KEY_SHARE_CONTENT";
    private static final String BUNDLE_KEY_SHARE_TYPE = "BUNDLE_KEY_SHARE_TYPE";
    private static final String PACKAGE_NAME_FACEBOOK = "facebook.katana";
    private static final String PACKAGE_NAME_PINTEREST = "pinterest.act";
    private static final String PACKAGE_NAME_TWITTER = "twitter.android";
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKBottomSheetShareDialog.class);
    private View rootView;
    private BehanceSDKShareContentDTO shareContent;
    private BehanceSDKShareContentType shareContentType;
    private RecyclerView sheetRecycler;

    interface GetShareItemsCallbacks {
        void onFinish(List<BehanceSDKShareContentAdapterItemDTO> list);
    }

    public static BehanceSDKBottomSheetShareDialog getInstance(BehanceSDKShareContentDTO behanceSDKShareContentDTO, BehanceSDKShareContentType behanceSDKShareContentType) {
        BehanceSDKBottomSheetShareDialog behanceSDKBottomSheetShareDialog = new BehanceSDKBottomSheetShareDialog();
        behanceSDKBottomSheetShareDialog.shareContent = behanceSDKShareContentDTO;
        behanceSDKBottomSheetShareDialog.shareContentType = behanceSDKShareContentType;
        return behanceSDKBottomSheetShareDialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BsdkBottomSheetDialogTheme);
    }

    @Override // android.support.design.widget.BottomSheetDialogFragment, android.support.v7.app.AppCompatDialogFragment, android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.requestWindowFeature(1);
        if (getResources().getDisplayMetrics().widthPixels > getResources().getDimensionPixelSize(R.dimen.bottom_sheet_max_width)) {
            dialogOnCreateDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog.1
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    if (BehanceSDKBottomSheetShareDialog.this.getDialog().getWindow() != null) {
                        BehanceSDKBottomSheetShareDialog.this.getDialog().getWindow().setLayout(BehanceSDKBottomSheetShareDialog.this.getResources().getDimensionPixelSize(R.dimen.bottom_sheet_max_width), -1);
                        BehanceSDKBottomSheetShareDialog.this.getDialog().getWindow().setGravity(1);
                    }
                }
            });
        }
        dialogOnCreateDialog.setOnKeyListener(this);
        if (bundle != null) {
            this.shareContentType = (BehanceSDKShareContentType) bundle.getSerializable(BUNDLE_KEY_SHARE_TYPE);
            this.shareContent = (BehanceSDKShareContentDTO) bundle.getSerializable(BUNDLE_KEY_SHARE_CONTENT);
        }
        if (this.shareContent == null || this.shareContentType == null) {
            dismiss();
        }
        this.rootView = View.inflate(getContext(), R.layout.bsdk_dialog_fragment_bottom_sheet, null);
        this.sheetRecycler = (RecyclerView) this.rootView.findViewById(R.id.bsdk_bottom_sheet_recycler);
        this.sheetRecycler.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
        this.sheetRecycler.addItemDecoration(new BehanceSDKSpaceItemDecorationList(0));
        BehanceSDKBottomSheetRecyclerAdapter behanceSDKBottomSheetRecyclerAdapter = new BehanceSDKBottomSheetRecyclerAdapter(getActivity(), getShareContentItemsList(this.shareContentType));
        behanceSDKBottomSheetRecyclerAdapter.setCallbacks(this);
        this.sheetRecycler.setAdapter(behanceSDKBottomSheetRecyclerAdapter);
        new GetShareItemsTask(new GetShareItemsCallbacks() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog.2
            @Override // com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog.GetShareItemsCallbacks
            public void onFinish(List<BehanceSDKShareContentAdapterItemDTO> list) {
                if (list != null && list.size() > 0 && BehanceSDKBottomSheetShareDialog.this.sheetRecycler != null && BehanceSDKBottomSheetShareDialog.this.sheetRecycler.getAdapter() != null) {
                    ((BehanceSDKBottomSheetRecyclerAdapter) BehanceSDKBottomSheetShareDialog.this.sheetRecycler.getAdapter()).addItems(list);
                }
            }
        }, getActivity().getPackageManager()).execute(new Void[0]);
        setTitle((TextView) this.rootView.findViewById(R.id.bsdk_bottom_sheet_header_textview));
        dialogOnCreateDialog.setContentView(this.rootView);
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from((View) this.rootView.getParent());
        bottomSheetBehaviorFrom.setPeekHeight((getResources().getDisplayMetrics().heightPixels * 3) / 5);
        this.sheetRecycler.setMinimumHeight(bottomSheetBehaviorFrom.getPeekHeight());
        if (Build.VERSION.SDK_INT >= 20) {
            this.rootView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog.3
                @Override // android.view.View.OnApplyWindowInsetsListener
                @TargetApi(20)
                public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    BehanceSDKBottomSheetShareDialog.this.rootView.getLayoutParams().height = (BehanceSDKBottomSheetShareDialog.this.getResources().getDisplayMetrics().heightPixels + windowInsets.getSystemWindowInsetBottom()) - windowInsets.getSystemWindowInsetTop();
                    return windowInsets;
                }
            });
        }
        return dialogOnCreateDialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(BUNDLE_KEY_SHARE_CONTENT, this.shareContent);
        bundle.putSerializable(BUNDLE_KEY_SHARE_TYPE, this.shareContentType);
    }

    private List<BehanceSDKShareContentAdapterItemDTO> getShareContentItemsList(BehanceSDKShareContentType behanceSDKShareContentType) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        PackageManager packageManager = getActivity().getPackageManager();
        Resources resources = getActivity().getResources();
        if (behanceSDKShareContentType == BehanceSDKShareContentType.IMAGE) {
            BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO = new BehanceSDKShareContentAdapterItemDTO();
            behanceSDKShareContentAdapterItemDTO.setPackageName(BehanceSDKShareContentAdapterItemDTO.DOWNLOAD_IMAGE_KEY);
            behanceSDKShareContentAdapterItemDTO.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_savetodevicce));
            behanceSDKShareContentAdapterItemDTO.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_download_image));
            arrayList.add(behanceSDKShareContentAdapterItemDTO);
        }
        BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO2 = new BehanceSDKShareContentAdapterItemDTO();
        behanceSDKShareContentAdapterItemDTO2.setPackageName(BehanceSDKShareContentAdapterItemDTO.COPY_LINK_SHARING_PACKAGE_NAME);
        behanceSDKShareContentAdapterItemDTO2.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_link));
        behanceSDKShareContentAdapterItemDTO2.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_copy_link_label));
        arrayList.add(behanceSDKShareContentAdapterItemDTO2);
        BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO3 = new BehanceSDKShareContentAdapterItemDTO();
        behanceSDKShareContentAdapterItemDTO3.setPackageName(BehanceSDKShareContentAdapterItemDTO.EMAIL_SHARING_PACKAGE_NAME);
        behanceSDKShareContentAdapterItemDTO3.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_email));
        behanceSDKShareContentAdapterItemDTO3.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_email_label));
        arrayList.add(behanceSDKShareContentAdapterItemDTO3);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(getDefaultShareIntent(), 0);
        if (!listQueryIntentActivities.isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                try {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    ApplicationInfo applicationInfo = activityInfo.applicationInfo;
                    if (applicationInfo != null) {
                        String str = activityInfo.packageName;
                        String str2 = activityInfo.name;
                        if (containsIgnoreCase(str, PACKAGE_NAME_PINTEREST) || containsIgnoreCase(str2, PACKAGE_NAME_PINTEREST)) {
                            if (behanceSDKShareContentType != BehanceSDKShareContentType.COLLECTION && behanceSDKShareContentType != BehanceSDKShareContentType.USER) {
                                BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO4 = new BehanceSDKShareContentAdapterItemDTO();
                                behanceSDKShareContentAdapterItemDTO4.setPackageName(PACKAGE_NAME_PINTEREST);
                                behanceSDKShareContentAdapterItemDTO4.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_pinterest));
                                behanceSDKShareContentAdapterItemDTO4.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_pinterest_label));
                                arrayList.add(behanceSDKShareContentAdapterItemDTO4);
                            }
                        } else if (containsIgnoreCase(str, PACKAGE_NAME_FACEBOOK) || containsIgnoreCase(str2, PACKAGE_NAME_FACEBOOK)) {
                            BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO5 = new BehanceSDKShareContentAdapterItemDTO();
                            behanceSDKShareContentAdapterItemDTO5.setPackageName(PACKAGE_NAME_FACEBOOK);
                            behanceSDKShareContentAdapterItemDTO5.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_facebook));
                            behanceSDKShareContentAdapterItemDTO5.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_facebook_label));
                            arrayList.add(behanceSDKShareContentAdapterItemDTO5);
                        } else if (containsIgnoreCase(str, PACKAGE_NAME_TWITTER) || containsIgnoreCase(str2, PACKAGE_NAME_TWITTER)) {
                            if (!hashSet.contains(str)) {
                                hashSet.add(str);
                                BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO6 = new BehanceSDKShareContentAdapterItemDTO();
                                behanceSDKShareContentAdapterItemDTO6.setPackageName(PACKAGE_NAME_TWITTER);
                                behanceSDKShareContentAdapterItemDTO6.setDisplayIcon(resources.getDrawable(R.drawable.bsdk_share_bottom_sheet_icon_twitter));
                                behanceSDKShareContentAdapterItemDTO6.setDisplayLabel(resources.getString(R.string.bsdk_share_content_dialog_twitter_label));
                                arrayList.add(behanceSDKShareContentAdapterItemDTO6);
                            } else {
                                logger.debug("Ignoring duplicate Twitter activity", new Object[0]);
                            }
                        } else if (!hashSet.contains(applicationInfo.packageName)) {
                            hashSet.add(applicationInfo.packageName);
                            BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO7 = new BehanceSDKShareContentAdapterItemDTO();
                            behanceSDKShareContentAdapterItemDTO7.setPackageName(str);
                            behanceSDKShareContentAdapterItemDTO7.setDisplayLabel(applicationInfo.loadLabel(packageManager).toString());
                            behanceSDKShareContentAdapterItemDTO7.setDisplayIcon(applicationInfo.loadIcon(packageManager));
                            arrayList2.add(behanceSDKShareContentAdapterItemDTO7);
                        } else {
                            logger.debug("Ignoring duplicate Share option [app name - %s] [activity name - %s]", applicationInfo.packageName, str2);
                        }
                    }
                } catch (Resources.NotFoundException e2) {
                    logger.error(e2, "Problem getting label or icon for Sharing", new Object[0]);
                }
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent getDefaultShareIntent() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(MimeTypes.TEXT_PLAIN);
        return intent;
    }

    private boolean containsIgnoreCase(String str, String str2) {
        return StringUtils.containsIgnoreCase(str, str2);
    }

    private void setTitle(TextView textView) {
        int i;
        if (this.shareContentType != null) {
            switch (this.shareContentType) {
                case PROJECT:
                    i = R.string.bsdk_share_content_dialog_title_project;
                    break;
                case IMAGE:
                    i = R.string.bsdk_share_content_dialog_title_image;
                    break;
                case COLLECTION:
                    i = R.string.bsdk_share_content_dialog_title_collection;
                    break;
                case CURATED_GALLERY:
                    i = R.string.bsdk_share_content_dialog_title_gallery;
                    break;
                case USER:
                    i = R.string.bsdk_share_content_dialog_title_user;
                    break;
                case TEAM:
                    i = R.string.bsdk_share_content_dialog_title_team;
                    break;
                default:
                    i = R.string.bsdk_share_content_dialog_title;
                    break;
            }
            textView.setText(getResources().getString(i));
        }
    }

    @Override // com.behance.sdk.ui.adapters.BehanceSDKBottomSheetRecyclerAdapter.Callbacks
    public void share(BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO) {
        if (PACKAGE_NAME_PINTEREST.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            dispatchShareIntent(PACKAGE_NAME_PINTEREST);
            return;
        }
        if (PACKAGE_NAME_FACEBOOK.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            dispatchShareIntent(PACKAGE_NAME_FACEBOOK);
            return;
        }
        if (PACKAGE_NAME_TWITTER.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            dispatchShareIntent(PACKAGE_NAME_TWITTER);
            return;
        }
        if (BehanceSDKShareContentAdapterItemDTO.EMAIL_SHARING_PACKAGE_NAME.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            handleShareUsingEmailBtnClick();
            return;
        }
        if (BehanceSDKShareContentAdapterItemDTO.COPY_LINK_SHARING_PACKAGE_NAME.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            handleCopyLinkBtnClick();
        } else if (BehanceSDKShareContentAdapterItemDTO.DOWNLOAD_IMAGE_KEY.equals(behanceSDKShareContentAdapterItemDTO.getPackageName())) {
            saveImageToDevice();
        } else {
            dispatchShareIntent(behanceSDKShareContentAdapterItemDTO.getPackageName());
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        dismissAllowingStateLoss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void dispatchShareIntent(java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.behance.sdk.ui.dialogs.BehanceSDKBottomSheetShareDialog.dispatchShareIntent(java.lang.String):void");
    }

    private void handleShareUsingEmailBtnClick() {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", "", null));
        intent.putExtra("android.intent.extra.SUBJECT", this.shareContent.getTitle());
        switch (this.shareContentType) {
            case IMAGE:
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_image_email_body, this.shareContent.getLongUrlToShare()));
                break;
            case COLLECTION:
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_collection_email_body, this.shareContent.getLongUrlToShare()));
                break;
            case CURATED_GALLERY:
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_curated_gallery_email_body, this.shareContent.getLongUrlToShare()));
                break;
            case USER:
                intent.putExtra("android.intent.extra.SUBJECT", this.shareContent.getOwnerName());
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_user_email_body, this.shareContent.getOwnerName(), this.shareContent.getLongUrlToShare()));
                break;
            case TEAM:
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_team_email_body, this.shareContent.getTitle(), this.shareContent.getLongUrlToShare()));
                break;
            default:
                intent.putExtra("android.intent.extra.TEXT", getString(R.string.bsdk_share_content_dialog_share_project_email_body, this.shareContent.getLongUrlToShare()));
                break;
        }
        startActivity(Intent.createChooser(intent, getString(R.string.bsdk_share_content_dialog_email_a_link_intent_title)));
        dismissAllowingStateLoss();
    }

    private void handleCopyLinkBtnClick() {
        ((ClipboardManager) getActivity().getSystemService(AdobeStorageSession.AdobeStorageSessionClipboardServiceTag)).setPrimaryClip(ClipData.newPlainText("url", this.shareContent.getLongUrlToShare()));
        Toast.makeText(getActivity(), getString(R.string.bsdk_share_content_dialog_link_copied_msg), 0).show();
        dismissAllowingStateLoss();
    }

    public void saveImageToDevice() {
        if (BehanceSDKPermissionHelper.checkPermissionAndRequest(getActivity(), 4)) {
            BehanceSDKDownloadAndSaveImageAsyncTaskParams behanceSDKDownloadAndSaveImageAsyncTaskParams = new BehanceSDKDownloadAndSaveImageAsyncTaskParams();
            behanceSDKDownloadAndSaveImageAsyncTaskParams.setContext(getActivity());
            behanceSDKDownloadAndSaveImageAsyncTaskParams.setUrl(this.shareContent.getLongUrlToShare());
            new BehanceSDKDownloadAndSaveImageAsyncTask().execute(behanceSDKDownloadAndSaveImageAsyncTaskParams);
            dismissAllowingStateLoss();
        }
    }

    class GetShareItemsTask extends AsyncTask<Void, Void, List<BehanceSDKShareContentAdapterItemDTO>> {
        GetShareItemsCallbacks callbacks;
        PackageManager packageManager;

        GetShareItemsTask(GetShareItemsCallbacks getShareItemsCallbacks, PackageManager packageManager) {
            this.callbacks = getShareItemsCallbacks;
            this.packageManager = packageManager;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<BehanceSDKShareContentAdapterItemDTO> doInBackground(Void... voidArr) {
            ArrayList arrayList = new ArrayList();
            List<ResolveInfo> listQueryIntentActivities = this.packageManager.queryIntentActivities(BehanceSDKBottomSheetShareDialog.this.getDefaultShareIntent(), 0);
            if (!listQueryIntentActivities.isEmpty()) {
                HashSet hashSet = new HashSet();
                hashSet.add(BehanceSDKBottomSheetShareDialog.PACKAGE_NAME_FACEBOOK);
                hashSet.add(BehanceSDKBottomSheetShareDialog.PACKAGE_NAME_TWITTER);
                hashSet.add(BehanceSDKBottomSheetShareDialog.PACKAGE_NAME_PINTEREST);
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    ApplicationInfo applicationInfo = activityInfo.applicationInfo;
                    if (applicationInfo != null) {
                        String str = activityInfo.packageName;
                        if (!hashSet.contains(str)) {
                            BehanceSDKShareContentAdapterItemDTO behanceSDKShareContentAdapterItemDTO = new BehanceSDKShareContentAdapterItemDTO();
                            behanceSDKShareContentAdapterItemDTO.setPackageName(str);
                            behanceSDKShareContentAdapterItemDTO.setDisplayLabel(applicationInfo.loadLabel(this.packageManager).toString());
                            behanceSDKShareContentAdapterItemDTO.setDisplayIcon(applicationInfo.loadIcon(this.packageManager));
                            arrayList.add(behanceSDKShareContentAdapterItemDTO);
                            hashSet.add(str);
                        }
                    }
                }
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<BehanceSDKShareContentAdapterItemDTO> list) {
            if (this.callbacks != null) {
                this.callbacks.onFinish(list);
            }
            super.onPostExecute(list);
        }
    }
}
