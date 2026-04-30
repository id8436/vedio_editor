.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;
.super Ljava/lang/Enum;
.source "AdobeCommunityUserFilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

.field public static final enum AdobeCommunityUserFilterTypeAll:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

.field public static final enum AdobeCommunityUserFilterTypeAssets:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

.field public static final enum AdobeCommunityUserFilterTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

.field public static final enum AdobeCommunityUserFilterTypePurchases:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

.field public static final enum AdobeCommunityUserFilterTypeRecommended:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    const-string/jumbo v1, "AdobeCommunityUserFilterTypeAll"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeAll:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    const-string/jumbo v1, "AdobeCommunityUserFilterTypeAssets"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeAssets:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    const-string/jumbo v1, "AdobeCommunityUserFilterTypeLikes"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    const-string/jumbo v1, "AdobeCommunityUserFilterTypePurchases"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypePurchases:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    const-string/jumbo v1, "AdobeCommunityUserFilterTypeRecommended"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeRecommended:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeAll:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeAssets:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeLikes:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypePurchases:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->AdobeCommunityUserFilterTypeRecommended:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserFilterType;

    return-object v0
.end method
