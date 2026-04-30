.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;
.super Ljava/lang/Enum;
.source "AdobeCommunityAssetSortType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeAlphabetical:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeAlphabeticalAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeAlphabeticalDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeDate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeDateAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeDateDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeFeatured:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypePopular:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeRelevance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

.field public static final enum AdobeCommunityAssetSortTypeViews:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;


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
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeFeatured"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeFeatured:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeDate"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeDateAscending"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDateAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeDateDescending"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDateDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypePopular"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypePopular:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeAlphabetical"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabetical:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeAlphabeticalAscending"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabeticalAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeAlphabeticalDescending"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabeticalDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 52
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeRelevance"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeRelevance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeViews"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeViews:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    const-string/jumbo v1, "AdobeCommunityAssetSortTypeLikes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeFeatured:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDateAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeDateDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypePopular:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabetical:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabeticalAscending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeAlphabeticalDescending:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeRelevance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeViews:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->AdobeCommunityAssetSortTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetSortType;

    return-object v0
.end method
