.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$14;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$14;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$14;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->mayBeExportPPro()V

    .line 1893
    return-void
.end method
