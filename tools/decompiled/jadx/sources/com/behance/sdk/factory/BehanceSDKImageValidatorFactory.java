package com.behance.sdk.factory;

import com.behance.sdk.project.validator.BehanceSDKProjectImageModuleValidator;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKImageValidatorFactory {
    public static final String PUBLISH_PROJECT_IMAGE_VALIDATOR = "PUBLISH_PROJECT_IMAGE_VALIDATOR";

    public static BehanceSDKImageValidatorFactory getInstance() {
        return new BehanceSDKImageValidatorFactory();
    }

    public IBehanceSDKImageValidator getImageValidator(String str) {
        if (PUBLISH_PROJECT_IMAGE_VALIDATOR.equals(str)) {
            return new BehanceSDKProjectImageModuleValidator();
        }
        return null;
    }
}
