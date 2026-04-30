.class Lcom/adobe/premiereclip/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$16;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isViewAvailable()Z
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$16;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$200(Lcom/adobe/premiereclip/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$16;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1837
    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$700(Lcom/adobe/premiereclip/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$16;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1838
    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    :cond_0
    const/4 v0, 0x0

    .line 1841
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
