.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$7;
.super Ljava/lang/Object;
.source "AssetViewFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "unreadCount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;I)V

    .line 714
    return-void
.end method
