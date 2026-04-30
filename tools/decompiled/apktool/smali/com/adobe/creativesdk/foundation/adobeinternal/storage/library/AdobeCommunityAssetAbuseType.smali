.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;
.super Ljava/lang/Enum;
.source "AdobeCommunityAssetAbuseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeAbuse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeCopyright:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeDefamation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeHate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeNCMEC:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeOther:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypePhishing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypePornography:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeSpam:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeTrademark:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

.field public static final enum AdobeCommunityAssetAbuseTypeVulgar:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;


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
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeAbuse"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeAbuse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeDefamation"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeDefamation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypePornography"

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypePornography:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeCopyright"

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeCopyright:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeTrademark"

    invoke-direct {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeTrademark:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeVulgar"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeVulgar:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeHate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeHate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeNCMEC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeNCMEC:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 52
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeSpam"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeSpam:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypePhishing"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypePhishing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    const-string/jumbo v1, "AdobeCommunityAssetAbuseTypeOther"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeOther:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeAbuse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeDefamation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypePornography:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeCopyright:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeTrademark:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeVulgar:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeHate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeNCMEC:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeSpam:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypePhishing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->AdobeCommunityAssetAbuseTypeOther:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetAbuseType;

    return-object v0
.end method
