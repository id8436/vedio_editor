.class public Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;
.super Ljava/lang/Object;
.source "BehanceSDKShareContentAdapterItemDTO.java"


# static fields
.field public static COPY_LINK_SHARING_PACKAGE_NAME:Ljava/lang/String;

.field public static DOWNLOAD_IMAGE_KEY:Ljava/lang/String;

.field public static EMAIL_SHARING_PACKAGE_NAME:Ljava/lang/String;

.field public static TUMBLR_SHARING_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private displayIcon:Landroid/graphics/drawable/Drawable;

.field private displayLabel:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "TUMBLR_SHARING_PACKAGE_NAME"

    sput-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->TUMBLR_SHARING_PACKAGE_NAME:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "EMAIL_SHARING_PACKAGE_NAME"

    sput-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->EMAIL_SHARING_PACKAGE_NAME:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "COPY_LINK_SHARING_PACKAGE_NAME"

    sput-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->COPY_LINK_SHARING_PACKAGE_NAME:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "DOWNLOAD_IMAGE_KEY"

    sput-object v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->DOWNLOAD_IMAGE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->displayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->displayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method

.method public setDisplayLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->displayLabel:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->packageName:Ljava/lang/String;

    .line 61
    return-void
.end method
