.class Lcom/adobe/premiereclip/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {}, Lcom/adobe/premiereclip/util/Utilities;->getAdobeIdWrapped()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->access$000(Lcom/adobe/premiereclip/SplashScreenActivity;)V

    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->finish()V

    .line 89
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string/jumbo v1, "ADOBE ID"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    .line 76
    invoke-virtual {v2}, Lcom/adobe/premiereclip/SplashScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isProjectSyncing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->access$100(Lcom/adobe/premiereclip/SplashScreenActivity;)V

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->finish()V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/SplashScreenActivity$1;->this$0:Lcom/adobe/premiereclip/SplashScreenActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/SplashScreenActivity;->access$000(Lcom/adobe/premiereclip/SplashScreenActivity;)V

    goto :goto_1
.end method
