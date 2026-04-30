.class Lcom/adobe/premiereclip/PremiereClipApplication$1;
.super Ljava/lang/Object;
.source "PremiereClipApplication.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/CloudUtil$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/PremiereClipApplication;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/PremiereClipApplication;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/adobe/premiereclip/PremiereClipApplication$1;->this$0:Lcom/adobe/premiereclip/PremiereClipApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudError()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onCloudInit()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication$1;->this$0:Lcom/adobe/premiereclip/PremiereClipApplication;

    invoke-static {v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$200(Lcom/adobe/premiereclip/PremiereClipApplication;)V

    .line 275
    return-void
.end method

.method public onNewCloud()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication$1;->this$0:Lcom/adobe/premiereclip/PremiereClipApplication;

    invoke-static {v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->access$200(Lcom/adobe/premiereclip/PremiereClipApplication;)V

    .line 280
    return-void
.end method
