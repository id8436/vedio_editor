.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;
.super Ljava/lang/Enum;
.source "AdobePSDLayerNodeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

.field public static final enum AdobePSDLayerNodeTypeAdjustment:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

.field public static final enum AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

.field public static final enum AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

.field public static final enum AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

.field public static final enum AdobePSDLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    const-string/jumbo v1, "AdobePSDLayerNodeTypeUnknown"

    invoke-direct {v0, v1, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    const-string/jumbo v1, "AdobePSDLayerNodeTypeRGBPixels"

    invoke-direct {v0, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    const-string/jumbo v1, "AdobePSDLayerNodeTypeSolidColor"

    invoke-direct {v0, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    const-string/jumbo v1, "AdobePSDLayerNodeTypeGroup"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    const-string/jumbo v1, "AdobePSDLayerNodeTypeAdjustment"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeAdjustment:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeUnknown:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeAdjustment:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->value:I

    return v0
.end method
