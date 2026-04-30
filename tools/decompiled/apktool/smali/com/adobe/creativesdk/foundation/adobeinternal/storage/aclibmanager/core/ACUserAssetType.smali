.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;
.super Ljava/lang/Enum;
.source "ACUserAssetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum KPattern:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum k3DLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum k3DMaterial:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum k3DModel:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kAnimation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kBrush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kCharStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kColorTheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kImage:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kLayerStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kLooks:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kShape:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

.field public static final enum kTemplate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kColor"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 15
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kColorTheme"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColorTheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 16
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kShape"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kShape:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kBrush"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kBrush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 18
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kLooks"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLooks:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 19
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kImage"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kImage:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kCharStyle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kCharStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 21
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kLayerStyle"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLayerStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "KPattern"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->KPattern:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kTemplate"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kTemplate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "k3DMaterial"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DMaterial:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "k3DLight"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "k3DModel"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DModel:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    const-string/jumbo v1, "kAnimation"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kAnimation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 12
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColorTheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kShape:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kBrush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLooks:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kImage:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kCharStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLayerStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->KPattern:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kTemplate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DMaterial:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DModel:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kAnimation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    return-object v0
.end method
