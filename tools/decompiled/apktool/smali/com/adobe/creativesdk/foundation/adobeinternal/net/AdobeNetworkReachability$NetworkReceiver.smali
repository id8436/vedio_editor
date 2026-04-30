.class Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdobeNetworkReachability.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "connectivity"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;)Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v3, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->decideNetworkConnectivity(Landroid/net/NetworkInfo;Landroid/net/ConnectivityManager;)V

    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;)Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    if-eq v2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->notifyNetworkChange()V

    .line 181
    :cond_0
    return-void
.end method
