.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;
.super Ljava/lang/Enum;
.source "AdobeCommunityUserAvatarSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

.field public static final enum AdobeCommunityUserAvatarSizeLarge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

.field public static final enum AdobeCommunityUserAvatarSizeMedium:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

.field public static final enum AdobeCommunityUserAvatarSizeSmall:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    const-string/jumbo v1, "AdobeCommunityUserAvatarSizeSmall"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeSmall:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    const-string/jumbo v1, "AdobeCommunityUserAvatarSizeMedium"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeMedium:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    const-string/jumbo v1, "AdobeCommunityUserAvatarSizeLarge"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeLarge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeSmall:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeMedium:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->AdobeCommunityUserAvatarSizeLarge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityUserAvatarSize;

    return-object v0
.end method
