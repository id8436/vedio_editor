.class Lcom/adobe/sync/SyncController$2;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/sync/SyncController;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$compositeID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iput-object p2, p0, Lcom/adobe/sync/SyncController$2;->val$compositeID:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    .line 589
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Push failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v0, v0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    if-nez v0, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v2, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v2, v0}, Lcom/adobe/sync/SyncController;->access$500(Lcom/adobe/sync/SyncController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v2, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v2}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->currentOpenProjectPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Composite is being edited we will wait for it to complete"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$600(Lcom/adobe/sync/SyncController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unmodified"

    .line 613
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Pushed branch has been successful. Lets update local and Re queue it for deletion."

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->acceptPush()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    :try_start_1
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 626
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "pendingDelete"

    .line 627
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Error in committing changes to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 633
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    :catch_1
    move-exception v0

    .line 619
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Error in accepting pushed branch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 620
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "committedDelete"

    .line 636
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :try_start_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    .line 641
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 642
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v2, "committedDelete"

    .line 643
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v2, "Sync: Project deleted from Local"

    invoke-virtual {v0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v0, v0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$600(Lcom/adobe/sync/SyncController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 649
    :catch_2
    move-exception v0

    .line 650
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Error While deleting project which is marked for deletion from local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 651
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$600(Lcom/adobe/sync/SyncController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    .line 659
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 660
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v2, "committedDelete"

    .line 661
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v0, v0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 665
    :catch_3
    move-exception v0

    .line 666
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Error in removing local storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 667
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Push Failed for composite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 676
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-virtual {v0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 679
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 680
    sget-object v0, Lcom/adobe/sync/SyncController$14;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetErrorCode:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 748
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Error for exceeding quota"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Conflicting changes on server, merge will happen after pull is triggered."

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Asset Error unexpected Response server, retry after random delay"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 722
    :pswitch_3
    invoke-static {}, Lcom/adobe/utility/AndroidMiscUtils;->getFreeDiskspace()J

    move-result-wide v0

    .line 723
    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 724
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->showLowDiskSpaceAlert()V

    .line 727
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0}, Lcom/adobe/sync/SyncController;->stopMonitor()V

    goto/16 :goto_0

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 741
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 753
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 754
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    .line 755
    sget-object v0, Lcom/adobe/sync/SyncController$14;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$dcx$AdobeDCXErrorCode:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 808
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 757
    :pswitch_5
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Error related to already existing Composite, merge conflicts"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$800(Lcom/adobe/sync/SyncController;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$900(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V

    goto/16 :goto_0

    .line 766
    :pswitch_6
    :try_start_4
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Error related to unknown/deleted Composite, we will create a copy and push it to server"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$1000(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 769
    if-nez v0, :cond_8

    .line 770
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Error in creating copy, sending it back to push queue to try again"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/sync/SyncController;->access$900(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 781
    :catch_4
    move-exception v0

    .line 782
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Error in removing composite from local storage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 783
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    .line 776
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 777
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "committedDelete"

    .line 778
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 790
    :pswitch_7
    :try_start_6
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: HREF error, rewriting HREF and adding it to PUSH queue"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetBinding()V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    .line 794
    invoke-virtual {v1}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 795
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_6
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 798
    :catch_5
    move-exception v0

    .line 799
    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in setting href: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 800
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {v1, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :catch_6
    move-exception v0

    .line 802
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 812
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    const-string/jumbo v1, "Sync: Network Error!!!"

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 817
    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 818
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorServiceDisconnected:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_a

    .line 819
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$200(Lcom/adobe/sync/SyncController;)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getService()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->reconnect()V

    .line 825
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-eq v0, v1, :cond_0

    .line 827
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-eq v0, v1, :cond_0

    .line 829
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNetworkFailure:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-eq v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto/16 :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 755
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onSuccess()V
    .locals 9

    .prologue
    .line 559
    invoke-static {}, Lcom/adobe/sync/CompositeRetrySyncManager;->getInstance()Lcom/adobe/sync/CompositeRetrySyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/sync/CompositeRetrySyncManager;->resetRetryCountCompositeSync(Ljava/lang/String;)V

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v6

    .line 562
    if-eqz v6, :cond_1

    .line 563
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v1

    .line 564
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string/jumbo v2, "pendingDelete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "committedDelete"

    .line 566
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 567
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 568
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 569
    invoke-static {v1, v6}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v4

    .line 570
    if-eqz v4, :cond_0

    .line 571
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v3, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v5, v4, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v8, v4, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    .line 572
    invoke-virtual {v3, v5, v8}, Lcom/adobe/sync/SyncController;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    const/4 v5, 0x0

    .line 571
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/sync/ComponentManager;->didUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v0, v1}, Lcom/adobe/sync/SyncController;->access$400(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 582
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Push Successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/sync/SyncController$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/adobe/sync/SyncController$2;->this$0:Lcom/adobe/sync/SyncController;

    invoke-static {v0}, Lcom/adobe/sync/SyncController;->access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 584
    return-void

    .line 566
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
