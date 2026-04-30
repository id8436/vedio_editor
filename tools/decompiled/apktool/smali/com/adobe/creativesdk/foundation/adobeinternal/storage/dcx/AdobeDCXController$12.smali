.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$compositeHref:Ljava/lang/String;

.field final synthetic val$compositeID:Ljava/lang/String;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$compositeID:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$compositeHref:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1631
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calling controllerRequestsPullOfCompositeWithID for compositeID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$compositeID:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;->val$compositeHref:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerRequestsPullOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
