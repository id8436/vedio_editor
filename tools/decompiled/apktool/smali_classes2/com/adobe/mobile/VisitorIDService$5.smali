.class Lcom/adobe/mobile/VisitorIDService$5;
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
    .line 324
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService$5;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iput-object p2, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

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
    .line 324
    invoke-virtual {p0}, Lcom/adobe/mobile/VisitorIDService$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$5;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mcorgid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$5;->val$returnValue:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/MobileConfig;->getMarketingCloudOrganizationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
