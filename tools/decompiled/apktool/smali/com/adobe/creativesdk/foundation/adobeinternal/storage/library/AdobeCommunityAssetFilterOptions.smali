.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;
.super Ljava/lang/Enum;
.source "AdobeCommunityAssetFilterOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionCreator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionDefaults:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionOwner:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionTags:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

.field public static final enum AdobeCommunityAssetFilterOptionTitle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;


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
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionDefaults"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionDefaults:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionTags"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionTags:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionTitle"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionTitle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionCreator"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionCreator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionOwner"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionOwner:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    const-string/jumbo v1, "AdobeCommunityAssetFilterOptionDescription"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionDefaults:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionTags:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionTitle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionCreator:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionOwner:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->AdobeCommunityAssetFilterOptionDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetFilterOptions;

    return-object v0
.end method
