.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
.super Ljava/lang/Enum;
.source "AdobeAssetDataSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceArchived:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceSharedFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceSharedProject:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field public static final enum AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceFiles"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceLibrary"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 38
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourcePhotos"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourcePSMix"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 48
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourcePSFix"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 53
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceCompositions"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceDraw"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceSketches"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 68
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceMobileCreations"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceSharedFile"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 78
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceSharedProject"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedProject:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 83
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceOffline"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 88
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    const-string/jumbo v1, "AdobeAssetDataSourceArchived"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceArchived:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 23
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedProject:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceArchived:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    return-object v0
.end method
