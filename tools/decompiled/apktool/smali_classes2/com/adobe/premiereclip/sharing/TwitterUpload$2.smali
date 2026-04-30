.class Lcom/adobe/premiereclip/sharing/TwitterUpload$2;
.super Ljava/lang/Object;
.source "TwitterUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$200(Lcom/adobe/premiereclip/sharing/TwitterUpload;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$200(Lcom/adobe/premiereclip/sharing/TwitterUpload;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;->val$success:Z

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a04b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
