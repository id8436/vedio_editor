.class Lcom/adobe/premiereclip/sharing/CCVPublish$3;
.super Ljava/lang/Object;
.source "CCVPublish.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/CCVPublish;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$800(Lcom/adobe/premiereclip/sharing/CCVPublish;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$100(Lcom/adobe/premiereclip/sharing/CCVPublish;)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v4}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$900(Lcom/adobe/premiereclip/sharing/CCVPublish;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v4}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$600(Lcom/adobe/premiereclip/sharing/CCVPublish;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v2}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$1000(Lcom/adobe/premiereclip/sharing/CCVPublish;)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish$3;->this$0:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-static {v2}, Lcom/adobe/premiereclip/sharing/CCVPublish;->access$800(Lcom/adobe/premiereclip/sharing/CCVPublish;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onProgress(D)V

    .line 147
    :cond_0
    return-void
.end method
