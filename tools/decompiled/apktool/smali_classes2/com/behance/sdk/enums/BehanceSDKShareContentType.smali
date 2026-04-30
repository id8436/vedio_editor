.class public final enum Lcom/behance/sdk/enums/BehanceSDKShareContentType;
.super Ljava/lang/Enum;
.source "BehanceSDKShareContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKShareContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum COLLECTION:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum CURATED_GALLERY:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum IMAGE:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum PROJECT:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum TEAM:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

.field public static final enum USER:Lcom/behance/sdk/enums/BehanceSDKShareContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "PROJECT"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->PROJECT:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v4}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->USER:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "COLLECTION"

    invoke-direct {v0, v1, v5}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->COLLECTION:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "CURATED_GALLERY"

    invoke-direct {v0, v1, v6}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->CURATED_GALLERY:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v7}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    const-string/jumbo v1, "TEAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->TEAM:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->PROJECT:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->USER:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->COLLECTION:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->CURATED_GALLERY:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->TEAM:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKShareContentType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKShareContentType;
    .locals 5

    .prologue
    .line 10
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->values()[Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 12
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    :goto_1
    return-object v0

    .line 11
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->PROJECT:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKShareContentType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKShareContentType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKShareContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    return-object v0
.end method
