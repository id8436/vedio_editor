.class Lcom/adobe/utility/analytics/TrackingUtility$2;
.super Ljava/lang/Object;
.source "TrackingUtility.java"

# interfaces
.implements Lcom/adobe/mobile/Target$TargetCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/mobile/Target$TargetCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/analytics/TrackingUtility;

.field final synthetic val$callback:Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;

.field final synthetic val$parameters:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/adobe/utility/analytics/TrackingUtility;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/adobe/utility/analytics/TrackingUtility$2;->this$0:Lcom/adobe/utility/analytics/TrackingUtility;

    iput-object p2, p0, Lcom/adobe/utility/analytics/TrackingUtility$2;->val$callback:Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;

    iput-object p3, p0, Lcom/adobe/utility/analytics/TrackingUtility$2;->val$parameters:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility$2;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility$2;->val$callback:Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;

    iget-object v1, p0, Lcom/adobe/utility/analytics/TrackingUtility$2;->val$parameters:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1}, Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;->onCall(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 380
    return-void
.end method
