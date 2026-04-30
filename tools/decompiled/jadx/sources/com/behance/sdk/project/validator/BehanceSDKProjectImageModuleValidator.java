package com.behance.sdk.project.validator;

import android.content.Context;
import android.widget.Toast;
import com.behance.sdk.R;
import com.behance.sdk.factory.BehanceSDKImageProperties;
import com.behance.sdk.factory.IBehanceSDKImageValidator;
import com.behance.sdk.util.BehanceSDKConstants;
import com.behance.sdk.util.BehanceSDKUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectImageModuleValidator implements IBehanceSDKImageValidator {
    public static final int FACTOR_TO_CONVERT_BYTE_TO_MB = 1048576;

    @Override // com.behance.sdk.factory.IBehanceSDKImageValidator
    public boolean validate(Context context, BehanceSDKImageProperties behanceSDKImageProperties) {
        return imageMatchesRequirements(context, behanceSDKImageProperties);
    }

    private void displayToastMessage(Context context, String str) {
        if (str != null) {
            Toast.makeText(context, str, 1).show();
        }
    }

    private boolean imageMatchesRequirements(Context context, BehanceSDKImageProperties behanceSDKImageProperties) {
        String type = behanceSDKImageProperties.getType();
        String name = behanceSDKImageProperties.getName();
        ArrayList<String> allowedFileExtensionsForProjectImage = BehanceSDKUtils.getAllowedFileExtensionsForProjectImage();
        if (type != null && type.length() > 0) {
            if (allowedFileExtensionsForProjectImage != null && !allowedFileExtensionsForProjectImage.isEmpty() && !allowedFileExtensionsForProjectImage.contains(type)) {
                displayToastMessage(context, context.getString(R.string.bsdk_publish_project_from_cc_invalid_file_type, type, allowedFileExtensionsForProjectImage.toString()));
                return false;
            }
            long size = behanceSDKImageProperties.getSize();
            if (size >= 0 && (BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES <= 0 || size <= BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES)) {
                return true;
            }
            displayToastMessage(context, context.getString(R.string.bsdk_publish_project_from_cc_invalid_image_size, name, BehanceSDKConstants.PROJECT_IMAGE_MODULE_MAX_SIZE_BYTES_STR));
            return false;
        }
        displayToastMessage(context, context.getString(R.string.bsdk_image_selector_view_image_file_type_invalid_msg, name));
        return false;
    }
}
