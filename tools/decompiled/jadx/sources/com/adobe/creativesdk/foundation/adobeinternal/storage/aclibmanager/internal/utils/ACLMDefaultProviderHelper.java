package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.utils;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACUserAssetType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetOperationsProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.IACLMAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.animation.ACLMAnimationAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.animation.ACLMAnimationAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.brush.ACLMBrushAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.brush.ACLMBrushAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.charStyle.ACLMCharStyleAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.charStyle.ACLMCharStyleAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.color.ACLMColorAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.color.ACLMColorAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.ACLMColorThemeAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.colortheme.ACLMColorThemeAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.image.ACLMImageAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.image.ACLMImageAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.layerStyle.ACLMLayerStyleAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.layerStyle.ACLMLayerStyleAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.light.ACLM3DLightAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.light.ACLM3DLightAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.looks.ACLMLooksAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.looks.ACLMLooksAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.material.ACLM3DMaterialAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.material.ACLM3DMaterialAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.model.ACLM3DModelAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.model.ACLM3DModelAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.pattern.ACLMPatternAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.pattern.ACLMPatternAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.shape.ACLMShapeAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.shape.ACLMShapeAssetsOperationProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.template.ACLMTemplateAssetsListProvider;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.providers.template.ACLMTemplateAssetsOperationProvider;

/* JADX INFO: loaded from: classes.dex */
public class ACLMDefaultProviderHelper {
    public static IACLMAssetsListProvider getDefaultListProvider(ACUserAssetType aCUserAssetType) {
        switch (aCUserAssetType) {
            case kShape:
                return new ACLMShapeAssetsListProvider();
            case kLooks:
                return new ACLMLooksAssetsListProvider();
            case kColorTheme:
                return new ACLMColorThemeAssetsListProvider();
            case kColor:
                return new ACLMColorAssetsListProvider();
            case kBrush:
                return new ACLMBrushAssetsListProvider();
            case kImage:
                return new ACLMImageAssetsListProvider();
            case kCharStyle:
                return new ACLMCharStyleAssetsListProvider();
            case kLayerStyle:
                return new ACLMLayerStyleAssetsListProvider();
            case KPattern:
                return new ACLMPatternAssetsListProvider();
            case kTemplate:
                return new ACLMTemplateAssetsListProvider();
            case k3DMaterial:
                return new ACLM3DMaterialAssetsListProvider();
            case k3DLight:
                return new ACLM3DLightAssetsListProvider();
            case k3DModel:
                return new ACLM3DModelAssetsListProvider();
            case kAnimation:
                return new ACLMAnimationAssetsListProvider();
            default:
                return null;
        }
    }

    public static IACLMAssetOperationsProvider getDefaultAssetOperationProvider(ACUserAssetType aCUserAssetType) {
        switch (aCUserAssetType) {
            case kShape:
                return new ACLMShapeAssetsOperationProvider();
            case kLooks:
                return new ACLMLooksAssetsOperationProvider();
            case kColorTheme:
                return new ACLMColorThemeAssetsOperationProvider();
            case kColor:
                return new ACLMColorAssetsOperationProvider();
            case kBrush:
                return new ACLMBrushAssetsOperationProvider();
            case kImage:
                return new ACLMImageAssetsOperationProvider();
            case kCharStyle:
                return new ACLMCharStyleAssetsOperationProvider();
            case kLayerStyle:
                return new ACLMLayerStyleAssetsOperationProvider();
            case KPattern:
                return new ACLMPatternAssetsOperationProvider();
            case kTemplate:
                return new ACLMTemplateAssetsOperationProvider();
            case k3DMaterial:
                return new ACLM3DMaterialAssetsOperationProvider();
            case k3DLight:
                return new ACLM3DLightAssetsOperationProvider();
            case k3DModel:
                return new ACLM3DModelAssetsOperationProvider();
            case kAnimation:
                return new ACLMAnimationAssetsOperationProvider();
            default:
                return null;
        }
    }
}
