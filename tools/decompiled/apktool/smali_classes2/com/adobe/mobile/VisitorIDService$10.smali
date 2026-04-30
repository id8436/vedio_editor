.class Lcom/adobe/mobile/VisitorIDService$10;
.super Ljava/lang/Object;
.source "VisitorIDService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/mobile/VisitorIDService;

.field final synthetic val$returnValue:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iput-object p2, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/adobe/mobile/VisitorIDService$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mboxMCGVID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mboxAAMB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mboxMCGLH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$10;->val$returnValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$10;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_1
    return-object v2
.end method
