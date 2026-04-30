.class public Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
.super Ljava/lang/Object;
.source "BehanceSDKImageSelectorOptions.java"


# static fields
.field public static UNLIMITED_NUM_OF_IMAGES:I


# instance fields
.field private allowedFileExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ccAssetBrowserDisabled:Z

.field private imageValidatorType:Ljava/lang/String;

.field private maxImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

.field private maxImageSizeInBytes:J

.field private maxNumberOfImages:I

.field private minImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

.field private minImageSizeInBytes:J

.field private prohibitedFileExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showImageSelectionSources:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->showImageSelectionSources:Z

    .line 36
    iput-wide v2, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->minImageSizeInBytes:J

    .line 37
    iput-wide v2, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxImageSizeInBytes:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->ccAssetBrowserDisabled:Z

    return-void
.end method

.method public static getSingleImageSelectionOptions()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {v0, v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getSingleImageSelectionOptions(Lcom/behance/sdk/BehanceSDKImageDimensions;Lcom/behance/sdk/BehanceSDKImageDimensions;)Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleImageSelectionOptions(Lcom/behance/sdk/BehanceSDKImageDimensions;Lcom/behance/sdk/BehanceSDKImageDimensions;)Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;-><init>()V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxNumberOfImages(I)V

    .line 59
    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMinImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V

    .line 61
    return-object v0
.end method

.method public static getUnlimitedImageSelectionOptions()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {v0, v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getUnlimitedImageSelectionOptions(Lcom/behance/sdk/BehanceSDKImageDimensions;Lcom/behance/sdk/BehanceSDKImageDimensions;)Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getUnlimitedImageSelectionOptions(Lcom/behance/sdk/BehanceSDKImageDimensions;Lcom/behance/sdk/BehanceSDKImageDimensions;)Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;-><init>()V

    .line 77
    sget v1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxNumberOfImages(I)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMinImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V

    .line 80
    return-object v0
.end method

.method public static getUnlimitedImageSelectionOptionsNoImageSource()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {v0, v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getUnlimitedImageSelectionOptions(Lcom/behance/sdk/BehanceSDKImageDimensions;Lcom/behance/sdk/BehanceSDKImageDimensions;)Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->hideImageSelectionSources()V

    .line 71
    return-object v0
.end method


# virtual methods
.method public addAllowedFileExtension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->allowedFileExtensions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->allowedFileExtensions:Ljava/util/ArrayList;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->allowedFileExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    return-void
.end method

.method public addProhibitedFileExtension(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->prohibitedFileExtensions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->prohibitedFileExtensions:Ljava/util/ArrayList;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->prohibitedFileExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-void
.end method

.method public getAllowedFileExtensions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->allowedFileExtensions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageValidatorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->imageValidatorType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxImageDimensions()Lcom/behance/sdk/BehanceSDKImageDimensions;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

    return-object v0
.end method

.method public getMaxImageSizeInBytes()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxImageSizeInBytes:J

    return-wide v0
.end method

.method public getMaxNumberOfImages()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxNumberOfImages:I

    return v0
.end method

.method public getMinImageDimensions()Lcom/behance/sdk/BehanceSDKImageDimensions;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->minImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

    return-object v0
.end method

.method public getMinImageSizeInBytes()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->minImageSizeInBytes:J

    return-wide v0
.end method

.method public getProhibitedFileExtensions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->prohibitedFileExtensions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideImageSelectionSources()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->showImageSelectionSources:Z

    .line 116
    return-void
.end method

.method public isCCAssetBrowserDisabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->ccAssetBrowserDisabled:Z

    return v0
.end method

.method public isShowImageImageSelectionSources()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->showImageSelectionSources:Z

    return v0
.end method

.method public setAllowedFileExtensions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->allowedFileExtensions:Ljava/util/ArrayList;

    .line 140
    return-void
.end method

.method public setCCAssetBrowserDisabled(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->ccAssetBrowserDisabled:Z

    .line 170
    return-void
.end method

.method public setImageValidatorType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->imageValidatorType:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMaxImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

    .line 108
    return-void
.end method

.method public setMaxImageSizeInBytes(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxImageSizeInBytes:J

    .line 132
    return-void
.end method

.method public setMaxNumberOfImages(I)V
    .locals 0

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    sget p1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    .line 91
    :cond_0
    iput p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->maxNumberOfImages:I

    .line 92
    return-void
.end method

.method public setMinImageDimensions(Lcom/behance/sdk/BehanceSDKImageDimensions;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->minImageDimensions:Lcom/behance/sdk/BehanceSDKImageDimensions;

    .line 100
    return-void
.end method

.method public setMinImageSizeInBytes(J)V
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->minImageSizeInBytes:J

    .line 124
    return-void
.end method

.method public setProhibitedFileExtensions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->prohibitedFileExtensions:Ljava/util/ArrayList;

    .line 157
    return-void
.end method
