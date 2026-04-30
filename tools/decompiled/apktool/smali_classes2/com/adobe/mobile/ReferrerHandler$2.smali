.class final Lcom/adobe/mobile/ReferrerHandler$2;
.super Ljava/lang/Object;
.source "ReferrerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$contextData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/adobe/mobile/ReferrerHandler$2;->val$contextData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/mobile/ReferrerHandler$2;->val$contextData:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/adobe/mobile/Lifecycle;->updateContextData(Ljava/util/HashMap;)V

    .line 183
    return-void
.end method
