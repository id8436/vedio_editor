.class Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;
.super Ljava/lang/Object;
.source "SharingIntentsOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 83
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Email"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Email"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareIntentsClosed()V

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$200(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->access$100(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    add-int/lit16 v2, p3, 0x2710

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void

    .line 90
    :cond_1
    const-string/jumbo v1, "twitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Facebook"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Facebook"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Message"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Message"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_4
    const-string/jumbo v1, "android.gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Email"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExportForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Email"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoViewForDestination(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
