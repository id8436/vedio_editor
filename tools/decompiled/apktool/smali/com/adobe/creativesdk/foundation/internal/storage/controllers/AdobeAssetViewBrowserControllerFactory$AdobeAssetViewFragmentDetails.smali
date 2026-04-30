.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;
.super Ljava/lang/Object;
.source "AdobeAssetViewBrowserControllerFactory.java"


# instance fields
.field private argumentsBundle:Landroid/os/Bundle;

.field private classTag:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->classTag:Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method public getArgumentsBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->argumentsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->classTag:Ljava/lang/Class;

    return-object v0
.end method

.method public setArgumentsBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->argumentsBundle:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method public setClassTag(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->classTag:Ljava/lang/Class;

    .line 66
    return-void
.end method
