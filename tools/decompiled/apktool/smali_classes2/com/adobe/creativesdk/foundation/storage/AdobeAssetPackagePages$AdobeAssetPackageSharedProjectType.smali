.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;
.super Ljava/lang/Enum;
.source "AdobeAssetPackagePages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

.field public static final enum AdobeAssetPackageSharedProjectTypeMaxDemo:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

.field public static final enum AdobeAssetPackageSharedProjectTypeMultiPage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

.field public static final enum AdobeAssetPackageSharedProjectTypeSinglePage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    const-string/jumbo v1, "AdobeAssetPackageSharedProjectTypeSinglePage"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeSinglePage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    const-string/jumbo v1, "AdobeAssetPackageSharedProjectTypeMultiPage"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMultiPage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    const-string/jumbo v1, "AdobeAssetPackageSharedProjectTypeMaxDemo"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMaxDemo:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeSinglePage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMultiPage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMaxDemo:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    return-object v0
.end method
