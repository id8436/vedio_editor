.class Lcom/adobe/premiereclip/MainActivity$18$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/MainActivity$18;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity$18;)V
    .locals 0

    .prologue
    .line 1915
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$18$3;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1918
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$3;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1919
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$3;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2600(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1920
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$18$3;->this$1:Lcom/adobe/premiereclip/MainActivity$18;

    iget-object v0, v0, Lcom/adobe/premiereclip/MainActivity$18;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$2500(Lcom/adobe/premiereclip/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1921
    return-void
.end method
