.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;
.super Ljava/lang/Enum;
.source "AdobePSDPreviewLayerNodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeAdjustmentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeBackgroundLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeLayerGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypePixelsLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeTextLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

.field public static final enum AdobePSDPreviewLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypePixelsLayer"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypePixelsLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeTextLayer"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeTextLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeLayerGroup"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeLayerGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeContentLayer"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeBackgroundLayer"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeBackgroundLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeAdjustmentLayer"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeAdjustmentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    const-string/jumbo v1, "AdobePSDPreviewLayerNodeTypeUnknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypePixelsLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeTextLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeLayerGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeContentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeBackgroundLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeAdjustmentLayer:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->AdobePSDPreviewLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewLayerNodeType;

    return-object v0
.end method
