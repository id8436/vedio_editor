.class Lcom/adobe/premiereclip/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$5;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$5;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$300(Lcom/adobe/premiereclip/MainActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$5;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v1, 0x7f120519

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$5;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$700(Lcom/adobe/premiereclip/MainActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 366
    return-void
.end method
