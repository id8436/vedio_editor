.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;
.super Ljava/lang/Object;
.source "AdobePSDLayerNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static blendModes:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;


# instance fields
.field protected node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

.field private type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->$assertionsDisabled:Z

    .line 53
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v3, v0, v2

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeDissolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeDarken:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeMultiply:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeColorBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLinearBurn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeDarkerColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLighten:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeScreen:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeColorDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLinearDodge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLighterColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeOverlay:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeSoftLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeHardLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeVividLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLinearLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModePinLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeHardMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeDifference:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeExclusion:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeSubtract:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeDivide:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeHue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeSaturation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModeLuminosity:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->AdobePSDCompositeLayerBlendOptionsModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->blendModes:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto/16 :goto_0
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    const-string/jumbo v1, "psd#type"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "layerSection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 106
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v1, "contentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 101
    :cond_2
    const-string/jumbo v1, "adjustmentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeAdjustment:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 104
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->createManifestNodeWithName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->setAdobePSDLayerNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 129
    return-void
.end method

.method static getBlendModes()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->blendModes:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    return-object v0
.end method

.method private getIndexOfBlendMode([Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 224
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 227
    :goto_1
    return-object v0

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private setAdobePSDLayerNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    const-string/jumbo v1, "psd#type"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "layerSection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string/jumbo v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 117
    :cond_1
    const-string/jumbo v1, "contentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v1, "adjustmentLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeAdjustment:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0

    .line 122
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    goto :goto_0
.end method


# virtual methods
.method createManifestNodeWithName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 238
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 260
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :pswitch_0
    const-string/jumbo v0, "layerSection"

    const-string/jumbo v2, "psd#type"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-object v1

    .line 245
    :pswitch_1
    const-string/jumbo v0, "layer"

    const-string/jumbo v2, "psd#type"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_2
    const-string/jumbo v0, "contentLayer"

    const-string/jumbo v2, "psd#type"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    const-string/jumbo v2, "red"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v2, "blue"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v2, "green"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 255
    const-string/jumbo v3, "class"

    const-string/jumbo v4, "solidColorLayer"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v3, "color"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v0, "psd#properties"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBlendMode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;
    .locals 4

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#blendOptions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    .line 217
    :goto_1
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.getBlendMode"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 213
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->blendModes:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;

    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getIndexOfBlendMode([Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDCompositeLayerBlendOptionsMode;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeNormal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModePassThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->value()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 215
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->AdobePSDBlendModeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;->getEnumForIndex(I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDBlendMode;

    move-result-object v0

    goto :goto_1
.end method

.method public getBlendOpacity()F
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#blendOptions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "opacity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    if-nez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_1
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.getBlendOpacity"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1
.end method

.method public getBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "psd#bounds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDLayerNode.getBounds"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    goto :goto_0
.end method

.method getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getLayerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFillColor()Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 400
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#properties"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 405
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-eq v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 412
    :goto_0
    return-object v0

    .line 408
    :cond_1
    const-string/jumbo v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRgbColorFromPSDColorDict(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDRGBColor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.getFillColor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 412
    goto :goto_0
.end method

.method public getLayerId()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "psd#layerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDLayerNode.getLayerId"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayerIndex()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getAbsoluteIndex()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    return-object v0
.end method

.method public getPixelLayerBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 3

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "psd#pixelLayer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "psd#bounds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDLayerNode.getPixelLayerBounds"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    goto :goto_0
.end method

.method public getPixelMaskBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "psd#bounds"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getRectFromPSDBounds(Ljava/lang/Object;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDLayerNode.getPixelMaskBounds"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    goto :goto_0
.end method

.method public getPixelMaskDensity()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 368
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "density"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.getPixelMaskDensity"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPixelMaskFeather()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 384
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "feather"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.getPixelMaskFeather"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    return-object v0
.end method

.method public hasPixelMask()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.hasPixelMask"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPixelMaskEnabled()Z
    .locals 4

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_1
    return v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.isPixelMaskEnabled"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public isPixelMaskLinked()Z
    .locals 3

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "linked"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_1
    return v0

    .line 351
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 157
    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "psd#visible"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDLayerNode.isVisible"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->type:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 186
    return-void
.end method
