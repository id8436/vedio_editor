.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;
.super Ljava/lang/Object;
.source "AdobeOneUpViewerControllerConfigurations.java"


# static fields
.field private static CSDK_CONFIGURATION_KEY:I

.field private static LOKI_CONFIGURATION_KEY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCsdkConfigurationKey()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->CSDK_CONFIGURATION_KEY:I

    return v0
.end method

.method public static getLokiConfigurationKey()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->LOKI_CONFIGURATION_KEY:I

    return v0
.end method

.method public static setCSDKDefaultConfigurationKey(I)V
    .locals 0

    .prologue
    .line 33
    sput p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->CSDK_CONFIGURATION_KEY:I

    .line 34
    return-void
.end method

.method public static setLokiConfigurationKey(I)V
    .locals 0

    .prologue
    .line 28
    sput p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->LOKI_CONFIGURATION_KEY:I

    .line 29
    return-void
.end method
