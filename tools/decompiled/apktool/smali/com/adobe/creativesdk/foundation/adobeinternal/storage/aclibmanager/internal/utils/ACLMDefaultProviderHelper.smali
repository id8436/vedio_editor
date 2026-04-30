.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLMDefaultProviderHelper;
.super Ljava/lang/Object;
.source "ACLMDefaultProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultAssetOperationProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLMDefaultProviderHelper$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$core$ACUserAssetType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 137
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/shape/ACLMShapeAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/shape/ACLMShapeAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 97
    :pswitch_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 100
    :pswitch_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 103
    :pswitch_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 106
    :pswitch_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 109
    :pswitch_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 112
    :pswitch_6
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 115
    :pswitch_7
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 118
    :pswitch_8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 121
    :pswitch_9
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 124
    :pswitch_a
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 127
    :pswitch_b
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 130
    :pswitch_c
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 133
    :pswitch_d
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsOperationProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsOperationProvider;-><init>()V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getDefaultListProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLMDefaultProviderHelper$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$core$ACUserAssetType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 87
    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/shape/ACLMShapeAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/shape/ACLMShapeAssetsListProvider;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;-><init>()V

    goto :goto_0

    .line 53
    :pswitch_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_6
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_7
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;-><init>()V

    goto :goto_0

    .line 71
    :pswitch_9
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;-><init>()V

    goto :goto_0

    .line 74
    :pswitch_a
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;-><init>()V

    goto :goto_0

    .line 77
    :pswitch_b
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;-><init>()V

    goto :goto_0

    .line 80
    :pswitch_c
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_d
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;-><init>()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
