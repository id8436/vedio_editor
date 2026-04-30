.class public Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;
.super Ljava/lang/Object;
.source "BehanceSDKProjectImageModuleValidator.java"

# interfaces
.implements Lcom/behance/sdk/factory/IBehanceSDKImageValidator;


# static fields
.field public static final FACTOR_TO_CONVERT_BYTE_TO_MB:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p2, :cond_0

    .line 29
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    :cond_0
    return-void
.end method

.method private imageMatchesRequirements(Landroid/content/Context;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->getType()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->getName()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->getAllowedFileExtensionsForProjectImage()Ljava/util/ArrayList;

    move-result-object v4

    .line 38
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 39
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 40
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 41
    sget v3, Lcom/behance/sdk/R$string;->bsdk_publish_project_from_cc_invalid_file_type:I

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 41
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-direct {p0, p1, v1}, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;->displayToastMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :goto_0
    return v0

    .line 48
    :cond_0
    sget v2, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_file_type_invalid_msg:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;->displayToastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/behance/sdk/factory/BehanceSDKImageProperties;->getSize()J

    move-result-wide v4

    .line 55
    const-wide/32 v6, 0x800000

    .line 56
    cmp-long v2, v4, v10

    if-ltz v2, :cond_2

    cmp-long v2, v6, v10

    if-lez v2, :cond_3

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 58
    :cond_2
    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_from_cc_invalid_image_size:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string/jumbo v3, "8 MB"

    aput-object v3, v4, v1

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;->displayToastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public validate(Landroid/content/Context;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;->imageMatchesRequirements(Landroid/content/Context;Lcom/behance/sdk/factory/BehanceSDKImageProperties;)Z

    move-result v0

    return v0
.end method
