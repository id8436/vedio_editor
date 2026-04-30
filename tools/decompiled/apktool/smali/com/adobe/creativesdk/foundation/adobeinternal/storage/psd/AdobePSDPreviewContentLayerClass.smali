.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;
.super Ljava/lang/Enum;
.source "AdobePSDPreviewContentLayerClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

.field public static final enum AdobePSDPreviewContentLayerClassGradientFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

.field public static final enum AdobePSDPreviewContentLayerClassPatternFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

.field public static final enum AdobePSDPreviewContentLayerClassSolidColorFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

.field public static final enum AdobePSDPreviewContentLayerClassUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    const-string/jumbo v1, "AdobePSDPreviewContentLayerClassSolidColorFill"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassSolidColorFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    const-string/jumbo v1, "AdobePSDPreviewContentLayerClassGradientFill"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassGradientFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    const-string/jumbo v1, "AdobePSDPreviewContentLayerClassPatternFill"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassPatternFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    const-string/jumbo v1, "AdobePSDPreviewContentLayerClassUnknown"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassSolidColorFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassGradientFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassPatternFill:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->AdobePSDPreviewContentLayerClassUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDPreviewContentLayerClass;

    return-object v0
.end method
