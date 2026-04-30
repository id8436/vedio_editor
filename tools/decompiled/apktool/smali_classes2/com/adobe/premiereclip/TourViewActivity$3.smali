.class Lcom/adobe/premiereclip/TourViewActivity$3;
.super Ljava/lang/Object;
.source "TourViewActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/TourViewActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/TourViewActivity;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/TourViewActivity$3;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;

    move-result-object v1

    .line 295
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getAdobeId()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    .line 301
    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 305
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    const-class v2, Lcom/adobe/creativeapps/settings/activity/CloudPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const-string/jumbo v1, "firstLogin"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/TourViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasLoggedInOnce_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/ClipPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasLoggedInOnce_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 313
    invoke-virtual {v1, v6}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    .line 318
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setRefreshCloud(Z)V

    .line 319
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    .line 320
    invoke-virtual {v1}, Lcom/adobe/premiereclip/TourViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$100(Lcom/adobe/premiereclip/TourViewActivity;)V

    goto :goto_0

    .line 315
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->setFirstLogin(Z)V

    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$100(Lcom/adobe/premiereclip/TourViewActivity;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/TourViewActivity$3;->this$0:Lcom/adobe/premiereclip/TourViewActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/TourViewActivity;->access$100(Lcom/adobe/premiereclip/TourViewActivity;)V

    goto :goto_0
.end method
