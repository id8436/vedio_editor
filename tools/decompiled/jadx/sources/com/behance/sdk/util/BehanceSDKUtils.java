package com.behance.sdk.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import c.a.a.a.a.d.d;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFileExtensions;
import com.adobe.creativesdk.foundation.storage.AdobeAssetMimeTypes;
import com.adobe.utility.AndroidMiscUtils;
import com.behance.sdk.R;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.BehanceSDKTagDTO;
import com.behance.sdk.dto.search.BehanceSDKTeamDTO;
import com.behance.sdk.dto.search.BehanceSDKUserDTO;
import com.behance.sdk.project.modules.ImageModule;
import com.google.gdata.data.analytics.Engagement;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class BehanceSDKUtils {
    private static final String EMPTY_STRING = "";
    private static final String IMAGE_JPEG = "image/jpeg";
    private static ArrayList<String> allowedFileExtensionsForProfileImage;
    private static ArrayList<String> allowedFileExtensionsForProjectImages;
    private static ArrayList<String> restrictedCharForTagList;

    @SuppressLint({"SimpleDateFormat"})
    public static File createTempImageFile() throws IOException {
        return File.createTempFile("JPEG_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + d.ROLL_OVER_FILE_NAME_SEPARATOR, AndroidMiscUtils.IMAGE_TYPE, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES));
    }

    public static String combineStringsWithSeperateor(List<String> list, String str) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String str2 : list) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(str2.trim());
        }
        return stringBuffer.toString();
    }

    public static String getCreativeFieldsString(List<BehanceSDKCreativeFieldDTO> list, String str) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO : list) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(behanceSDKCreativeFieldDTO.getName());
        }
        return stringBuffer.toString();
    }

    public static String getCreativeFieldsIdString(List<BehanceSDKCreativeFieldDTO> list, String str) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO : list) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(str);
            }
            stringBuffer.append(behanceSDKCreativeFieldDTO.getId());
        }
        return stringBuffer.toString();
    }

    public static void setContentViewDimensions(Context context, View view) {
        if (!context.getResources().getBoolean(R.bool.bsdk_show_view_full_screen)) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            if (i > 0 && i2 > 0) {
                int i3 = (int) (i * 0.8f);
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = i3;
                    layoutParams.height = -2;
                    view.setLayoutParams(layoutParams);
                }
            }
        }
    }

    public static void setContentViewPaddings(Context context, View view, float f2) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (i > 0 && i2 > 0) {
            int i3 = i - ((int) (i * f2));
            view.setPadding(i3 / 2, view.getPaddingTop(), i3 / 2, view.getPaddingBottom());
        }
    }

    public static void addImageToGallery(Context context, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("_data", str);
        context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    public static String getFileExtension(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (Math.max(str.lastIndexOf(47), str.lastIndexOf(92)) > iLastIndexOf) {
            iLastIndexOf = -1;
        }
        if (iLastIndexOf == -1) {
            return "";
        }
        return str.substring(iLastIndexOf + 1);
    }

    public static ArrayList<String> getAllowedFileExtensionsForProjectImage() {
        if (allowedFileExtensionsForProjectImages == null) {
            allowedFileExtensionsForProjectImages = new ArrayList<>();
            allowedFileExtensionsForProjectImages.add("jpg");
            allowedFileExtensionsForProjectImages.add("JPG");
            allowedFileExtensionsForProjectImages.add("jpeg");
            allowedFileExtensionsForProjectImages.add("JPEG");
            allowedFileExtensionsForProjectImages.add("png");
            allowedFileExtensionsForProjectImages.add("PNG");
            allowedFileExtensionsForProjectImages.add(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF);
            allowedFileExtensionsForProjectImages.add("GIF");
        }
        return allowedFileExtensionsForProjectImages;
    }

    public static ArrayList<String> getAllowedFileExtensionsForProfileImage() {
        if (allowedFileExtensionsForProfileImage == null) {
            allowedFileExtensionsForProfileImage = new ArrayList<>();
            allowedFileExtensionsForProfileImage.add("jpg");
            allowedFileExtensionsForProfileImage.add("JPG");
            allowedFileExtensionsForProfileImage.add("jpeg");
            allowedFileExtensionsForProfileImage.add("JPEG");
            allowedFileExtensionsForProfileImage.add("png");
            allowedFileExtensionsForProfileImage.add("PNG");
            allowedFileExtensionsForProfileImage.add(AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF);
            allowedFileExtensionsForProfileImage.add("GIF");
        }
        return allowedFileExtensionsForProfileImage;
    }

    public static EnumSet<AdobeAssetMimeTypes> getAdobeAssetMimeTypes(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        HashSet hashSet = new HashSet(list.size());
        for (String str : list) {
            if ("jpg".equalsIgnoreCase(str) || "jpeg".equalsIgnoreCase(str)) {
                hashSet.add(AdobeAssetMimeTypes.MIMETYPE_JPEG);
            } else if ("png".equalsIgnoreCase(str)) {
                hashSet.add(AdobeAssetMimeTypes.MIMETYPE_PNG);
            } else if (AdobeAssetFileExtensions.kAdobeFileExtensionTypeGIF.equalsIgnoreCase(str)) {
                hashSet.add(AdobeAssetMimeTypes.MIMETYPE_GIF);
            }
        }
        return EnumSet.copyOf((Collection) hashSet);
    }

    public static String cleanUpTagsString(String str) {
        String strReplaceAll = "";
        for (String str2 : new String[]{"FF0C"}) {
            strReplaceAll = str.replaceAll(Character.toString((char) Integer.parseInt(str2, 16)), BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        }
        return strReplaceAll;
    }

    public static boolean isTagValidForProject(String str) {
        if (str == null || str.length() <= 0 || str.matches("-?\\d+(\\.\\d+)?")) {
            return false;
        }
        if (restrictedCharForTagList == null) {
            restrictedCharForTagList = new ArrayList<>();
            restrictedCharForTagList.add("~");
            restrictedCharForTagList.add("`");
            restrictedCharForTagList.add("!");
            restrictedCharForTagList.add("@");
            restrictedCharForTagList.add("#");
            restrictedCharForTagList.add("$");
            restrictedCharForTagList.add("%");
            restrictedCharForTagList.add("^");
            restrictedCharForTagList.add("&");
            restrictedCharForTagList.add("*");
            restrictedCharForTagList.add("(");
            restrictedCharForTagList.add(")");
            restrictedCharForTagList.add("-");
            restrictedCharForTagList.add("+");
            restrictedCharForTagList.add(Engagement.Comparison.EQ);
            restrictedCharForTagList.add("[");
            restrictedCharForTagList.add("]");
            restrictedCharForTagList.add("{");
            restrictedCharForTagList.add("}");
            restrictedCharForTagList.add(BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR);
            restrictedCharForTagList.add("\\");
            restrictedCharForTagList.add(";");
            restrictedCharForTagList.add(":");
            restrictedCharForTagList.add("\"");
            restrictedCharForTagList.add("'");
            restrictedCharForTagList.add(Engagement.Comparison.LT);
            restrictedCharForTagList.add(Engagement.Comparison.GT);
            restrictedCharForTagList.add(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
            restrictedCharForTagList.add(".");
            restrictedCharForTagList.add("?");
            restrictedCharForTagList.add(URIUtil.SLASH);
        }
        Iterator<String> it = restrictedCharForTagList.iterator();
        while (it.hasNext()) {
            if (str.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static BehanceSDKPublishImageValidationResult validateImageForProject(File file) {
        return validateImageForProject(new ImageModule(file));
    }

    public static BehanceSDKPublishImageValidationResult validateImageForProject(ImageModule imageModule) {
        File file;
        if (imageModule != null && (file = imageModule.getFile()) != null && file.exists() && file.isFile()) {
            String fileExtension = getFileExtension(file.getName());
            if (fileExtension != null && fileExtension.length() > 0) {
                ArrayList<String> allowedFileExtensionsForProjectImage = getAllowedFileExtensionsForProjectImage();
                if (allowedFileExtensionsForProjectImage != null && !allowedFileExtensionsForProjectImage.isEmpty() && !allowedFileExtensionsForProjectImage.contains(fileExtension)) {
                    return BehanceSDKPublishImageValidationResult.INVALID_FILE_TYPE;
                }
                long sizeInBytes = imageModule.getSizeInBytes();
                if (sizeInBytes <= 0 || sizeInBytes > BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES) {
                    return BehanceSDKPublishImageValidationResult.INVALID_SIZE;
                }
                return BehanceSDKPublishImageValidationResult.VALID;
            }
            return BehanceSDKPublishImageValidationResult.INVALID_FILE_TYPE;
        }
        return BehanceSDKPublishImageValidationResult.INVALID;
    }

    public static void deleteRecursive(File file) {
        if (file != null && file.exists()) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    deleteRecursive(file2);
                }
            }
            file.delete();
        }
    }

    public static boolean isBlank(CharSequence charSequence) {
        if (charSequence == null) {
            return true;
        }
        for (int i = 0; i < charSequence.length(); i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static int getSoftButtonsBarSizePort(Activity activity) {
        if (Build.VERSION.SDK_INT < 17) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        int i2 = displayMetrics.heightPixels;
        if (i2 > i) {
            return i2 - i;
        }
        return 0;
    }

    public static boolean getHasTranslucentNav(Activity activity) {
        return getSoftButtonsBarSizePort(activity) > 0 && activity.getResources().getBoolean(R.bool.bsdk_transparentNavBar);
    }

    public static int getTranslucentNavHeight(Activity activity) {
        if (getHasTranslucentNav(activity)) {
            return activity.getResources().getDimensionPixelSize(R.dimen.bsdk_nav_bar_spacer);
        }
        return 0;
    }

    public static boolean shouldHideStatusBarOnScroll() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static String getPipeDelineatedIds(List<?> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            sb.append(getIdFromOb(it.next()));
            sb.append(BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR);
        }
        return sb.substring(0, sb.length() - 1);
    }

    private static String getIdFromOb(Object obj) {
        if (obj instanceof BehanceSDKUserDTO) {
            return String.valueOf(((BehanceSDKUserDTO) obj).getId());
        }
        if (obj instanceof BehanceSDKTeamDTO) {
            return String.valueOf(((BehanceSDKTeamDTO) obj).getId());
        }
        if (obj instanceof BehanceSDKTagDTO) {
            return String.valueOf(((BehanceSDKTagDTO) obj).getId());
        }
        if (obj instanceof BehanceSDKCreativeFieldDTO) {
            return ((BehanceSDKCreativeFieldDTO) obj).getId();
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        return "";
    }

    public static String toCommaSeparatedString(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(", ");
        }
        return sb.substring(0, sb.length() - 2);
    }

    public static BehanceSDKTagDTO getBehanceMobileTool(Resources resources) {
        BehanceSDKTagDTO behanceSDKTagDTO = new BehanceSDKTagDTO();
        behanceSDKTagDTO.setApproved(true);
        behanceSDKTagDTO.setCategory("9");
        behanceSDKTagDTO.setCategoryId(9);
        behanceSDKTagDTO.setCategoryLabel(resources.getString(R.string.bsdk_project_editor_tag_behance_mobile_category));
        behanceSDKTagDTO.setId(484032015L);
        behanceSDKTagDTO.setTitle(resources.getString(R.string.bsdk_project_editor_tag_behance_mobile_title));
        behanceSDKTagDTO.setUrl("/search?tools=484032015");
        return behanceSDKTagDTO;
    }
}
