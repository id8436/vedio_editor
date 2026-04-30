.class public final enum Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;
.super Ljava/lang/Enum;
.source "BehanceSDKCuratedGalleryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

.field public static final enum ORGANIZATION:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

.field public static final enum SERVED_SITE:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    const-string/jumbo v1, "ORGANIZATION"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->ORGANIZATION:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    new-instance v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    const-string/jumbo v1, "SERVED_SITE"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->SERVED_SITE:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->ORGANIZATION:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->SERVED_SITE:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;
    .locals 5

    .prologue
    .line 25
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 26
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->values()[Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    move-result-object v2

    .line 27
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 28
    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    :goto_1
    return-object v0

    .line 27
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->$VALUES:[Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    invoke-virtual {v0}, [Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    return-object v0
.end method
