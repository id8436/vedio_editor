.class Lcom/adobe/premiereclip/sharing/SharingOptions$1$1;
.super Ljava/lang/Object;
.source "SharingOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/sharing/SharingOptions$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingOptions$1;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1$1;->this$1:Lcom/adobe/premiereclip/sharing/SharingOptions$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingOptions$1$1;->this$1:Lcom/adobe/premiereclip/sharing/SharingOptions$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/SharingOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->mayBeExportPPro()V

    .line 203
    return-void
.end method
