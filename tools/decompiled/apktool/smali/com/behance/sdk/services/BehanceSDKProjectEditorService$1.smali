.class Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BehanceSDKProjectEditorService.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;


# direct methods
.method constructor <init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 159
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onInternetConnectionChanged(Z)V

    .line 160
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 165
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;->this$0:Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onInternetConnectionChanged(Z)V

    .line 166
    return-void
.end method
