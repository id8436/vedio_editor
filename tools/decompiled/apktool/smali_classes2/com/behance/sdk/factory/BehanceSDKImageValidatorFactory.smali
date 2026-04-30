.class public Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;
.super Ljava/lang/Object;
.source "BehanceSDKImageValidatorFactory.java"


# static fields
.field public static final PUBLISH_PROJECT_IMAGE_VALIDATOR:Ljava/lang/String; = "PUBLISH_PROJECT_IMAGE_VALIDATOR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;

    invoke-direct {v0}, Lcom/behance/sdk/factory/BehanceSDKImageValidatorFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getImageValidator(Ljava/lang/String;)Lcom/behance/sdk/factory/IBehanceSDKImageValidator;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;

    invoke-direct {v0}, Lcom/behance/sdk/project/validator/BehanceSDKProjectImageModuleValidator;-><init>()V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
