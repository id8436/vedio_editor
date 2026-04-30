.class Lcom/adobe/premiereclip/notification/NotificationHelper$1;
.super Ljava/lang/Object;
.source "NotificationHelper.java"

# interfaces
.implements Lcom/adobe/premiereclip/analytics/ABTestNotification$NotificationFeedABResult;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/notification/NotificationHelper;

.field final synthetic val$mediaModels:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/notification/NotificationHelper;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper$1;->this$0:Lcom/adobe/premiereclip/notification/NotificationHelper;

    iput-object p2, p0, Lcom/adobe/premiereclip/notification/NotificationHelper$1;->val$mediaModels:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onABGroupDecided(ZZ)V
    .locals 3

    .prologue
    .line 209
    const-string/jumbo v0, "ClipService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got preview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper$1;->this$0:Lcom/adobe/premiereclip/notification/NotificationHelper;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper$1;->val$mediaModels:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/adobe/premiereclip/notification/NotificationHelper;->access$000(Lcom/adobe/premiereclip/notification/NotificationHelper;Ljava/util/ArrayList;Z)V

    .line 211
    return-void
.end method
