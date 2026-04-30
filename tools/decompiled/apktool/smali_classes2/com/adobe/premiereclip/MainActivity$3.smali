.class Lcom/adobe/premiereclip/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v1, 0x7f120519

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 317
    :cond_0
    return-void
.end method

.method public onMenuExpanded()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapNewProject()V

    .line 308
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v1, 0x7f120519

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$3;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->openView()V

    .line 310
    return-void
.end method
