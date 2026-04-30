.class Lcom/adobe/premiereclip/sharing/CCVPublish$1;
.super Ljava/lang/Object;
.source "CCVPublish.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

.field final synthetic val$posterPath:Ljava/lang/String;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->val$videoUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->val$posterPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$000(Lcom/adobe/premiereclip/sharing/CCVPublish;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$102(Lcom/adobe/premiereclip/sharing/CCVPublish;D)D

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$200(Lcom/adobe/premiereclip/sharing/CCVPublish;)V

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->val$videoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$300(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$400(Lcom/adobe/premiereclip/sharing/CCVPublish;)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->val$posterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->val$posterPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$500(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;)Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$602(Lcom/adobe/premiereclip/sharing/CCVPublish;D)D

    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$200(Lcom/adobe/premiereclip/sharing/CCVPublish;)V

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$700(Lcom/adobe/premiereclip/sharing/CCVPublish;Z)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$1;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$700(Lcom/adobe/premiereclip/sharing/CCVPublish;Z)V

    goto :goto_0
.end method
